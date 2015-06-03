package com.mx.eglobal

class Profesores {
	int empleado;
	String nombre;
	String apepat;
	String apemat;


    static constraints = {
    }
    static mapping = {
    	    table "profesores"
        		version false
	            empleado column:"empleado"
	            nombre column: "nombre"
	            apepat column: "apepat"
	            apemat column: "apemat"
        }
}
