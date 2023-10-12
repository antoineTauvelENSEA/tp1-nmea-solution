/*
 * cityDataBase.h
 *
 *  Created on: 12 oct. 2023
 *      Author: antotauv
 */

#ifndef INC_CITYDATABASE_H_
#define INC_CITYDATABASE_H_

typedef struct city{
	char * name;
	float latitude;
	float longitude;
}CITY;

CITY * findNearestCity(float latitude, float longitude);
float norme(CITY * city, float latitude, float longitude);

#endif /* INC_CITYDATABASE_H_ */
