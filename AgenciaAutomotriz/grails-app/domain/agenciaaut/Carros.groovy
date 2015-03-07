package agenciaaut
import agenciaaut.Marcas;

class Carros {
	String modelo;
	String color;
	int precio;
	String placas;
	Marcas marca;

    static constraints = {
    }
    String toString(){
    	return "$marca";
    }
}
