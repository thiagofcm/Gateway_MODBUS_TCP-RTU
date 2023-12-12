/*
 * FreeModbus Libary: Win32 Demo Application
 * Copyright (C) 2006 Christian Walter <wolti@sil.at>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * File: $Id: demo.c,v 1.1 2007/09/12 10:15:56 wolti Exp $
 */

 /**********************************************************
 *	Linux TCP support.
 *	Based on Walter's project. 
 *	Modified by Steven Guo <gotop167@163.com>
 ***********************************************************/

/* ----------------------- Standard C Libs includes --------------------------*/
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <pthread.h>
#include <signal.h>

/* ----------------------- Modbus includes ----------------------------------*/
#include "mb.h"
#include "mbport.h"

/* ----------------------- Defines ------------------------------------------*/
#define PROG            "freemodbus"

#define REG_INPUT_START 1000
#define REG_INPUT_NREGS 4
#define REG_HOLDING_START 2000
#define REG_HOLDING_NREGS 130
#define REG_BEAGLEBONE_DIO 2

/* ----------------------- Static variables ---------------------------------*/
static USHORT   usRegInputStart = REG_INPUT_START;
static USHORT   usRegInputBuf[REG_INPUT_NREGS];
static USHORT   usRegHoldingStart = REG_HOLDING_START;
static USHORT   usRegHoldingBuf[REG_HOLDING_NREGS]; // Registros
static pthread_mutex_t xLock = PTHREAD_MUTEX_INITIALIZER;
static enum ThreadState
{
    STOPPED,
    RUNNING,
    SHUTDOWN
} ePollThreadState;

typedef struct
    {
        FILE *export_file;        
        FILE *IO_direction;
        FILE *IO_value;
    }FileBeagleBone;

    static FileBeagleBone fileBB[REG_BEAGLEBONE_DIO];

/* ----------------------- Static functions ---------------------------------*/
static BOOL     bCreatePollingThread( void );
static enum ThreadState eGetPollingThreadState( void );
static void     eSetPollingThreadState( enum ThreadState eNewState );
static void* pvPollingThread( void *pvParameter );
static BOOL bInitializeGPIO();
static BOOL bWriteGPIO(USHORT value1, USHORT value2);

/* ----------------------- Start implementation -----------------------------*/
int
main( int argc, char *argv[] )
{
    int             iExitCode;
    CHAR           cCh;
    BOOL            bDoExit;

    if( eMBTCPInit( MB_TCP_PORT_USE_DEFAULT ) != MB_ENOERR )
    {
        fprintf( stderr, "%s: can't initialize modbus stack!\r\n", PROG );
        iExitCode = EXIT_FAILURE;
    }
    else
    {
	bInitializeGPIO();
        eSetPollingThreadState( STOPPED );
        /* CLI interface. */
        printf(  "Type 'q' for quit or 'h' for help!\r\n"  );
        bDoExit = FALSE;
        do
        {
            printf(  "> "  );
            cCh = getchar(  );
            switch ( cCh )
            {
            case  'q' :
                bDoExit = TRUE;
                break;
            case  'd' :
                eSetPollingThreadState( SHUTDOWN );
                break;
            case  'e' :
                if( bCreatePollingThread(  ) != TRUE )
                {
                    printf(  "Can't start protocol stack! Already running?\r\n"  );
                }
                break;
            case  's' :
                switch ( eGetPollingThreadState(  ) )
                {
                case RUNNING:
                    printf(  "Protocol stack is running.\r\n"  );
                    break;
                case STOPPED:
                    printf(  "Protocol stack is stopped.\r\n"  );
                    break;
                case SHUTDOWN:
                    printf(  "Protocol stack is shuting down.\r\n"  );
                    break;
                }
                break;
            case  'h':
                printf(  "FreeModbus demo application help:\r\n" );
                printf(  "  'd' ... disable protocol stack.\r\n"  );
                printf(  "  'e' ... enabled the protocol stack\r\n"  );
                printf(  "  's' ... show current status\r\n"  );
                printf(  "  'q' ... quit applicationr\r\n"  );
                printf(  "  'h' ... this information\r\n"  );
                printf(  "\r\n"  );
                printf(  "Copyright 2007 Steven Guo <gotop167@163.com>\r\n"  );
                break;
            default:
                if( cCh != '\n' )
                {
                    printf(  "illegal command '%c'!\r\n" , cCh );
                }
                break;
            }

            /* eat up everything untill return character. */
            while( cCh != '\n' )
            {
                cCh = getchar(  );
            }
        }
        while( !bDoExit );

        /* Release hardware resources. */
        ( void )eMBClose(  );
        iExitCode = EXIT_SUCCESS;
    }
    return iExitCode;
}

