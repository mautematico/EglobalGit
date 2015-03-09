import com.mx.eglobal.Books;

class BootStrap {

    def init = { servletContext ->
    	if(!Books.count()){
    		new Books (titulo:"El agua del rio", isbn:"PAJDJA", costo:200, genero:"Drama", nopags:299).save(failOnError:true);
    		new Books (titulo:"Del plato a la boca", isbn:"JIADJA", costo:300, genero:"Comedia", nopags:123).save(failOnError:true);
    		new Books (titulo:"Cuando calienta el son", isbn:"HAADD", costo:892, genero:"Ciencia y ficcion", nopags:202).save(failOnError:true);
    		new Books (titulo:"Cuando amanece", isbn:"HADAD", costo:203, genero:"Tragicomedia", nopags:440).save(failOnError:true);
    		new Books (titulo:"El rey", isbn:"NADHADKJ", costo:123, genero:"Romantisimo", nopags:410).save(failOnError:true);
			new Books (titulo:"Camaron que se duerme", isbn:"ADJKA", costo:402, genero:"Comedia", nopags:130).save(failOnError:true);
    		new Books (titulo:"El corazon de la princesa", isbn:"HADJKAD", costo:203, genero:"Terror", nopags:102).save(failOnError:true);
    		new Books (titulo:"La sirena y el pulpo", isbn:"AHDHKA", costo:402, genero:"Drama", nopags:402).save(failOnError:true);
    		new Books (titulo:"La noche", isbn:"AKAJK", costo:402, genero:"Cienca", nopags:402).save(failOnError:true);
    		new Books (titulo:"La luna", isbn:"KADKAS", costo:301, genero:"Cienca", nopags:530).save(failOnError:true);
    	}
    }
    def destroy = {
    }
}
