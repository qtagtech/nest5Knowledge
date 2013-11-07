package nest5knowledge

class Article {

    static hasMany = [tags: ArticleTag, comments: Comment]
    static belongsTo = [category: Category]

    String title
    String url
    Date date
    Integer hits
    Type type
    String content


    static constraints = {
    }
    static mapping = {
        content type: 'text'
    }
}
