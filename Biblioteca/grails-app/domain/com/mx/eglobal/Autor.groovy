package com.mx.eglobal

class Autor {
	String nombre;
	String appat;
	String apmat;
	String cp;
	int edad;


    static constraints = {
        edad nullable: true, blank: true
    }
}
