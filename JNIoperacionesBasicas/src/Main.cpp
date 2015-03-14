#include <Operaciones.h>
#include <iostream>

using namespace std;
int main(){
	int M1[] = {1, 2, 3, 4};
	int M2[] = {1, 2, 3, 4}; 
	int *maxMin;
	int *SubLista;
	char * cadena = "ErickAguilar";

	Operaciones *ops = new Operaciones();
	cout<<"Media: "<<ops->media(M1, 4)<<endl;
	cout<<"Producto Punto: "<<ops->productoPunto(M1, M2, 4)<<endl;
	
	SubLista = ops->getSubLista((int *) M1,4,1,3);

	cadena = ops->toMayusculas(cadena);
		maxMin = ops->maxMin(M1,4);
	cout<<"Maximo: "<<maxMin<<endl;
	maxMin++;
	cout<<"Minimo: "<<maxMin<<endl;

	for(int i = 0; i < 2; i++) {
	    cout << SubLista << endl;
	    SubLista++;
	}
	for(;*cadena!='\0';cadena++){
		cout<<cadena<<endl;
	}


	
}
