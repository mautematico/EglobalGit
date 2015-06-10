package com.mx.eglobal

class Escuela {
	String nombre
	Integer codigo
	static hasMany = [alumnos:Alumno]

    static constraints = {
    }
}
