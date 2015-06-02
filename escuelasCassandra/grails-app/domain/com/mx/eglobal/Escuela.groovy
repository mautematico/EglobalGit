package com.mx.eglobal

class Escuela {
	String clave
	String codigopostal
	String direccion
	String nombre
	Integer tipo

    static constraints = {
    }



	static mapping = {
    	    table "escuelas"
        		 version false
	            nombre column: "nombre"
	            clave column: "clave"
	            direccion column: "direccion"
	            codigopostal column: "codigopostal"
	            tipo column: "tipo"
        }

}

