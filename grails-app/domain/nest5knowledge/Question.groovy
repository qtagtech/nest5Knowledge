package nest5knowledge

class Question {
    static hasMany = [answers: Answer, comments: Comment, tags: QuestionTag]
    String content
    Type type
    Date date


    static constraints = {
    }

    static mapping = {
        content type: 'text'
    }
}
