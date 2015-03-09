import com.mx.eglobal.Autor
import com.mx.eglobal.Books
class BootStrap {

    def init = { servletContext ->
    	if(!Autor.count()){
    		new Autor(nombre:"Antonio", appat:"Castom", apmat:"Blancas").save(failOnError:true);
    		new Autor(nombre:"Bianca", appat:"Matias",  apmat:"Herrera").save(failOnError:true);
    		new Autor(nombre:"Carlos", appat:"Lopez",  apmat:"Aguilar").save(failOnError:true);
    		new Autor(nombre:"Daniel", appat:"Martinez", apmat:"Hernandez").save(failOnError:true);
    		new Autor(nombre:"Edgar", appat:"Pahua", apmat:"Ibarra").save(failOnError:true);
    		new Autor(nombre:"Carlos", appat:"Lopez",  apmat:"Aguilar").save(failOnError:true);
    		new Autor(nombre:"Daniel", appat:"Martinez", apmat:"Hernandez").save(failOnError:true);
    		new Autor(nombre:"Edgar", appat:"Pahua", apmat:"Ibarra").save(failOnError:true);
    		new Autor(nombre:"Carlos", appat:"Lopez",  apmat:"Aguilar").save(failOnError:true);
    		new Autor(nombre:"Daniel", appat:"Martinez", apmat:"Hernandez").save(failOnError:true);
    		new Autor(nombre:"Edgar", appat:"Pahua", apmat:"Ibarra").save(failOnError:true);
    		
    	}
    }
    def destroy = {
    }
}
