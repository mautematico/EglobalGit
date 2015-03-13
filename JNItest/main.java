import com.mx.eglobal.*;

class Main{
	public static void main(String [] args){
		JniCalculadoraWrapper calc = new JniCalculadoraWrapper(20,10);
		System.out.println("Suma: "+calc.SUMA()); 
		System.out.println("Resta: "+calc.RESTA()); 
		System.out.println("Multiplica: "+calc.MULTIPLICA()); 
	}
}