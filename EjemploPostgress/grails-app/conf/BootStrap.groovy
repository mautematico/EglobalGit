import ejemplopostgress.Alumnos;
import ejemplopostgress.Profesores;
import java.text.SimpleDateFormat;


class BootStrap {

	    Date date1 = new SimpleDateFormat("dd-MM-yyyy").parse("09-09-2001");
    	Date date2 = new SimpleDateFormat("dd-MM-yyyy").parse("09-09-2001");
    	Date date3 = new SimpleDateFormat("dd-MM-yyyy").parse("09-09-2001");
    	Date date4 = new SimpleDateFormat("dd-MM-yyyy").parse("05-05-1991");
    	Date date5 = new SimpleDateFormat("dd-MM-yyyy").parse("09-09-2001");

    def init = { servletContext ->

    	if(!Alumnos.count()){
    		new Alumnos (id:1,nombre:"Lorena",edad:13,fechaNac:date1).save(failOnError:true);
    		new Alumnos (id:2,nombre:"Jose",edad:34,fechaNac:date2).save(failOnError:true);
    		new Alumnos (id:3,nombre:"Hector",edad:12,fechaNac:date3).save(failOnError:true);
    		new Alumnos (id:4,nombre:"Karen",edad:22,fechaNac:date4).save(failOnError:true);
    		new Alumnos (id:5,nombre:"Berenice",edad:21,fechaNac:date5).save(failOnError:true);
    	}
    	if(!Profesores.count()){
    		new Profesores (id:1,nombre:"Miguel",edad:24).save(failOnError:true);
    		new Profesores (id:2,nombre:"Jose",edad:34).save(failOnError:true);
    		new Profesores (id:3,nombre:"Hector",edad:12).save(failOnError:true);
    		new Profesores (id:4,nombre:"Karen",edad:22).save(failOnError:true);
    		new Profesores (id:5,nombre:"Berenice",edad:21).save(failOnError:true);
    	}
    }
    def destroy = {
    }
}
