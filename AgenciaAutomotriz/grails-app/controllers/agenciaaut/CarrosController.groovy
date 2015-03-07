package agenciaaut



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CarrosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Carros.list(params), model:[carrosInstanceCount: Carros.count()]
    }

    def show(Carros carrosInstance) {
        respond carrosInstance
    }

    def create() {
        respond new Carros(params)
    }

    @Transactional
    def save(Carros carrosInstance) {
        if (carrosInstance == null) {
            notFound()
            return
        }

        if (carrosInstance.hasErrors()) {
            respond carrosInstance.errors, view:'create'
            return
        }

        carrosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'carros.label', default: 'Carros'), carrosInstance.id])
                redirect carrosInstance
            }
            '*' { respond carrosInstance, [status: CREATED] }
        }
    }

    def edit(Carros carrosInstance) {
        respond carrosInstance
    }

    @Transactional
    def update(Carros carrosInstance) {
        if (carrosInstance == null) {
            notFound()
            return
        }

        if (carrosInstance.hasErrors()) {
            respond carrosInstance.errors, view:'edit'
            return
        }

        carrosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Carros.label', default: 'Carros'), carrosInstance.id])
                redirect carrosInstance
            }
            '*'{ respond carrosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Carros carrosInstance) {

        if (carrosInstance == null) {
            notFound()
            return
        }

        carrosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Carros.label', default: 'Carros'), carrosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'carros.label', default: 'Carros'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
