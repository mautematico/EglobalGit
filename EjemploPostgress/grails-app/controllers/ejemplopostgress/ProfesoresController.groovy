package ejemplopostgress



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfesoresController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Profesores.list(params), model:[profesoresInstanceCount: Profesores.count()]
    }

    def show(Profesores profesoresInstance) {
        respond profesoresInstance
    }

    def create() {
        respond new Profesores(params)
    }

    @Transactional
    def save(Profesores profesoresInstance) {
        if (profesoresInstance == null) {
            notFound()
            return
        }

        if (profesoresInstance.hasErrors()) {
            respond profesoresInstance.errors, view:'create'
            return
        }

        profesoresInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profesores.label', default: 'Profesores'), profesoresInstance.id])
                redirect profesoresInstance
            }
            '*' { respond profesoresInstance, [status: CREATED] }
        }
    }

    def edit(Profesores profesoresInstance) {
        respond profesoresInstance
    }

    @Transactional
    def update(Profesores profesoresInstance) {
        if (profesoresInstance == null) {
            notFound()
            return
        }

        if (profesoresInstance.hasErrors()) {
            respond profesoresInstance.errors, view:'edit'
            return
        }

        profesoresInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Profesores.label', default: 'Profesores'), profesoresInstance.id])
                redirect profesoresInstance
            }
            '*'{ respond profesoresInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Profesores profesoresInstance) {

        if (profesoresInstance == null) {
            notFound()
            return
        }

        profesoresInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Profesores.label', default: 'Profesores'), profesoresInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profesores.label', default: 'Profesores'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
