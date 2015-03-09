package com.mx.eglobal

class Autor {
	String nombre;
	String appat;
	String apmat;
    int edad;


    static constraints = {
        edad nullable: true, blank: true
    }
}
