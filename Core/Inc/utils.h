/*
 * utils.h
 *
 *  Created on: Sep 25, 2023
 *      Author: antotauv
 */

#ifndef INC_UTILS_H_
#define INC_UTILS_H_

int fillBuffer(char * buffer);
int extractChecksum(char * frame);
int calculateChecksum(char * frame);
int isGPGGA (char * frame);
float getLattitude(char * frame);
float getLongitude(char * frame);

extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;
extern I2C_HandleTypeDef hi2c1;


#endif /* INC_UTILS_H_ */
