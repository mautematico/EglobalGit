import com.mx.eglobal.Escuelas;
import com.mx.eglobal.Alumnos;

class BootStrap {

    def init = { servletContext ->

        def a1 = new Alumnos( nombre:"Eder", apepat:"Villanueva", apemat:"Cortez", edad:25 ).save( failOnError:true );
        def a2 = new Alumnos( nombre:"Eder_1", apepat:"Villanueva", apemat:"Cortez", edad:26 ).save( failOnError:true );
        def a3 = new Alumnos( nombre:"Eder_2", apepat:"Villanueva", apemat:"Cortez", edad:27 ).save( failOnError:true );
        def a4 = new Alumnos( nombre:"Eder_3", apepat:"Villanueva", apemat:"Cortez", edad:28 ).save( failOnError:true );
        def a5 = new Alumnos( nombre:"Eder_4", apepat:"Villanueva", apemat:"Cortez", edad:29 ).save( failOnError:true );
        def a6 = new Alumnos( nombre:"Eder_5", apepat:"Villanueva", apemat:"Cortez", edad:30 ).save( failOnError:true );
        def a7 = new Alumnos( nombre:"Eder_6", apepat:"Villanueva", apemat:"Cortez", edad:31 ).save( failOnError:true );
        def a8 = new Alumnos( nombre:"Eder_7", apepat:"Villanueva", apemat:"Cortez", edad:32 ).save( failOnError:true );
        def a9 = new Alumnos( nombre:"Eder_8", apepat:"Villanueva", apemat:"Cortez", edad:33 ).save( failOnError:true );

        def e1 = new Escuelas( nombre: "Siervo de la Nacion", region: "Tokyo II", alumnos: [a1,a2,a3] ).save( failOnError:true );
        def e2 = new Escuelas( nombre: "Justo Sierra", region: "Tokyo III", alumnos: [a4,a5,a6] ).save( failOnError:true );
        def e3 = new Escuelas( nombre: "Manuel Acuna", region: "Tokyo IV", alumnos: [a7,a8,a9] ).save( failOnError:true );



    }
    def destroy = {
    }
}
