package nest5knowledge

class Admin extends SecUser {

    String name
    String bio
    String email


    static constraints = {
    }
    static  mapping = {
        bio type: 'text'
    }
}
