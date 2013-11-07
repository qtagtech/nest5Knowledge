package nest5knowledge

class ArticleTag {
    static belongsTo = [article: Article, tag: Tag]
    Article article
    Tag tag

    static constraints = {
    }
}
