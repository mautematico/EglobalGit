import com.mx.eglobal.*;

class BootStrap {

    def init = { servletContext ->

		def a1 = new Alumnos(nombre:"Alumno",apellido:"Ejemplo", escuela:"Duplicado", grupo:"1B").save(failOnError:true);
		def escuelas = Escuela.list();
		escuelas.each {
//				it.agregarAlumno(a1);
				print it
		}

    }
    def destroy = {
    }
}
