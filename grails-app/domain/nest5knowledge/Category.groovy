package nest5knowledge

class Category {

    static hasMany = [articles: Article,questions: Question]
    String name
    String code
    String description


    static constraints = {
    }
    static mapping = {
        description type: 'text'
    }
    String toString(){
        name
    }

}
