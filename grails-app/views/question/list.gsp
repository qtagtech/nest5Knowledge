
<%@ page import="nest5knowledge.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-question" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="question.category.label" default="Category" /></th>
					
						<g:sortableColumn property="content" title="${message(code: 'question.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'question.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="rating" title="${message(code: 'question.rating.label', default: 'Rating')}" />
					
						<th><g:message code="question.type.label" default="Type" /></th>
					
						<g:sortableColumn property="votes" title="${message(code: 'question.votes.label', default: 'Votes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "category")}</g:link></td>
					
						<td>${fieldValue(bean: questionInstance, field: "content")}</td>
					
						<td><g:formatDate date="${questionInstance.date}" /></td>
					
						<td>${fieldValue(bean: questionInstance, field: "rating")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "type")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "votes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
