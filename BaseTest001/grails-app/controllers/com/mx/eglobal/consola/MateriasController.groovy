package com.mx.eglobal.consola

import grails.plugin.springsecurity.annotation.Secured;

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class MateriasController {
    
    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Materias.list(params), model:[materiasInstanceCount: Materias.count()]
    }

    def show(Materias materiasInstance) {
        respond materiasInstance
    }

    def create() {
        respond new Materias(params)
    }

    @Transactional
    def save(Materias materiasInstance) {
        if (materiasInstance == null) {
            notFound()
            return
        }

        if (materiasInstance.hasErrors()) {
            respond materiasInstance.errors, view:'create'
            return
        }

        materiasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'materias.label', default: 'Materias'), materiasInstance.id])
                redirect materiasInstance
            }
            '*' { respond materiasInstance, [status: CREATED] }
        }
    }

    def edit(Materias materiasInstance) {
        respond materiasInstance
    }

    @Transactional
    def update(Materias materiasInstance) {
        if (materiasInstance == null) {
            notFound()
            return
        }

        if (materiasInstance.hasErrors()) {
            respond materiasInstance.errors, view:'edit'
            return
        }

        materiasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Materias.label', default: 'Materias'), materiasInstance.id])
                redirect materiasInstance
            }
            '*'{ respond materiasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Materias materiasInstance) {

        if (materiasInstance == null) {
            notFound()
            return
        }

        materiasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Materias.label', default: 'Materias'), materiasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'materias.label', default: 'Materias'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
