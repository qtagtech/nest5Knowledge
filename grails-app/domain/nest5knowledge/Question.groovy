package nest5knowledge

class Question {
    static hasMany = [answers: Answer, comments: Comment, tags: QuestionTag]
    static belongsTo = [category: Category, type: Type]
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
        content
    }
}
