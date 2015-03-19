package com.mx.eglobal;

public class JniOperacionesWrapper{
	private native void load();
	private native float media(int [] listaEnteros, int tam);
	private native int productoPunto(int [] m1, int [] m2, int tam);
	private native int [] maxMin(int [] listaEnteros, int tam, int [] maxMin);
	private native String toMayusculas(String cadena, String salida);
	private native int [] getSubLista(int [] listaEnteros, int [] Sublista, int tam, int i, int f);

	public JniOperacionesWrapper(){
		load();
	}
	public float MEDIA(int [] listaEnteros, int tam){
		return this.media(listaEnteros,tam);
	}
	public int PRODUCTOPUNTO(int [] m1, int [] m2, int tam){
		return this.productoPunto(m1, m2, tam);
	}
	public int [] MAXMIN(int [] listaEnteros, int tam, int [] maxMin){
		return this.maxMin(listaEnteros, tam, maxMin);
	}
	public String TOMAYUSCULAS(String cadena, String salida){
		return this.toMayusculas(cadena, salida);
	}
	public int [] GETSUBLISTA(int [] listaEnteros, int [] Sublista, int tam, int i, int f){
		return this.getSubLista(listaEnteros, Sublista, tam, i, f);
	}

	static{
		String userDir=System.getProperty("user.dir");
		System.load(userDir+"/lib/libJniOperaciones.so");
	}

}