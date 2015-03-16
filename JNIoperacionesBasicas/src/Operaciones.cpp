#include <Operaciones.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
using namespace std;

Operaciones::Operaciones(){
}
float Operaciones::media(int * listaEnteros, int tam){
	float media=0;
	for(int i=0; i<tam; i++){
		media += listaEnteros[i];
	}
	media = media/tam;
	return media;
}
int Operaciones::productoPunto(int * m1, int * m2, int tam){
	int escalar=0;
	for(int i=0; i<tam; i++){
		escalar += (m1[i])*(m2[i]);
	}
	return escalar;
}
int * Operaciones::maxMin(int * listaEnteros, int tam, int * maxMin){
	maxMin[0]=listaEnteros[0];
	maxMin[1]=listaEnteros[0];
	for(int i=0; i<tam; i++){
		if(listaEnteros[i] >= maxMin[0]){
			maxMin[0]=listaEnteros[i];
		}
		if(listaEnteros[i] < maxMin[1]){
			maxMin[1]=listaEnteros[i];
		}
	}
	return maxMin;
}

char * Operaciones::toMayusculas(char * cadena, char * salida){
	char aux;
	for(int i=0; cadena[i]!='\0'; i++){
        if((int) cadena[i] >=97 && (int) cadena[i] <=122){
        	aux = (char) ((int) cadena[i]-32);
        }else{
        	aux = cadena[i];
        }
        salida[i] = aux;
	}
	return salida;
}
int * Operaciones::getSubLista(int * listaEnteros, int * SubLista, int tam, int i, int f){
	int k=0;
	if(i>=0 && f<tam){
		for(int j=i; j<f; j++){
			SubLista[k] = listaEnteros[j];
			k++;
		}
		return SubLista;
	}else{
		return NULL;
	}
}