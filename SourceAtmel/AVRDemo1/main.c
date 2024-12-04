/*#######################################################################################
AVR Demo zum ansteuern der Xilinx XC9572 Grafikkarte 

Copyright (C) 2005 Ulrich Radig

#######################################################################################*/

#include "main.h"

//############################################################################
//Hauptprogramm
int main (void)
//############################################################################
{
	//Inizialisierung der Seriellen Schnittstelle
	UART_Init();

	printf("\n\nSystem Ready\n");
	
	Init_Grafikkarte();
	
	Clear(6);
	
	//Ausgabe der Zeit auf der Seriellen Schnittstelle in einer Endlosschleife
	while (1)
	{
	for(char b=0;b<64;b++)
	{
		Clear(b);
		for(char a = 118;a<159;a++)
		{
		SetPixel(a,118,0xff);
		SetPixel(a,158,0xff);
		SetPixel(118,a,0xff);
		SetPixel(158,a,0xff);	
		};	
		for (long h = 0;h<10000;h++){nop();};
	};
	};
return (1);
}

