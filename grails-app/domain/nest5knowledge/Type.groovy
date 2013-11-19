package nest5knowledge

class Type {
    static hasMany = [articles: Article,questions: Question]
    String name
    String icon

    static constraints = {
    }

    String toString(){
        name
    }
}
