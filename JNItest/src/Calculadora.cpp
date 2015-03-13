#include <Calculadora.h>
Calculadora::Calculadora(){
	valA=0;
	valB=0;
}
Calculadora::Calculadora(int a, int b){
	valA=a;
	valB=b;
}
void Calculadora::setValA(int a){
	valA=a;
}
void Calculadora::setValB(int b){
	valB=b;
}
int Calculadora::suma(){
	return valA+valB;
}
int Calculadora::resta(){
	return valA-valB;
}
int Calculadora::multiplica(){
	return valA*valB;
}