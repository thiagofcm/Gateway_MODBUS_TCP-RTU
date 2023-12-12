/*
 * maincfg.h
 *
 *  Created on: Feb 27, 2022
 *      Author: feelt
 */

#ifndef BOARDS_MAINCFG_H_
#define BOARDS_MAINCFG_H_

#define DEBUG_RFF 1
#define TESTE_SLAVE_MODBUS_RTU 1
#define TESTE_SLAVE_MODBUS_TCP 0

#if TESTE_SLAVE_MODBUS_RTU
#define FIRMWARE_VERSION "MBRTU_V0.1"
#endif

#if TESTE_SLAVE_MODBUS_TCP
#define FIRMWARE_VERSION "MBTCP_V0.4"
#endif

#endif /* BOARDS_MAINCFG_H_ */
