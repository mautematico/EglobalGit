import com.mx.eglobal.*;

class Main{
	public static void main(String [] args){
		int[] M1 = {2,2,3,4,6,1};
		int[] M2 = {0,0,0,0,1,1};
		int[] maxMin = new int[2];
		String entrada="ErickEduardo";
		String salida="ErickEduardo";
		int tam = M1.length;
		JniOperacionesWrapper ops = new JniOperacionesWrapper();
		System.out.println("Media: "+ops.MEDIA(M1, tam));
		System.out.println("Producto punto: "+ops.PRODUCTOPUNTO(M1,M2,tam));
		int[] maxMinPtr = ops.MAXMIN(M1,tam,maxMin);
		System.out.println("Maximo: "+maxMinPtr[0]);
		System.out.println("Minimo: "+maxMinPtr[1]);
		String salidaPtr = ops.TOMAYUSCULAS(entrada,salida);
		System.out.println(entrada+" toMayusculas "+salidaPtr);
	    int _inicio = 2;
	    int _final = 5;
	    int[] SubLista = new int[_final-_inicio];
		int[] SublistaPtr = ops.GETSUBLISTA(M1,SubLista,tam,_inicio,_final);
		for(int i=0; i<SublistaPtr.length; i++){
			System.out.println(" "+SublistaPtr[i]);
		}
	}
}