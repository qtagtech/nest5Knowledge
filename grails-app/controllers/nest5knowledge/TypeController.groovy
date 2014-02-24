package nest5knowledge

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.dao.DataIntegrityViolationException

class TypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService
    @Secured(["ROLE_ADMIN"])
    def index() {
        redirect(action: "list", params: params)
    }

    @Secured(["ROLE_ADMIN"])
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [typeInstanceList: Type.list(params), typeInstanceTotal: Type.count()]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {
        [typeInstance: new Type(params)]
    }

    @Secured(["ROLE_ADMIN"])
    def save() {
        def typeInstance = new Type(params)
        if (!typeInstance.save(flush: true)) {
            render(view: "create", model: [typeInstance: typeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'type.label', default: 'Type'), typeInstance.id])
        redirect(action: "show", id: typeInstance.id)
    }

    @Secured(["ROLE_ADMIN"])
    def show(Long id) {
        def typeInstance = Type.get(id)
        if (!typeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'type.label', default: 'Type'), id])
            redirect(action: "list")
            return
        }

        [typeInstance: typeInstance]
    }

    @Secured(["ROLE_ADMIN"])
    def edit(Long id) {
        def typeInstance = Type.get(id)
        if (!typeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'type.label', default: 'Type'), id])
            redirect(action: "list")
            return
        }

        [typeInstance: typeInstance]
    }

    @Secured(["ROLE_ADMIN"])
    def update(Long id, Long version) {
        def typeInstance = Type.get(id)
        if (!typeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'type.label', default: 'Type'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (typeInstance.version > version) {
                typeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'type.label', default: 'Type')] as Object[],
                        "Another user has updated this Type while you were editing")
                render(view: "edit", model: [typeInstance: typeInstance])
                return
            }
        }

        typeInstance.properties = params

        if (!typeInstance.save(flush: true)) {
            render(view: "edit", model: [typeInstance: typeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'type.label', default: 'Type'), typeInstance.id])
        redirect(action: "show", id: typeInstance.id)
    }

    def delete(Long id) {
        def typeInstance = Type.get(id)
        if (!typeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'type.label', default: 'Type'), id])
            redirect(action: "list")
            return
        }

        try {
            typeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'type.label', default: 'Type'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'type.label', default: 'Type'), id])
            redirect(action: "show", id: id)
        }
    }
}
