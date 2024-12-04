/*#######################################################################################
AVR Demo zum ansteuern der Xilinx XC9572 Grafikkarte 

Copyright (C) 2005 Ulrich Radig

#######################################################################################*/

#include "main.h"
#include "graka.h"

void Init_Grafikkarte (void)
	{
	Set_DataPort_Out();
	Set_ControlPort_Out();
	};

void SetPixel (char x,char y,char color)
	{
	CONTROLPORT =0;
	DATAPORT = y;
	CONTROLPORT =4;
	CONTROLPORT =1;
	DATAPORT = x;
	CONTROLPORT =5;
	CONTROLPORT =2;
	DATAPORT = color;
	CONTROLPORT =6;
	nop();
	nop();
	CONTROLPORT = 0;	
	};

void Clear (char color)
{
	for (char a = 0;a<128;a++)
		{
		for (char b = 0;b<255;b++)
			{
			SetPixel(a,b,color);
			SetPixel(~a,~b,color);
			SetPixel(b,a,color);
			SetPixel(~b,~a,color);
			};
		};
};
	
	



