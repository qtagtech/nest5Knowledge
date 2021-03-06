
<%@ page import="nest5knowledge.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-article" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list article">
			
				<g:if test="${articleInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="article.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${articleInstance?.category?.id}">${articleInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="article.comments.label" default="Comments" /></span>
					
						<g:each in="${articleInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="article.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${articleInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="article.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${articleInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.hits}">
				<li class="fieldcontain">
					<span id="hits-label" class="property-label"><g:message code="article.hits.label" default="Hits" /></span>
					
						<span class="property-value" aria-labelledby="hits-label"><g:fieldValue bean="${articleInstance}" field="hits"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="article.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${articleInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="article.tags.label" default="Tags" /></span>
					
						<g:each in="${articleInstance.tags}" var="t">
						<span class="property-value" aria-labelledby="tags-label"><g:link controller="articleTag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="article.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${articleInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="article.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="type" action="show" id="${articleInstance?.type?.id}">${articleInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="article.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${articleInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.votes}">
				<li class="fieldcontain">
					<span id="votes-label" class="property-label"><g:message code="article.votes.label" default="Votes" /></span>
					
						<span class="property-value" aria-labelledby="votes-label"><g:fieldValue bean="${articleInstance}" field="votes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${articleInstance?.id}" />
					<g:link class="edit" action="edit" id="${articleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
