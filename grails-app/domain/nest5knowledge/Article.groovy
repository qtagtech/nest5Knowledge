package nest5knowledge

class Article {

    static hasMany = [tags: ArticleTag, comments: Comment]
    static belongsTo = [category: Category, type: Type]

    String title
    String url
    Date date
    Integer hits
    String content
    Float rating
    Integer votes


    static constraints = {
    }
    static mapping = {
        content type: 'text'
    /*   SMM no se puede esto, se overrides, u know
        sort hits: 'desc'
        sort votes: 'desc'
        sort rating: 'desc'
        sort date: 'desc' */
    }
    String toString(){
        title
    }

}
