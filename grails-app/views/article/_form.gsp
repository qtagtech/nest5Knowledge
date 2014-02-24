<%@ page import="nest5knowledge.Article" %>



<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="article.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${nest5knowledge.Category.list()}" optionKey="id" required="" value="${articleInstance?.category?.id}" class="many-to-one"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="article.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${nest5knowledge.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${articleInstance?.comments*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="article.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${articleInstance?.content}"/>
</div>--}%
<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'type', 'error')} required">
    <label for="type">
        <g:message code="article.type.label" default="Type" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="type" name="type.id" from="${nest5knowledge.Type.list()}" optionKey="id" required="" value="${articleInstance?.type?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="article.title.label" default="Title" />

    </label>
    <g:textField name="title" value="${articleInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="article.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${articleInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'url', 'error')} ">
    <label for="url">
        <g:message code="article.url.label" default="Url" />

    </label>
    <g:textField name="url" value="${articleInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'hits', 'error')} required">
	<label for="hits">
		<g:message code="article.hits.label" default="Hits" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="hits" type="number" value="${articleInstance.hits}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="article.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rating" value="${fieldValue(bean: articleInstance, field: 'rating')}" required=""/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="article.tags.label" default="Tags" />
		
	</label>
	
<ul class="one-to-many">
    <g:select name="tags" from="${nest5knowledge.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${articleInstance?.tags*.id}" class="many-to-many"/>
<li class="add">
<g:link controller="articleTag" action="create" params="['article.id': articleInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'articleTag.label', default: 'ArticleTag')])}</g:link>
</li>
</ul>

</div>--}%

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'votes', 'error')} required">
    <label for="votes">
        <g:message code="article.votes.label" default="Votes" />
        <span class="required-indicator">*</span>
    </label>
    <g:field name="votes" type="number" value="${articleInstance.votes}" required=""/>
</div>
<script src="${resource(dir:'bootstrap3update/assets/js',file:'jquery-2.1.0.min.js')}"></script>
<script>
    $(document).ready(function(){

        $("body").on('keyup',"#title",function(e){

            var dirty = $(this).val();
            var niceURI = dirty.replace(/ /g,"-");
            niceURI = makeSortString(niceURI);
            niceURI = niceURI.replace(/[^a-zA-Z0-9-_]/g, '');
            $("#url").val(niceURI);
        });
    });


    function makeSortString(s) {
        if(!makeSortString.translate_re) makeSortString.translate_re = /[öäüëïáéíóúñâêîôûàèìòùÖÄÜËÏÁÉÍÓÚÑÂÊÎÔÛÀÈÌÒÙÝý]/g;
        var translate = {"ä": "a", "ö": "o", "ü": "u", "ë": "e", "ï": "i","á": "a", "é": "e", "í": "i", "ó": "o", "ú": "u","ñ": "n", "â": "a", "ê": "e", "î": "i", "ô": "o", "û": "u", "à": "a", "è": "e", "ì": "i", "ò": "o", "ù": "u","Ä": "A", "Ö": "O", "Ü": "U", "Ë": "E", "Ï": "I", "Á": "A", "É": "E", "Í": "I", "Ó": "O", "Ú": "U","Ñ": "N", "Â": "A", "Ê": "E", "Î": "I", "Ô": "O", "Û": "U", "À": "a", "È": "E", "Ì": "I", "Ò": "O", "Ù": "U","Ý":"Y","ý":"y"   // probably more to come
        };
        return ( s.replace(makeSortString.translate_re, function(match) {
            return translate[match];
        }) );
    }
</script>

