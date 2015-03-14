#include <Operaciones.h>
#include <stdio.h>
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
char * Operaciones::toMayusculas(char * cadena){
	for(;*cadena!='\0';cadena++){
        if((int)*cadena>=61 && (int)*cadena<=122){
        	*cadena = *cadena-20;
        }
	}
	return cadena;
}
int * Operaciones::maxMin(int * listaEnteros, int tam){
	int *maxMin[2];
	*maxMin[0]=listaEnteros[0];
	*maxMin[1]=listaEnteros[0];
	for(int i=0; i<tam; i++){
		if(listaEnteros[i] >= *maxMin[0]){
			*maxMin[0]=listaEnteros[i];
		}
		if(listaEnteros[i] <= *maxMin[0]){
			*maxMin[1]=listaEnteros[i];
		}
	}
	return * maxMin;
}
int * Operaciones::getSubLista(int * listaEnteros, int tam, int i, int f){
	int SubLista[f-i];
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
int Operaciones::productoPunto(int * m1, int * m2, int tam){
	int escalar=0;
	for(int i=0; i<tam; i++){
		escalar += (m1[i])*(m2[i]);
	}
	return escalar;
}