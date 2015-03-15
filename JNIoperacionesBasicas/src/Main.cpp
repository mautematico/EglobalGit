#include <Operaciones.h>
#include <iostream>

using namespace std;
int main(){
	int M1[] = {2,2,3,4,6,1};
	int M2[] = {0,0,0,1,1,1};
	int *SubLista;
	int *maxMin[2];
	int *M;
	char * cadena="ErickEduardo";
	char * salida[12];
	char * S;

	Operaciones *ops = new Operaciones();

	int tam = sizeof(M1)/sizeof(M1[0]);
	cout<<"Longitud: "<<tam<<endl;

	cout<<"Media: "<<ops->media(M1, tam)<<endl;
	cout<<"Producto Punto: "<<ops->productoPunto(M1, M2, tam)<<endl;
	
	M = ops->maxMin((int *) M1, tam, (int *) maxMin);
	cout<<"Maximo: "<< M[0] <<endl;
	cout<<"Minimo: "<< M[1] <<endl;

	cout<< "Cadena: " << cadena <<endl;
	S = ops->toMayusculas((char *) cadena, (char *) salida);
    cout<< "Cadena en mayusculas: " << (char *) S <<endl;
}