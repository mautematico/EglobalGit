package com.mx.eglobal;
public class JniCalculadoraWrapper{
	private native void load(int a, int b);
	private native int suma();
	private native int resta();
	private native int multiplica();
	public JniCalculadoraWrapper(int valA, int valB){
		load(valA,valB);
	}
	public int SUMA(){return this.suma();}
	public int RESTA(){return this.resta();}
	public int MULTIPLICA(){return this.multiplica();}
	static{
		String userDir=System.getProperty("user.dir");
		System.load(userDir+"/lib/libCalculadora.so");
	}
}