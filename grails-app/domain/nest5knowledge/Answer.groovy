package nest5knowledge

class Answer {
    static belongsTo = [question: Question]
    static hasMany = [comments: Comment]
    String content
    Date date
    Double rating
    Integer votes


    static constraints = {
    }
    static mapping = {
        content type: 'text'
    }
    String toString(){
        date.toString()
    }
}
