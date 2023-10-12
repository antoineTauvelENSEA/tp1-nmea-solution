/*
 * utils.c
 *
 *  Created on: Sep 25, 2023
 *      Author: antotauv
 */
#include "main.h"
#include "utils.h"
#include "tp1.h"
#include <string.h>

int fillBuffer(char * buffer){
	char received_char;
	int total=0;
	for (int i=0;i<BUFFER_SIZE;i++){
		buffer[i]=0;
	}
	do{
		HAL_UART_Receive(&huart1, (uint8_t *)&received_char, 1, -1);
	}while(received_char!='$');

	HAL_UART_Abort(&huart1);

	*buffer='$';
	buffer++;
//	printf("$\n");
	do{
		HAL_UART_Receive(&huart1, (uint8_t *)&received_char, 1, -1);
//		HAL_UART_Transmit(&huart2,(uint8_t *)&received_char, 1, 1);
		*buffer=received_char;
		buffer++;
		total++;
	}while(received_char!='\n');

	return total;
}

int extractChecksum(char * frame){
	while(*frame!='*'){
		frame++;
	}
	return ((frame[1]&0xf)<<4)+(frame[2]&0xf);
}

int calculateChecksum(char * frame){
	int checksum=0;
	frame++;
	while(*frame!='*'){
		checksum^=*frame;
		frame++;
	}
	return checksum;
}

float getLattitude(char * frame){
	float lattitude;
	for (int i=0;i<2;i++){
		while(*frame!=','){
			frame++;
		}
		frame++;
	}

	float signe = (frame[9]=='N')?+1:-1;
	float degre = 10*(frame[0]&0xf)+(frame[1]&0xf);
	float minute = 10*(frame[2]&0xf)+(frame[3]&0xf);
	float minute_decimal = 100.0*(frame[5]&0xf)+10.0*(frame[6]&0xf)+(frame[7]&0x0f);
	lattitude = signe*(degre+(((float) minute)+(float)(minute_decimal/1000.0))/60.0);
	return lattitude;
}

float getLongitude(char * frame){
	float longitude=0;
	for (int i=0;i<4;i++){
		while(*frame!=','){
			frame++;
		}
		frame++;
	}

	float signe = (frame[10]=='E')?+1:-1;
	float degre = 100*(frame[0]&0xf)+10*(frame[1]&0xf)+(frame[2]&0xf);
	float minute = 10*(frame[3]&0xf)+(frame[4]&0xf);
	float minute_decimal = 100.0*(frame[6]&0xf)+10.0*(frame[7]&0xf)+(frame[8]&0x0f);
	longitude = signe*(degre+(((float) minute)+(float)(minute_decimal/1000.0))/60.0);

	return longitude;
}

int isGPGGA (char * frame){
	const char * header="$GPGGA";
	for (int i=0;i<6;i++){
		if (header[i]!=frame[i]) return -1;
	}
	return 1;
}
