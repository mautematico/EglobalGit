package com.mx.eglobal

class Profesores {
	String id;
	String nombre;
	String apepat;
	String apemat;

    static constraints = {
    }
    static mapping = {
    	    table "profesores"
        		version false
	            id column:"id"
	            nombre column: "nombre"
	            apepat column: "apepat"
	            apemat column: "apemat"
	            
        }
}
