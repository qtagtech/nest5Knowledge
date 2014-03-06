<%@ page import="nest5knowledge.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="question.answers.label" default="Answers" />
		
	</label>
	


</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="question.category.label" default="Category" />
		
	</label>
	<g:select id="category" name="category.id" from="${nest5knowledge.Category.list()}" optionKey="id" required="" value="${questionInstance?.category?.id}" class="many-to-one"/>
</div>


<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'content', 'error')} ">
	<label for="content" >
		<g:message code="question.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${questionInstance?.content}" placeholder="aca es la pregunta"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="question.date.label" default="Date" />
		
	</label>
	<g:datePicker name="date" precision="day" value="${questionInstance?.date}" />
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'rating', 'error')} ">
	<label for="rating">
		<g:message code="question.rating.label" default="Rating" />
		
	</label>
	<g:field type="number" name="rating" value="${questionInstance.rating}" />
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="question.tags.label" default="Tags" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${questionInstance?.tags?}" var="t">
    <li><g:link controller="questionTag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="questionTag" action="create" params="['question.id': questionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'questionTag.label', default: 'QuestionTag')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="question.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${questionInstance?.title}" />
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="question.type.label" default="Type" />
		
	</label>
	<g:select id="type" name="type.id" from="${nest5knowledge.Type.list()}" optionKey="id" required="" value="${questionInstance?.type?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'votes', 'error')} ">
	<label for="votes">
		<g:message code="question.votes.label" default="Votes" />
		
	</label>
	<g:field type="number" name="votes" value="${questionInstance.votes}" />
</div>

