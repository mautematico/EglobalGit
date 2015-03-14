#ifndef _OPERACIONES__H_
#define _OPERACIONES__H_
class Operaciones{
	private:
	public:
		Operaciones();
		float media(int * listaEnteros, int tam);
		char * toMayusculas(char * cadena);
		int * maxMin(int * listaEnteros, int tam);
		int * getSubLista(int * listaEnteros, int tam, int i, int f);
		int productoPunto(int * m1, int * m2, int tam);	
};
#endif