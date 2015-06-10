import com.mx.eglobal.Alumno

class BootStrap {

    def init = { servletContext ->
    	(1..20).each {
    		new Alumno(nombre:"Ola", edad:it).save()
    	}

    }
    def destroy = {
    }
}
