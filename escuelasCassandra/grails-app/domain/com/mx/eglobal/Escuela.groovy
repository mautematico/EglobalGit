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
	List <String> idprofesores = [];

	static hasMany = [idalumnos:String, idprofesores:String]

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
	            idprofesores column: 'profesores'
        }
    Boolean agregarAlumno(Alumnos alumnoNuevo){
    	if(idalumnos==null)
    		idalumnos = new ArrayList();
    	idalumnos.push(alumnoNuevo.id);
    	this.save();
    }
    Boolean agregarProfesor(Profesores profesorNuevo){
    	if(idprofesores==null)
    		idprofesores = new ArrayList();
    	idprofesores.push(profesorNuevo.id);
    	this.save();
    }
}