/*
 * rotinas SerialPort sao todas do Modbus RTU
 * a porta esta sendo setada para a UART 4 - pinos p(-pins 11 Rx ; 13 Tx ; 1 GND
 */

/* ----------------------- System includes ----------------------------------*/
#include "stdlib.h"
#include "string.h"
#include <termios.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

/* ----------------------- Platform includes --------------------------------*/
#include "port.h"

/* ----------------------- Modbus includes ----------------------------------*/
#include "mb.h"
#include "mbrtu.h"
#include "mbframe.h"

#include "mbcrc.h"
#include "mbport.h"

//ttyO1 = UART1, ttyO2 = UART2, ttyO3 = UART3, ttyO4 = UART4, ttyO5 = UART5
#define SYSFS_UARTx_DIR "/dev/ttyO4"

static int fd;

/* Callback functions required by the porting layer. They are called when
 * an external event has happend which includes a timeout or the reception
 * or transmission of a character.
 */
//pxMBFrameCBByteReceived = xMBRTUReceiveFSM;
//pxMBFrameCBTransmitterEmpty = xMBRTUTransmitFSM;
//pxMBPortCBTimerExpired = xMBRTUTimerT35Expired;    //Quando ocorrer o timer de 35caracter deve chamar esta rotina.
//BOOL( *pxMBFrameCBReceiveFSMCur ) ( void );
//BOOL( *pxMBFrameCBTransmitFSMCur ) ( void );


BOOL  xMBPortSerialInit( UCHAR ucPort, ULONG ulBaudRate,
                                   UCHAR ucDataBits, eMBParity eParity ){
   long BAUD;
   long lSIZE;

   fd = open(SYSFS_UARTx_DIR, O_RDWR | O_NOCTTY | O_NDELAY);

   if (fd == -1){
	  printf("xMBPortSerialInit : Failed to open port \n");
      return -1;
   }

   struct termios config;
   //get the current configuration of the serial interface
   if (tcgetattr(fd, &config) < 0){
	   printf("xMBPortSerialInit: Failed to tcgetattr \n");
       return -1;
   }

   switch (ulBaudRate) {
   case 9600:
	   BAUD = B9600;
	   break;
   case 19200:
	   BAUD = B19200;
	   break;
   case 38400:
	   BAUD = B38400;
	   break;
   default:
 	   BAUD = 0;
 	   break;
   }

   //databits estou considerando sempre 8
   if (ucDataBits == 8)
	   lSIZE = CS8;
   else
	   lSIZE = CS8;

   config.c_cflag = BAUD | lSIZE | CREAD | CLOCAL;

   //checa paridade
   if (eParity >0)
	   //se quiser checar a paridade tera de colocar PARENB e PARODD para impar.
	   config.c_iflag = IGNPAR | ICRNL; // ignore parity errors, CR -> newline
   else
	   config.c_iflag = IGNPAR | ICRNL; // ignore parity errors, CR -> newline

   tcflush(fd, TCIFLUSH); // discard file information not transmitted
   tcsetattr(fd, TCSANOW, &config); // changes occur immmediately
   printf("fim xMBPortSerialInit\n");

   return TRUE;
}

BOOL xMBPortTimersInit( USHORT usTimeOut50us ){
	return TRUE;
}

BOOL xMBPortSerialGetByte( CHAR * pucByte ){

	int count;
	if ((count = read(fd, (void*)pucByte, 1))<0){
	    perror("Failed to read from the input\n");
	    return -1;
	}
	else {
        /* We are currently receiving a frame. Reset the timer after
         * every character received. If more than the maximum possible
         * number of bytes in a modbus frame is received the frame is
         * ignored.
         */
		vMBPortTimersDisable();
	}

    return TRUE;
}

BOOL xMBPortSerialPutByte( CHAR ucByte ){

   int count;
   unsigned char transmit[1];

   if ((count = write(fd, &transmit,1))<0){
	  perror("Failed to write to the output\n");
	  return -1;
   }

   return TRUE;
}



void vMBPortSerialEnable( BOOL xRxEnable, BOOL xTxEnable ){

}

void vMBPortTimersEnable( void ){
 //este eh um timer de 3.5caracter para detectar fim de frame

}

void vMBPortTimersDisable( void ){

}
//xMBRTUTimerT35Expired
void vMBPortClose( void ){

}

