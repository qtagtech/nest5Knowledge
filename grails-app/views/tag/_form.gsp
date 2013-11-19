<%@ page import="nest5knowledge.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'articles', 'error')} ">
	<label for="articles">
		<g:message code="tag.articles.label" default="Articles" />
		
	</label>
	<g:select name="articles" from="${nest5knowledge.Article.list()}" multiple="multiple" optionKey="id" size="5" value="${tagInstance?.articles*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'keywords', 'error')} ">
	<label for="keywords">
		<g:message code="tag.keywords.label" default="Keywords" />
		
	</label>
	<g:textField name="keywords" value="${tagInstance?.keywords}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tag.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tagInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="tag.questions.label" default="Questions" />
		
	</label>
	<g:select name="questions" from="${nest5knowledge.Question.list()}" multiple="multiple" optionKey="id" size="5" value="${tagInstance?.questions*.id}" class="many-to-many"/>
</div>

