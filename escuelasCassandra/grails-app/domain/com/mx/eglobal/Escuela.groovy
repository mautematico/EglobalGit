package com.mx.eglobal
import java.io.Serializable;

class Escuela implements Serializable {
	String codigopostal
	String direccion
	String nombre
	Integer tipo
	String id

	    static hasMany = [alumnos: Alumnos]

    static constraints = {
    }



	static mapping = {
    	    table "escuelas"
        		 version false
	            nombre column: "nombre"
	            direccion column: "direccion"
	            codigopostal column: "codigopostal"
	            tipo column: "tipo"
	            id column:"id"
        }

}

