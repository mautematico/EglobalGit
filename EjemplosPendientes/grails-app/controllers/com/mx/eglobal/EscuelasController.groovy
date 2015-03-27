package com.mx.eglobal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EscuelasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        print "----> " + params
        if( params.sort == "alumnos" ){
            print "${params.sort}  OK"
            respond Escuelas.list();
        }else{
            params.max = Math.min(max ?: 10, 100)
            respond Escuelas.list(params), model:[escuelasInstanceCount: Escuelas.count()]
        }
    }

    def show(Escuelas escuelasInstance) {
        respond escuelasInstance
    }

    def create() {
        respond new Escuelas(params)
    }

    @Transactional
    def save(Escuelas escuelasInstance) {
        if (escuelasInstance == null) {
            notFound()
            return
        }

        if (escuelasInstance.hasErrors()) {
            respond escuelasInstance.errors, view:'create'
            return
        }

        escuelasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'escuelas.label', default: 'Escuelas'), escuelasInstance.id])
                redirect escuelasInstance
            }
            '*' { respond escuelasInstance, [status: CREATED] }
        }
    }

    def edit(Escuelas escuelasInstance) {
        respond escuelasInstance
    }

    @Transactional
    def update(Escuelas escuelasInstance) {
        if (escuelasInstance == null) {
            notFound()
            return
        }

        if (escuelasInstance.hasErrors()) {
            respond escuelasInstance.errors, view:'edit'
            return
        }

        escuelasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Escuelas.label', default: 'Escuelas'), escuelasInstance.id])
                redirect escuelasInstance
            }
            '*'{ respond escuelasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Escuelas escuelasInstance) {

        if (escuelasInstance == null) {
            notFound()
            return
        }

        escuelasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Escuelas.label', default: 'Escuelas'), escuelasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'escuelas.label', default: 'Escuelas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
