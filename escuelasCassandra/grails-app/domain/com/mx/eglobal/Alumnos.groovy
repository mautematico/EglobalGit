package com.mx.eglobal

class Alumnos {
//	Integer id;
	String nombre;
	String apellido;
	String escuela;
	String grupo;
	Integer matricula


    static constraints = {
    }
    static mapping = {
    	    table "alumnos"
        		 version false
//	            id column: "id"
	            nombre column: "nombre"
	            apellido column: "apellido"
	            escuela column: "escuela"
	            grupo column: "grupo"
	            matricula column: "id"
        }
}
