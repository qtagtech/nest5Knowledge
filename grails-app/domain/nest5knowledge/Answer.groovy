package nest5knowledge

class Answer {
    static belongsTo = [question: Question]
    static hasMany = [comments: Comment]
    String content
    Date date


    static constraints = {
    }
    static mapping = {
        content type: 'text'
    }
}
