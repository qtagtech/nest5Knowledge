package nest5knowledge

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.dao.DataIntegrityViolationException

class ArticleController {

    //static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService

    @Secured(["ROLE_ADMIN"])
    def index() {
        redirect(action: "list", params: params)
    }

    @Secured(["ROLE_ADMIN"])
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [articleInstanceList: Article.list(params), articleInstanceTotal: Article.count()]
    }

    @Secured(["ROLE_ADMIN"])
    def create() {

        [articleInstance: new Article(params)]
    }

    @Secured(["ROLE_ADMIN"])
    def design() {
        if(!params?.title)
            redirect(action: "create", params: params)
        println params
        println params.date
        println params.category?.id
        def user = springSecurityService.currentUser as Admin
        [articleInstance: new Article(params), user: user, fecha: [day: params.date_day, month: params.date_month, year: params.date_year]]
    }

    @Secured(["ROLE_ADMIN"])
    def save() {
        def articleInstance = new Article(params)
        println params.tags
        if(!params.date){
            def calendar = Calendar.getInstance()
            calendar.set(params?.date_year as int,params?.date_month as int,params.date_day as int)
            articleInstance.date = calendar.time
        }
        if (!articleInstance.save(flush: true)) {
            render(view: "create", model: [articleInstance: articleInstance])
            return
        }
        def tags = params.tags
        tags.each {
            def actual = Tag.findById(it as Long)
            if(!actual){
                println "error guardando relación tag artículo, no existe tag con id "+it
            }
            def gua = new ArticleTag(
                    tag: actual,
                    article: articleInstance
            )
            if(!gua.save(flush: true)){
                println "error guardando relación tag artículo para: "+gua.tag
            }
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'article.label', default: 'Article'), articleInstance.id])
        redirect(action: "show", id: articleInstance.id)
    }

    @Secured(["ROLE_ADMIN"])
    def show(Long id) {
        def articleInstance = Article.get(id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
            return
        }

        [articleInstance: articleInstance]
    }

    @Secured(["ROLE_ADMIN"])
    def edit(Long id) {
        def articleInstance = Article.get(id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
            return
        }

        [articleInstance: articleInstance]
    }

    @Secured(["ROLE_ADMIN"])
    def update(Long id, Long version) {
        def articleInstance = Article.get(id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (articleInstance.version > version) {
                articleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'article.label', default: 'Article')] as Object[],
                        "Another user has updated this Article while you were editing")
                render(view: "edit", model: [articleInstance: articleInstance])
                return
            }
        }

        articleInstance.properties = params

        if (!articleInstance.save(flush: true)) {
            render(view: "edit", model: [articleInstance: articleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'article.label', default: 'Article'), articleInstance.id])
        redirect(action: "show", id: articleInstance.id)
    }

    @Secured(["ROLE_ADMIN"])
    def delete(Long id) {
        def articleInstance = Article.get(id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
            return
        }

        try {
            articleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "show", id: id)
        }
    }

    @Secured(["permitAll"])
    def view() {
        if(!params?.url){
            redirect(controller: 'category', action: 'knowledgebase')
            return
        }

        def articleInstance = Article.findByUrl(params?.url)
        if(!articleInstance){
            redirect(controller: 'category', action: 'knowledgebase')
            return
        }
        def content = URLDecoder.decode(articleInstance.content,'ISO-8859-1')
        def parts = content.split("----------//////////----------")
        [articleInstance: articleInstance,title: URLDecoder.decode(articleInstance.title,'ISO-8859-1'), image: parts[0], content: parts[1] ]
    }
}
