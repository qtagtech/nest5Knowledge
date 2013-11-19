<%@ page import="nest5knowledge.Answer" %>



<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="answer.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${nest5knowledge.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${answerInstance?.comments*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="answer.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${answerInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="answer.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${answerInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="answer.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${nest5knowledge.Question.list()}" optionKey="id" required="" value="${answerInstance?.question?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="answer.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rating" value="${fieldValue(bean: answerInstance, field: 'rating')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'votes', 'error')} required">
	<label for="votes">
		<g:message code="answer.votes.label" default="Votes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="votes" type="number" value="${answerInstance.votes}" required=""/>
</div>

