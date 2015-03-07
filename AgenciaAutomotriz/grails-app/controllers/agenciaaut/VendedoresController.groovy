package agenciaaut



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VendedoresController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vendedores.list(params), model:[vendedoresInstanceCount: Vendedores.count()]
    }

    def show(Vendedores vendedoresInstance) {
        respond vendedoresInstance
    }

    def create() {
        respond new Vendedores(params)
    }

    @Transactional
    def save(Vendedores vendedoresInstance) {
        if (vendedoresInstance == null) {
            notFound()
            return
        }

        if (vendedoresInstance.hasErrors()) {
            respond vendedoresInstance.errors, view:'create'
            return
        }

        vendedoresInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vendedores.label', default: 'Vendedores'), vendedoresInstance.id])
                redirect vendedoresInstance
            }
            '*' { respond vendedoresInstance, [status: CREATED] }
        }
    }

    def edit(Vendedores vendedoresInstance) {
        respond vendedoresInstance
    }

    @Transactional
    def update(Vendedores vendedoresInstance) {
        if (vendedoresInstance == null) {
            notFound()
            return
        }

        if (vendedoresInstance.hasErrors()) {
            respond vendedoresInstance.errors, view:'edit'
            return
        }

        vendedoresInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vendedores.label', default: 'Vendedores'), vendedoresInstance.id])
                redirect vendedoresInstance
            }
            '*'{ respond vendedoresInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Vendedores vendedoresInstance) {

        if (vendedoresInstance == null) {
            notFound()
            return
        }

        vendedoresInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vendedores.label', default: 'Vendedores'), vendedoresInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vendedores.label', default: 'Vendedores'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
