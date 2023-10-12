/*
 * cityDataBase.c
 *
 *  Created on: 12 oct. 2023
 *      Author: antotauv
 */

#include "cityDataBase.h"
#include "math.h"
#include <stdio.h>

CITY kiev = {"Kiev",50.4501,30.5234};
CITY cergy = {"Cergy",49.033,2.066};
CITY chicago = {"Chicago",41.88,-87.623};
CITY barcelone = {"Barcelone",41.385,2.173};

CITY * cityDataBase[4]={&kiev, &cergy, &chicago, &barcelone};


CITY * findNearestCity(float latitude, float longitude){
	float min = norme(cityDataBase[0],latitude,longitude);
	int minPos = 0;
	for (int i=1;i<sizeof(cityDataBase)/sizeof(CITY *);i++){
		float temp = norme(cityDataBase[i], latitude, longitude);
		if (temp<min){
			min = temp;
			minPos=i;
		}
	}
	return cityDataBase[minPos];
}
float norme(CITY * city, float latitude, float longitude){
	float deltalat=pow((city->latitude - latitude),2);
	float angle = ((city->latitude + latitude)*3.14/360.0);	// so many magic numbers !
	float deltalon = pow(((city->longitude - longitude)*cos(angle)),2);
	return deltalat + deltalon;
}

