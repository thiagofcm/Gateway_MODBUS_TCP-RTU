freemodbus
==========

FreeModbus library rework.

This is a rework of freemodbus library for embedded systems (http://freemodbus.org/) originally written by Christian Walter <wolti@sil.at>.

Goals of this rework:
* Replace hungarian notation in code to respond Linux kernel coding guidelines
* Update AVR port (since it uses poisoned code)
* Create STM32 port
* Make library useable with Antares build environment (https://github.com/nekromant/antares)

What is currently done and need testing:
* Updated AVR port. Now it uses ISR instead of SIGNAL interrupt syntax.
* Added Antares integration. To work with it, just run bootstrap (if you have Antares globally installed)


=================================
Versao ModbusTCP V0.4
Author: Renato F.
 - Alterado a inicializacao para sempre ja inicializar. Ainda tem o menu.
 - Agora ele tem um debug que ele fica mostrando toda vez que chegar um comando novo no TCP. Pode ser desabilitado com o DEBUG_RFF = 0
 
