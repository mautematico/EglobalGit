package com.mx.eglobal

class Alumnos {
	String id;
	String nombre;
	String apellido;
	String escuela;
	String grupo;

    static constraints = {
    }
    static mapping = {
    	    table "alumnos"
        		 version false
	            id column: "id"
	            nombre column: "nombre"
	            apellido column: "apellido"
	            escuela column: "escuela"
	            grupo column: "grupo"
        }

    String toString(){
    	return "$apellido,$nombre";
    }
}
