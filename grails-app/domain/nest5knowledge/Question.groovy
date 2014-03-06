package nest5knowledge

class Question {
    static hasMany = [answers: Answer, comments: Comment, tags: QuestionTag]
    static belongsTo = [category: Category, type: Type]
    String title
    String content
    Date date
    Float rating
    Integer votes


    static constraints = {
    }

    static mapping = {
        content type: 'text'
        title type: 'text'
    }
    String toString(){
        content
    }
}
