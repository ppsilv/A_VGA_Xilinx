/*#######################################################################################
AVR Demo zum ansteuern der Xilinx XC9572 Grafikkarte

Copyright (C) 2005 Ulrich Radig

Bei Fragen und Verbesserungen wendet euch per EMail an

mail@ulrichradig.de

oder im Forum meiner Web Page : www.ulrichradig.de


Dieses Programm ist freie Software. Sie können es unter den Bedingungen der 
GNU General Public License, wie von der Free Software Foundation veröffentlicht, 
weitergeben und/oder modifizieren, entweder gemäß Version 2 der Lizenz oder 
(nach Ihrer Option) jeder späteren Version. 

Die Veröffentlichung dieses Programms erfolgt in der Hoffnung, 
daß es Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE, 
sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT 
FÜR EINEN BESTIMMTEN ZWECK. Details finden Sie in der GNU General Public License. 

Sie sollten eine Kopie der GNU General Public License zusammen mit diesem 
Programm erhalten haben. 
Falls nicht, schreiben Sie an die Free Software Foundation, 
Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA. 
#######################################################################################*/


#ifndef _GRAKA_H
 #define _GRAKA_H

extern void Init_Grafikkarte (void);
extern void SetPixel(char,char,char);
extern void Clear (char color);

#define DATAPORT PORTC
#define DATAPORT_IO DDRC

#define CONTROLPORT PORTB
#define CONTROLPORT_IO DDRB
#define A0 0
#define A1 1
#define WR 2

#define Set_DataPort_Out()	DATAPORT_IO=0xff;
#define Set_ControlPort_Out()	CONTROLPORT_IO=0x07;

#define nop()  __asm__ __volatile__ ("nop" ::)

#endif //_GRAKA_H




