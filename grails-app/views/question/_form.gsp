<%@ page import="nest5knowledge.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="question.answers.label" default="Answers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${questionInstance?.answers?}" var="a">
    <li><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="answer" action="create" params="['question.id': questionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'answer.label', default: 'Answer')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="question.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${nest5knowledge.Category.list()}" optionKey="id" required="" value="${questionInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="question.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${nest5knowledge.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${questionInstance?.comments*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="question.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${questionInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="question.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${questionInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="question.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rating" value="${fieldValue(bean: questionInstance, field: 'rating')}" required=""/>
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

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="question.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${nest5knowledge.Type.list()}" optionKey="id" required="" value="${questionInstance?.type?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'votes', 'error')} required">
	<label for="votes">
		<g:message code="question.votes.label" default="Votes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="votes" type="number" value="${questionInstance.votes}" required=""/>
</div>

