package nest5knowledge

class Type {
    static hasMany = [articles: Article]
    String name
    String icon

    static constraints = {
    }
}
