<%@ page import="nest5knowledge.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'articles', 'error')} ">
	<label for="articles">
		<g:message code="category.articles.label" default="Articles" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.articles?}" var="a">
    <li><g:link controller="article" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="article" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'article.label', default: 'Article')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="category.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${categoryInstance?.code}" />
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="category.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${categoryInstance?.description}" />
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${categoryInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="category.questions.label" default="Questions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.questions?}" var="q">
    <li><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="question" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'question.label', default: 'Question')])}</g:link>
</li>
</ul>

</div>

