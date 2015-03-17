import com.mx.eglobal.security.SecRole;
import com.mx.eglobal.security.SecUser;
import com.mx.eglobal.security.SecUserSecRole;
import com.mx.eglobal.consola.*;

class BootStrap {

    def init = { servletContext ->
        
        def roleAdmin   = new SecRole(authority: "ROLE_ADMIN").save( failOnError:true );
        def roleAnalist = new SecRole(authority: "ROLE_ANALIST").save( failOnError:true );
        def roleBI      = new SecRole(authority: "ROLE_BI").save( failOnError:true );
        
        def userAdmin1  = new SecUser( username: "analista1", password: "analista1", enabled: true ).save(failOnError:true );
        
        SecUserSecRole.create userAdmin1, roleAdmin ;
        
        new Materias( nombre: "Calculo", minCreditos: 20, horario: new Date() ).save( failOnError:true );

    }
    def destroy = {
    }
}
