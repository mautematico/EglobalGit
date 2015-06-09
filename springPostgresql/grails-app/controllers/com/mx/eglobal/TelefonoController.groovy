package com.mx.eglobal



import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class TelefonoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Telefono.list(params), model:[telefonoInstanceCount: Telefono.count()]
    }

    def show(Telefono telefonoInstance) {
        respond telefonoInstance
    }

    @Secured(['ROLE_SUPERADMIN'])
    def create() {
        respond new Telefono(params)
    }

    @Transactional
    def save(Telefono telefonoInstance) {
        if (telefonoInstance == null) {
            notFound()
            return
        }

        if (telefonoInstance.hasErrors()) {
            respond telefonoInstance.errors, view:'create'
            return
        }

        telefonoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'telefono.label', default: 'Telefono'), telefonoInstance.id])
                redirect telefonoInstance
            }
            '*' { respond telefonoInstance, [status: CREATED] }
        }
    }

    def edit(Telefono telefonoInstance) {
        respond telefonoInstance
    }

    @Transactional
    def update(Telefono telefonoInstance) {
        if (telefonoInstance == null) {
            notFound()
            return
        }

        if (telefonoInstance.hasErrors()) {
            respond telefonoInstance.errors, view:'edit'
            return
        }

        telefonoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Telefono.label', default: 'Telefono'), telefonoInstance.id])
                redirect telefonoInstance
            }
            '*'{ respond telefonoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Telefono telefonoInstance) {

        if (telefonoInstance == null) {
            notFound()
            return
        }

        telefonoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Telefono.label', default: 'Telefono'), telefonoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'telefono.label', default: 'Telefono'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
