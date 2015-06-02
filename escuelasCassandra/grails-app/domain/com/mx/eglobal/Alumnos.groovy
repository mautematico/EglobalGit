package com.mx.eglobal

class Alumnos {
	int matricula;
	String nombre;
	String apellido;
	String escuela;
	String grupo;

    static constraints = {
    }
    static mapping = {
    	    table "alumnos"
        		 version false
	            matricula column: "matricula"
	            nombre column: "nombre"
	            apellido column: "apellido"
	            escuela column: "escuela"
	            grupo column: "grupo"
        }
}
