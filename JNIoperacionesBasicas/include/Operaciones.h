#ifndef _OPERACIONES__H_
#define _OPERACIONES__H_
class Operaciones{
	private:
	public:
		Operaciones();
		float media(int * listaEnteros, int tam);
		int productoPunto(int * m1, int * m2, int tam);
		int * maxMin(int * listaEnteros, int tam, int * maxMin);
		char * toMayusculas(char * cadena, char * salida);	
		int * getSubLista(int * listaEnteros, int * SubLista, int tam, int i, int f);
};
#endif