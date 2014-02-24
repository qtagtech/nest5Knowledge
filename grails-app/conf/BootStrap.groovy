import nest5knowledge.Admin
import nest5knowledge.SecRole
import nest5knowledge.SecUserSecRole
import nest5knowledge.Type
import nest5knowledge.Category

class BootStrap {
    def init = { servletContext ->
    def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)



    def admin = Admin.findByUsername('soporte@nest5.com') ?: new Admin(
            username: 'soporte@nest5.com',
            password: 'farroyavefami',
            enabled: true,
            name : 'Juan David Arroyave H.',
            email: 'soporte@nest5.com',
            bio: 'Entrepreneur made in Colombia. Co-Fundador - CEO Nest5.com.'
           ).save(failOnError: true)


    if (!admin.authorities.contains(adminRole)) {
        SecUserSecRole.create admin, adminRole
    }

        /*


        TYPES AND CATEGORIES CREATION


        */

        def fileType = Type.findByName("file") ?: new Type(
                icon: 'fa-file',
                name: 'file'
        ).save(failOnError: true)
        def fileType2 = Type.findByName("film") ?: new Type(
                icon: 'fa-film',
                name: 'film'
        ).save(failOnError: true)
        def fileType3 = Type.findByName("picture") ?: new Type(
                icon: 'fa-picture-o',
                name: 'picture'
        ).save(failOnError: true)

        def category1 = Category.findByCode("quickstart") ?: new Category(
                code: 'quickstart',
                name: 'Guías de Inicio Rápido',
                description: 'Tutoriales, videos, imágenes y mucho material que te ayuda a estar listo con Nest5 en menos de 10 minutos. Aprende a inscribirte, instalar los equipos necesarios en el punto de venta de tu Marca y mucho más de manera eficiente.'
        ).save(failOnError: true)


   }

}
