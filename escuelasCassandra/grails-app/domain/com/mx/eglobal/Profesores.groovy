package com.mx.eglobal

class Profesores {
	Integer id;
	String nombre;
	String apepat;
	String apemat;
	Integer empleado

    static constraints = {
    }
    static mapping = {
    	    table "profesores"
        		version false
	            id column:"id"
	            nombre column: "nombre"
	            apepat column: "apepat"
	            apemat column: "apemat"
	            empleado column: "id"
        }
}
