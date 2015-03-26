package com.mx.eglobal

class Alumnos {
    String nombre;
    String apepat;
    String apemat;
    int edad;

    static constraints = {
        nombre nullable:false,blank:false;
        apepat nullable:false,blank:false;
        apemat nullable:false,blank:false;
    }

    String toString(){
        return "$nombre, $apepat, $apemat";
    }
}
