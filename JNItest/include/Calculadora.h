#ifndef __CALCULADORA_H__
#define __CALCULADORA_H__
	class Calculadora{
	private:
		int valA;
		int valB;
	public:
		Calculadora();
		Calculadora(int a, int b);
		void setValA(int a);
		void setValB(int b);
		int suma();
		int resta();
		int multiplica();
	};
#endif