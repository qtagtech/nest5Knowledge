package nest5knowledge

class Tag {
    static hasMany = [articles: Article, questions: Question]

    String name
    String keywords


    static constraints = {
    }

    static mapping = {
        keywords type: 'text'
    }

    String toString(){
        name
    }
}
