import agenciaaut.Marcas;
import agenciaaut.Carros;
import agenciaaut.Vendedores;

class BootStrap {
	Marcas m1 = new Marcas (nombre:"AJSDI", empresa:"BLABLA", pais:"MEXICO").save(failOnError:true);
    Marcas m2 =	new Marcas (nombre:"KDICJ", empresa:"ZZZZZ", pais:"ARGENTINA").save(failOnError:true);
    Marcas m3 =	new Marcas (nombre:"PDOCN", empresa:"PPPPP", pais:"BRASIL").save(failOnError:true);
    Marcas m4 = new Marcas (nombre:"PLOCU", empresa:"LKJHA", pais:"USA").save(failOnError:true);
    Marcas m5 =	new Marcas (nombre:"CLAOS", empresa:"ASDDF", pais:"CANADA").save(failOnError:true);

    def init = { servletContext ->

    	/*if(!Marcas.count()){
    		new Marcas (nombre:"AJSDI", empresa:"BLABLA", pais:"MEXICO").save(failOnError:true);
    		new Marcas (nombre:"KDICJ", empresa:"ZZZZZ", pais:"ARGENTINA").save(failOnError:true);
    		new Marcas (nombre:"PDOCN", empresa:"PPPPP", pais:"BRASIL").save(failOnError:true);
    		new Marcas (nombre:"PLOCU", empresa:"LKJHA", pais:"USA").save(failOnError:true);
    		new Marcas (nombre:"CLAOS", empresa:"ASDDF", pais:"CANADA").save(failOnError:true);
    	}*/
    	if(!Carros.count()){
    		new Carros (modelo:"POWU123", color:"ROJO", precio:100192, placas:"PAD1039LAID", marca:m1).save(failOnError:true);
    		new Carros (modelo:"ÑLKM093", color:"PLATEADO", precio:50123, placas:"PAD0843PDOC", marca:m2).save(failOnError:true);
    		new Carros (modelo:"LIUXU09", color:"NEGRO", precio:90134, placas:"LDIC19384ACV", marca:m3).save(failOnError:true);
    		new Carros (modelo:"PADIC09", color:"BLANCO", precio:30913, placas:"POC983JDU283", marca:m4).save(failOnError:true);
    		new Carros (modelo:"MNBC092", color:"VERDE", precio:60912, placas:"DUNC981NDA", marca:m5).save(failOnError:true);
    	}
    	if(!Vendedores.count()){
    		new Vendedores (nombre:"Esteban", apePat:"Juarez", apeMat:"Martinez", edad:35, comision:6).save(failOnError:true);
    		new Vendedores (nombre:"Karen", apePat:"Lopez", apeMat:"Huerta", edad:32, comision:10).save(failOnError:true);
    		new Vendedores (nombre:"Mauro", apePat:"Hernandez", apeMat:"Salazar", edad:29, comision:12).save(failOnError:true);
    		new Vendedores (nombre:"Luis", apePat:"Morales", apeMat:"Salinas", edad:31, comision:2).save(failOnError:true);
    		new Vendedores (nombre:"Itzel", apePat:"Salas", apeMat:"Mendieta", edad:30, comision:9).save(failOnError:true);
    	}
    }
    def destroy = {
    }
}