BOOL
bCreatePollingThread( void )
{
    BOOL            bResult;
	pthread_t       xThread;
    if( eGetPollingThreadState(  ) == STOPPED )
    {
        if( pthread_create( &xThread, NULL, pvPollingThread, NULL ) != 0 )
        {
            /* Can't create the polling thread. */
            bResult = FALSE;
        }
        else
        {
            bResult = TRUE;
        }
    }
    else
    {
        bResult = FALSE;
    }

    return bResult;
}

void* pvPollingThread( void *pvParameter )
{
    eSetPollingThreadState( RUNNING );

    if( eMBEnable(  ) == MB_ENOERR )
    {
        do
        {
            if( eMBPoll(  ) != MB_ENOERR )
                break;
        }
        while( eGetPollingThreadState(  ) != SHUTDOWN );
    }

    ( void )eMBDisable(  );

    eSetPollingThreadState( STOPPED );

    return 0;
}

enum ThreadState
eGetPollingThreadState(  )
{
    enum ThreadState eCurState;

    ( void )pthread_mutex_lock( &xLock );
    eCurState = ePollThreadState;
    ( void )pthread_mutex_unlock( &xLock );

    return eCurState;
}

void
eSetPollingThreadState( enum ThreadState eNewState )
{
    ( void )pthread_mutex_lock( &xLock );
    ePollThreadState = eNewState;
    ( void )pthread_mutex_unlock( &xLock );
}

eMBErrorCode
eMBRegInputCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs )
{
    eMBErrorCode    eStatus = MB_ENOERR;
    int             iRegIndex;

    if( ( usAddress >= REG_INPUT_START )
        && ( usAddress + usNRegs <= REG_INPUT_START + REG_INPUT_NREGS ) )
    {
        iRegIndex = ( int )( usAddress - usRegInputStart );
        while( usNRegs > 0 )
        {
            *pucRegBuffer++ = ( unsigned char )( usRegInputBuf[iRegIndex] >> 8 );
            *pucRegBuffer++ = ( unsigned char )( usRegInputBuf[iRegIndex] & 0xFF );
            iRegIndex++;
            usNRegs--;
        }
    }
    else
    {
        eStatus = MB_ENOREG;
    }

    return eStatus;
}

eMBErrorCode
eMBRegHoldingCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs, eMBRegisterMode eMode )
{
    eMBErrorCode    eStatus = MB_ENOERR;
    int             iRegIndex;

    if( ( usAddress >= REG_HOLDING_START ) &&
        ( usAddress + usNRegs <= REG_HOLDING_START + REG_HOLDING_NREGS ) )
    {
        iRegIndex = ( int )( usAddress - usRegHoldingStart );
        switch ( eMode )
        {
            /* Pass current register values to the protocol stack. */
        case MB_REG_READ:
            while( usNRegs > 0 )
            {
                *pucRegBuffer++ = ( UCHAR ) ( usRegHoldingBuf[iRegIndex] >> 8 );
                *pucRegBuffer++ = ( UCHAR ) ( usRegHoldingBuf[iRegIndex] & 0xFF );
                iRegIndex++;
                usNRegs--;
            }
            break;

            /* Update current register values with new values from the
             * protocol stack. */
        case MB_REG_WRITE:
            while( usNRegs > 0 )
            {
                usRegHoldingBuf[iRegIndex] = *pucRegBuffer++ << 8;
                usRegHoldingBuf[iRegIndex] |= *pucRegBuffer++;
                iRegIndex++;
                usNRegs--;
            }
	    bWriteGPIO(usRegHoldingBuf[6],usRegHoldingBuf[7]);
        }
    }
    else
    {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}


eMBErrorCode
eMBRegCoilsCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNCoils, eMBRegisterMode eMode )
{
    return MB_ENOREG;
}

eMBErrorCode
eMBRegDiscreteCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNDiscrete )
{
    return MB_ENOREG;
}

