package com.mx.eglobal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AlumnosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(int max, int offset) {

        println params
        params.max = Math.min(max ?: 15, 100)
        println offset
        //respond Alumnos.list(params), model:[alumnosInstanceCount: Alumnos.count()]
        //respond[Alumnos.list(params), Alumnos.count()] 
        offset = (offset && offset>0) ?: 0
        List alumnos = Alumnos.list() //Loads the complete list
           int total = alumnos.size()
            int upperLimit = findUpperIndex(offset, max, total)
            List filteredNames = alumnos.getAt(offset..upperLimit)
            //return filteredNames
            respond filteredNames
    }
    /*public List getFilteredList(int max, int offset) {
        //max = Math.min(max ?: 25, 100)
        offset = (offset && offset>0) ?: 0

        List names = getNames() //Loads the complete list
        int total = names.size()
        int upperLimit = findUpperIndex(offset, max, total)
        List filteredNames = names.getAt(offset..upperLimit)
        return filteredNames
      }*/

    public static int findUpperIndex(int offset, int max, int total) {
        max = offset + max - 1
        if (max >= total) {
          max -= max - total + 1
        }
        return max
      }
    def show(Alumnos alumnosInstance) {
        respond alumnosInstance
    }

    def create() {
        respond new Alumnos(params)
    }

    @Transactional
    def save(Alumnos alumnosInstance) {
        if (alumnosInstance == null) {
            notFound()
            return
        }

        if (alumnosInstance.hasErrors()) {
            respond alumnosInstance.errors, view:'create'
            return
        }

        alumnosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alumnos.label', default: 'Alumnos'), alumnosInstance.id])
                redirect alumnosInstance
            }
            '*' { respond alumnosInstance, [status: CREATED] }
        }
    }

    def edit(Alumnos alumnosInstance) {
        respond alumnosInstance
    }

    @Transactional
    def update(Alumnos alumnosInstance) {
        if (alumnosInstance == null) {
            notFound()
            return
        }

        if (alumnosInstance.hasErrors()) {
            respond alumnosInstance.errors, view:'edit'
            return
        }

        alumnosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Alumnos.label', default: 'Alumnos'), alumnosInstance.id])
                redirect alumnosInstance
            }
            '*'{ respond alumnosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Alumnos alumnosInstance) {

        if (alumnosInstance == null) {
            notFound()
            return
        }

        alumnosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Alumnos.label', default: 'Alumnos'), alumnosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumnos.label', default: 'Alumnos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
