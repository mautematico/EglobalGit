package agenciaaut



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MarcasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Marcas.list(params), model:[marcasInstanceCount: Marcas.count()]
    }

    def show(Marcas marcasInstance) {
        respond marcasInstance
    }

    def create() {
        respond new Marcas(params)
    }

    @Transactional
    def save(Marcas marcasInstance) {
        if (marcasInstance == null) {
            notFound()
            return
        }

        if (marcasInstance.hasErrors()) {
            respond marcasInstance.errors, view:'create'
            return
        }

        marcasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'marcas.label', default: 'Marcas'), marcasInstance.id])
                redirect marcasInstance
            }
            '*' { respond marcasInstance, [status: CREATED] }
        }
    }

    def edit(Marcas marcasInstance) {
        respond marcasInstance
    }

    @Transactional
    def update(Marcas marcasInstance) {
        if (marcasInstance == null) {
            notFound()
            return
        }

        if (marcasInstance.hasErrors()) {
            respond marcasInstance.errors, view:'edit'
            return
        }

        marcasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Marcas.label', default: 'Marcas'), marcasInstance.id])
                redirect marcasInstance
            }
            '*'{ respond marcasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Marcas marcasInstance) {

        if (marcasInstance == null) {
            notFound()
            return
        }

        marcasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Marcas.label', default: 'Marcas'), marcasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'marcas.label', default: 'Marcas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
