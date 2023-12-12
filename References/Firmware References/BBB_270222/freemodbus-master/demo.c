/*
 * FreeModbus Libary: ARM7 Demo Application
 * Copyright (C) 2006 Christian Walter <wolti@sil.at>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * File: $Id: demo.c,v 1.1 2007/09/12 10:15:56 wolti Exp $
 *
 * TESTE_SLAVE_MODBUS_RTU = 1
 *
 */

/* ----------------------- System includes ----------------------------------*/
#include "assert.h"
#include "stdio.h"
#include "termios.h"
/* ----------------------- Platform includes --------------------------------*/
//#include "support/AT91SAM7X256.h"
//#include "support/lib_AT91SAM7X256.h"

//#include "FreeRTOS.h"
//#include "task.h"
//#include "queue.h"
#include <pthread.h>

/* ----------------------- Modbus includes ----------------------------------*/
#include "mb.h"

#if TESTE_SLAVE_MODBUS_RTU

/* ----------------------- Defines ------------------------------------------*/
#define REG_HOLDING_START           0x1000
#define REG_HOLDING_NREGS           130
#define REG_INPUT_START             0x1000
#define REG_INPUT_NREGS             4

/* ----------------------- Static variables ---------------------------------*/
static USHORT   usRegHoldingStart = REG_HOLDING_START;
static USHORT   usRegHoldingBuf[REG_HOLDING_NREGS];
static USHORT   usRegInputStart = REG_INPUT_START;
static USHORT   usRegInputBuf[REG_INPUT_NREGS];
static pthread_mutex_t xLock = PTHREAD_MUTEX_INITIALIZER;
static enum ThreadState
{
    STOPPED,
    RUNNING,
    SHUTDOWN
} ePollThreadState;

/* ----------------------- Static functions ---------------------------------*/
//static void     vModbusTask( void *pvParameters );
static void     vSetupHardware( void );
static BOOL     bCreatePollingThread( void );
static enum ThreadState eGetPollingThreadState( void );
static void     eSetPollingThreadState( enum ThreadState eNewState );
static void* pvPollingThread( void *pvParameter );

/* ----------------------- Start implementation -----------------------------*/

static int initrff(void){
     usRegHoldingBuf[0] = 110;
     usRegHoldingBuf[1] = 220;
     usRegHoldingBuf[2] = 330;
     usRegHoldingBuf[3] = 440;
     return 0;
}

int
main( int argc, char *argv[] )
{
    int             iExitCode=0;
    long  count=0;
    unsigned char ucShutdown=0;

    //inicializa o sistema
    vSetupHardware();
    initrff();

    eSetPollingThreadState( STOPPED );

#if DEBUG_RFF == 1
    printf ("\n FIRMWARE VERSION= %s STARTED!!!! \n\n", FIRMWARE_VERSION);
#endif

    if( bCreatePollingThread() != TRUE )
    {
        printf(  "Can't start protocol stack! Already running?\r\n"  );
        iExitCode = 1;
    }

    count = 0;
    while(ucShutdown == FALSE){

    	if (count>500000)
    		ucShutdown = TRUE;
    	else
    		count++;
    }

    printf ("Fim %ld", count);

    return iExitCode;

}

    BOOL
bCreatePollingThread( void )
{
    BOOL            bResult;
    pthread_t       xThread;
    if( eGetPollingThreadState() == STOPPED )
    {
        if( pthread_create( &xThread, NULL, pvPollingThread, NULL ) != 0 )
        {
        	printf(  "Can't create the polling thread.\r\n"  );
            bResult = FALSE;
        }
        else
        {
        	printf(  "Create the polling thread.\r\n"  );
            bResult = TRUE;
        }
    }
    else
    {
    	printf(  "eGetPollingThreadState = stopped\r\n"  );
        bResult = FALSE;
    }

    return bResult;
}

void updatebuffer()
{

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

void* pvPollingThread( void *pvParameter )
{
   int             i;
   UCHAR ucSlaveaddress = 0x0A;
   UCHAR ucPort = 4;

   /* Select either ASCII or RTU Mode. */
	( void )eMBInit( MB_RTU, ucSlaveaddress, ucPort, 9600, MB_PAR_NONE );

	/* Initialize the holding register values before starting the
	 * Modbus stack
	 */
	for( i = 0; i < REG_HOLDING_NREGS; i++ )
	{
		usRegHoldingBuf[i] = ( unsigned short )i;
	}
	/* Initialize the input register values before starting the
	 * Modbus stack
	 */
	for( i = 0; i < REG_INPUT_NREGS; i++ )
	{
		usRegInputBuf[i] = ( unsigned short )i;
	}

	eSetPollingThreadState( RUNNING );


    /* Enable the Modbus Protocol Stack. */
	if( eMBEnable(  ) == MB_ENOERR )
	{
		do
		{
			if( eMBPoll(  ) != MB_ENOERR )
				break;

			updatebuffer();
		}
		while( eGetPollingThreadState(  ) != SHUTDOWN );
	}

	( void )eMBDisable(  );

	eSetPollingThreadState( STOPPED );
	return 0;
}

#if 0
static void
vModbusTask( void *pvParameters )
{
    int             i;

    /* Select either ASCII or RTU Mode. */
    ( void )eMBInit( MB_RTU, 0x0A, 0, 38400, MB_PAR_EVEN );

    /* Initialize the holding register values before starting the
     * Modbus stack
     */
    for( i = 0; i < REG_HOLDING_NREGS; i++ )
    {
        usRegHoldingBuf[i] = ( unsigned short )i;
    }
    /* Initialize the input register values before starting the
     * Modbus stack
     */
    for( i = 0; i < REG_INPUT_NREGS; i++ )
    {
        usRegInputBuf[i] = ( unsigned short )i;
    }

    /* Enable the Modbus Protocol Stack. */
    ( void )eMBEnable(  );
    for( ;; )
    {
        /* Call the main polling loop of the Modbus protocol stack. */
        ( void )eMBPoll(  );
    }
}
#endif

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
                *pucRegBuffer++ = ( unsigned char )( usRegHoldingBuf[iRegIndex] >> 8 );
                *pucRegBuffer++ = ( unsigned char )( usRegHoldingBuf[iRegIndex] & 0xFF );
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


void
vSetupHardware( void )
{
   // vMBPInit(  );

    /* Enable the peripheral clock. */
    //AT91C_BASE_PMC->PMC_PCER = 1 << AT91C_ID_PIOA;
    //AT91C_BASE_PMC->PMC_PCER = 1 << AT91C_ID_PIOB;
}
#endif
