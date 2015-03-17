package com.mx.eglobal.consola

class Materias {
    String nombre;
    int minCreditos;
    Date horario;

    static constraints = {
        nombre nullable: true, blank:true;
        minCreditos  blank:true;
        horario nullable: true, blank:true;
    }
}
