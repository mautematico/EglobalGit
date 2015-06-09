import com.mx.eglobal.*;

class BootStrap {

    def init = { servletContext ->

        def roleAdmin   = new Rol(authority: "ROLE_ADMIN").save( failOnError:true );
        def userAdmin1  = new Usuario( username: "admin", password: "admin", enabled: true ).save(failOnError:true );
        
        UsuarioRol.create userAdmin1, roleAdmin ;

    }
    def destroy = {
    }
}
