package com.mx.eglobal
import java.io.Serializable;
import com.mx.eglobal.*;

class Escuela implements Serializable {
	String codigopostal
	String direccion
	String nombre
	List <String> idalumnos = [];
	Integer tipo
	String id

	static hasMany = [idalumnos:String]
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
	            idalumnos column: 'alumnos'
        }
    Boolean agregarAlumno(Alumnos alumnoNuevo){
    	if(idalumnos==null)
    		idalumnos = new ArrayList();
    	idalumnos.push(alumnoNuevo.id);
    	this.save();
    }
}