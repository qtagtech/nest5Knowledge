package nest5knowledge

class Comment {
    static hasMany = [comments: Comment]
    String content
    Date date

    static constraints = {
    }
    static mapping = {
        content type: 'text'
    }

    String toString(){
        date.toString()
    }
}
