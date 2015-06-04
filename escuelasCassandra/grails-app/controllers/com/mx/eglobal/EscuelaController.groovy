package com.mx.eglobal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import com.mx.eglobal.*

@Transactional(readOnly = true)
class EscuelaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Escuela.list(params), model:[escuelaInstanceCount: Escuela.count()]
    }

    def show(Escuela escuelaInstance) {

        def alumnos = Alumnos.findAllByIdInList(escuelaInstance.idalumnos)
        [escuelaInstance:escuelaInstance, alumnos:alumnos]
    }

    def create() {
        respond new Escuela(params)
    }

    @Transactional
    def save(Escuela escuelaInstance) {
        if (escuelaInstance == null) {
            notFound()
            return
        }

        if (escuelaInstance.hasErrors()) {
            respond escuelaInstance.errors, view:'create'
            return
        }

        escuelaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'escuela.label', default: 'Escuela'), escuelaInstance.id])
                redirect escuelaInstance
            }
            '*' { respond escuelaInstance, [status: CREATED] }
        }
    }

    def edit(Escuela escuelaInstance) {
        respond escuelaInstance
    }

    @Transactional
    def update(Escuela escuelaInstance) {
        if (escuelaInstance == null) {
            notFound()
            return
        }

        if (escuelaInstance.hasErrors()) {
            respond escuelaInstance.errors, view:'edit'
            return
        }

        escuelaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Escuela.label', default: 'Escuela'), escuelaInstance.id])
                redirect escuelaInstance
            }
            '*'{ respond escuelaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Escuela escuelaInstance) {

        if (escuelaInstance == null) {
            notFound()
            return
        }

        escuelaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Escuela.label', default: 'Escuela'), escuelaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'escuela.label', default: 'Escuela'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
