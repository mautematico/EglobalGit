#include <Calculadora.h>
#include <iostream>

using namespace std;
int main(){
	Calculadora *calc = new Calculadora(20,10);
	cout<<"Suma: "<<calc->suma()<<endl;
	cout<<"Resta: "<<calc->resta()<<endl;
	cout<<"Multiplica: "<<calc->multiplica()<<endl;
}