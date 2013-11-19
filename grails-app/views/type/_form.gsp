<%@ page import="nest5knowledge.Type" %>



<div class="fieldcontain ${hasErrors(bean: typeInstance, field: 'articles', 'error')} ">
	<label for="articles">
		<g:message code="type.articles.label" default="Articles" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${typeInstance?.articles?}" var="a">
    <li><g:link controller="article" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="article" action="create" params="['type.id': typeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'article.label', default: 'Article')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: typeInstance, field: 'icon', 'error')} ">
	<label for="icon">
		<g:message code="type.icon.label" default="Icon" />
		
	</label>
	<g:textField name="icon" value="${typeInstance?.icon}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: typeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="type.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${typeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: typeInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="type.questions.label" default="Questions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${typeInstance?.questions?}" var="q">
    <li><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="question" action="create" params="['type.id': typeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'question.label', default: 'Question')])}</g:link>
</li>
</ul>

</div>

