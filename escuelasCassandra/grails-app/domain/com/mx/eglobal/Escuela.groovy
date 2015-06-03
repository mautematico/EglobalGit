package com.mx.eglobal
import java.io.Serializable;

class Escuela implements Serializable {
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
//	            clave column: "clave"
	            direccion column: "direccion"
	            codigopostal column: "codigopostal"
	            tipo column: "tipo"

			    id generator: 'assigned', name: "clave", type: 'String'
        }

}

