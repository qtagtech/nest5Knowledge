package nest5knowledge

class Category {

    static hasMany = [articles: Article,questions: Question]
    String name
    String code
    String description


    static constraints = {
    }
    static mapping = {
        description type: 'text'
        articles sort: 'date', order: 'desc'
        questions sort: 'date', order: 'desc'
    }
    String toString(){
        name
    }

    List getArticles(int q){
       return this.articles.sort{it.date}.collate(q)[0]
    }
    List getQuestions(int q){
        return this.questions.sort{it.date}.collate(q)[0]
    }

}
