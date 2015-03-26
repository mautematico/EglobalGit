package com.mx.eglobal
import com.mx.eglobal.Alumnos;


class Escuelas {
    String nombre;
    String region;

    static hasMany = [alumnos: Alumnos];

    static constraints = {
        nombre nullable: false,blank:false;
        region nullable: false,blank:false;
        alumnos nullable: true,blank:true;
    }
    
    String toString(){
        return " $nombre, $region";
    }

}
