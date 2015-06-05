import com.mx.eglobal.*;

class BootStrap {

    def init = { servletContext ->

		def a1 = new Alumnos(nombre:"AAAAAAAA",apellido:"BBB", escuela:"Duplicado", grupo:"3B").save(failOnError:true);
		def escuelas = Escuela.list();
		escuelas.each {
//				it.agregarAlumno(a1);
				print it
		}

    }
    def destroy = {
    }
}