static BOOL bInitializeGPIO()
{
    BOOL    bResult;
    char *GPIO_File_Direction   = "/sys/class/gpio/gpio50/direction";
    char *GPIO_File_Description = "/sys/class/gpio/gpio50/value";

    char *GPIO2_File_Direction   = "/sys/class/gpio/gpio51/direction";
    char *GPIO2_File_Description = "/sys/class/gpio/gpio51/value";


    printf("%s\n",GPIO_File_Description);


    fileBB[0].export_file = fopen ("/sys/class/gpio/export", "w");

    if (fileBB[0].export_file)
    {
        fwrite("50", 1, 2, fileBB[0].export_file);
        fclose(fileBB[0].export_file);
        fileBB[0].IO_direction = fopen (GPIO_File_Direction, "w");

        if (fileBB[0].IO_direction)
        {
            fwrite ("out", 1, 3, fileBB[0].IO_direction);   //set the value to 1
            fclose (fileBB[0].IO_direction);        
            bResult = TRUE;
        }
        else
        {
            printf("Fail to write in GPIO 30!\n");
            bResult = FALSE;
        }                

        fileBB[0].IO_value = fopen (GPIO_File_Description, "w");
        if (fileBB[0].IO_value)
        {
            fwrite ("1", 1, 1, fileBB[0].IO_value);   //set the value to 1
            fclose (fileBB[0].IO_value);        
            bResult = TRUE;
        }
        else
        {
            printf("Fail to write in GPIO 50!\n");
            bResult = FALSE;
        }        
    }
    else
    {
        printf("Fail to open GPIO 50!\n");
        bResult = FALSE;
    }

    fileBB[1].export_file = fopen ("/sys/class/gpio/export", "w");

    if (fileBB[1].export_file)
    {
        fwrite("51", 1, 2, fileBB[1].export_file);
        fclose(fileBB[1].export_file);
        fileBB[1].IO_direction = fopen (GPIO2_File_Direction, "w");

        if (fileBB[1].IO_direction)
        {
            fwrite ("out", 1, 3, fileBB[1].IO_direction);   //set the value to 1
            fclose (fileBB[1].IO_direction);        
            bResult = TRUE;
        }
        else
        {
            printf("Fail to write in GPIO 30!\n");
            bResult = FALSE;
        }                

        fileBB[1].IO_value = fopen (GPIO2_File_Description, "w");
        if (fileBB[1].IO_value)
        {
            fwrite ("1", 1, 1, fileBB[1].IO_value);   //set the value to 1
            fclose (fileBB[0].IO_value);        
            bResult = TRUE;
        }
        else
        {
            printf("Fail to write in GPIO 51!\n");
            bResult = FALSE;
        }        
    }
    else
    {
        printf("Fail to open GPIO 50!\n");
        bResult = FALSE;
    }


    /*export_file = fopen ("/sys/class/gpio/export", "w");
    fwrite (str, 1, sizeof(str), export_file);
    fclose (export_file);    */

    return bResult;
}


static BOOL bWriteGPIO(USHORT value1, USHORT value2)
{
    BOOL bResult = FALSE;
    char *GPIO_File_Description = "/sys/class/gpio/gpio50/value";
    char *GPIO2_File_Description = "/sys/class/gpio/gpio51/value";
    
    fileBB[0].IO_value = fopen (GPIO_File_Description, "w");
    printf("%hu\n", value2);
  
    if (fileBB[0].IO_value)
    {
        if(value1 == 0)
            fwrite ("0", 1, 1, fileBB[0].IO_value);   //set the value to 0
        if(value1 == 1)
            fwrite ("1", 1, 1, fileBB[0].IO_value);   //set the value to 0
        fclose (fileBB[0].IO_value);        
        bResult = TRUE;
    }
    else
    {
        printf("Fail to write in GPIO 30!\n");
        bResult = FALSE;
    }        

    fileBB[1].IO_value = fopen (GPIO2_File_Description, "w");
    
    if (fileBB[1].IO_value)
    {
        if(value2 == 0)
            fwrite ("0", 1, 1, fileBB[1].IO_value);   //set the value to 0
        if(value2 == 1)
            fwrite ("1", 1, 1, fileBB[1].IO_value);   //set the value to 0
        fclose (fileBB[1].IO_value);        
        bResult = TRUE;
    }
    else
    {
        printf("Fail to write in GPIO 30!\n");
        bResult = FALSE;
    }        



    return bResult;
}
