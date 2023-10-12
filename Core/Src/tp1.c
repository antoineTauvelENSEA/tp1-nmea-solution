/*
 * tp1.c
 *
 *  Created on: Sep 25, 2023
 *      Author: antotauv
 */

#include "tp1.h"
#include "main.h"
#include "utils.h"
#include "ssd1315.h"
#include "fonts.h"
#include "cityDataBase.h"

void ssd1315_DrawChar(uint8_t X, uint8_t Y, char c, FontDef_t * font);
void ssd1315_DrawString(uint8_t X, uint8_t Y, char * s, FontDef_t * font);


void setup(){
	printf ("TP1 ENSEA by A.T. \r\n");
	ssd1315_Init();
	ssd1315_Clear(SSD1315_COLOR_BLACK);
	ssd1315_DrawString(0,0,"NMEA @ v2.0",&Font_11x18);
	ssd1315_Refresh();
}

char buffer[BUFFER_SIZE];

void loop(){
	int size = fillBuffer(buffer);
//	printf("Just received %d bytes \r\n",size);
	if (isGPGGA(buffer)==1 && (calculateChecksum(buffer)==extractChecksum(buffer)) ){
		float latitude = getLattitude(buffer);
		float longitude = getLongitude(buffer);
		printf("Trame OK %d b\tLattitude : %f \tLongitude : %f\r\n",size,latitude,longitude);

		CITY * found = findNearestCity(latitude,longitude);

		printf("City of %s\r\n",found->name);

		char stringBuf[16];
		ssd1315_Clear(SSD1315_COLOR_BLACK);
		ssd1315_DrawString(0,0,"NMEA @ v2.0",&Font_11x18);
		sprintf(stringBuf,"Lat = %3.2f",latitude);
		ssd1315_DrawString(0,19,stringBuf,&Font_7x10);
		sprintf(stringBuf,"Lon = %3.2f",longitude);
		ssd1315_DrawString(0,29,stringBuf,&Font_7x10);
		ssd1315_Refresh();
		sprintf(stringBuf,"Welcome in");
		ssd1315_DrawString(0,39,stringBuf,&Font_7x10);
		ssd1315_Refresh();
		sprintf(stringBuf,"%s",found->name);
		ssd1315_DrawString(0,49,stringBuf,&Font_7x10);
		ssd1315_Refresh();
	}
	else{
		printf("Trame NOK : %s\r\n",buffer);
	}

}
