<!-- SMM puse esta fucking linea para poder poner los articulos recientes en sidebar -->
<%@ page import="nest5knowledge.Article" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="b3knowledge"/>
    <meta charset="ISO-8859-1">
    <r:require modules="ckeditor,base64"/>
    <title>${title ?: 'Sin Título - Centro de Soporte Nest5'}</title>
</head>

<body class="article">
<!-- Paga title -->
<div class="main-header">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-lg-8">
                <h1>${title ?: 'Sin Título'}</h1>

                <p class="tagline"><i
                        class="fa fa-fw ${articleInstance?.type?.icon ?: 'fa-file-text-o'}"></i>${articleInstance?.category?.name}
                </p>
            </div>

            <div class="col-sm-4 col-lg-4">
                <form role="search" method="get" id="searchform" class="form-search" action="#">
                    <div class="append-icon">
                        <input type="text" value="" name="s" id="autocomplete-dynamic" class="form-control input-lg"
                               autocomplete="off" placeholder="¿Qué quieres saber? Encuentra la Respuesta.">
                        <span><i class="icon-search"></i></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Main content -->
<div class="wrap container" role="document">
<div class="content row">
<div class="main col-sm-9" role="main">%{--con sidebar ancho 9--}%

    <article class="post hentry">
        <header>
            <h1 class="entry-title" contenteditable="true">${title ?: 'Sin Título'}</h1>
        </header>

        <div id="article-content">
            <div class="featured-media" contenteditable="true">
                ${image ?: '<img width="870" height="490" src="${resource(dir:\'bootstrap3update/assets/img\',file:\'responsive.png\')}" alt="Centro de Soporte Nest5" />'}
            </div>


            <div class="entry-content">
                ${content ?: '<p>¡Oops!<br />Al parecer se ha presentado un error. Nuestro gurús de programación en el Euipo <a href="http://www.nest5.com" target="_blank">Nest5</a> ya han sido notificados y trabajan para arreglarlo.<br />¡Gracias por tu paciencia!></p>'}
            </div>
        </div>

        <footer>
            <time class="updated" datetime="2012-11-05T20:30:07+00:00" pubdate>Última Actualización: <g:formatDate
                    date="${articleInstance?.date}" type="date" style="LONG" locale="es_CO"/></time>

            <p class="byline author vcard">Por <a href="#" rel="author" class="fn">Equipo de Soporte Nest5</a></p>
        </footer>

        <%-- sección de comentarios

                            <div id="author-box" class="clearfix">
                              <div class="author-box-image">
                                <img alt='' src='http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&f=y' class='avatar pull-left media-object avatar-72 photo' height='72' width='72' />        </div><!-- /.author-box-image -->
                                <h4 class="author-box-name">Soporte Nest5</h4>
                                <div class="author-box-description">
                                  <p>Somos apasionados por el Cliente. Nuestra razón es hacer que tú, dueño, administrador, o interesado de una Marca, sepa sacar provecho de lo que Nest5 ofrece para potencializar tu negocio.</p>
                                </div><!-- /.author-box-description -->
                                <p class="author-links">
                                  <i class="icon-user"></i> <a class="author-link author-posts-url" href="#" title="John Posts">Otras Publicaciones</a>
                                  &nbsp;<i class="icon-globe"></i> <a class="author-link author-url" href="#" title="Website" target="_blank" rel="author">Sitio Web</a>
                                  &nbsp;<i class="icon-twitter-sign"></i> <a class="author-link icn-twitter" href="#" title="Twitter" target="_blank">Twitter</a>
                                  &nbsp;<i class="icon-facebook-sign"></i> <a class="author-link icn-facebook" href="#" title="Facebook" target="_blank">Facebook</a>
                                  &nbsp;<i class="icon-google-plus-sign"></i> <a class="author-link icn-gplus" href="#" title="Google+" target="_blank">Google+</a>
                                </p>
                            </div><!-- /.author-box -->

                            <section id="comments">
                              <h3>3 Responses to &ldquo;Responsive Design&rdquo;</h3>
                              <ol class="media-list">

                                <li id="comment-18" class="comment byuser comment-author-demopressapps bypostauthor even thread-even depth-1 media comment-18">
                                  <img alt='' src='http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&f=y' class='avatar pull-left media-object avatar-72 photo' height='72' width='72' />
                                  <div class="media-body">
                                    <h4 class="media-heading"><a href='#' rel='external nofollow' class='url'>Steve Clark</a></h4>
                                    <time datetime="2013-02-05T22:28:55+00:00"><a href="#">February 5, 2013</a></time>


                                    <p>Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch “Jeopardy! “, Alex Trebek’s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just</p>
                                    <a class='comment-reply-link' href='#' onclick='return addComment.moveForm("comment-18", "18", "respond", "734")'>Reply</a>      <ul class="comment byuser comment-author-demopressapps bypostauthor odd alt thread-odd thread-alt depth-1 media unstyled comment-18">
                                    <li id="comment-20" class="comment byuser comment-author-demopressapps bypostauthor even depth-2 media comment-20">
                                      <img alt='' src='http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&f=y' class='avatar pull-left media-object avatar-72 photo' height='72' width='72' /><div class="media-body">
                                      <h4 class="media-heading"><a href='#' rel='external nofollow' class='url'>Steve Clark</a></h4>
                                      <time datetime="2013-02-05T22:29:23+00:00"><a href="#">February 5, 2013</a></time>
                                      <p>A very bad quack might jinx zippy fowls.</p>
                                      <a class='comment-reply-link' href='#' onclick='return addComment.moveForm("comment-20", "20", "respond", "734")'>Reply</a>  </div></li>
                                    </ul>
                                  </div>
                                </li>

                                <li id="comment-19" class="comment byuser comment-author-demopressapps bypostauthor odd alt thread-even depth-1 media comment-19">
                                  <img alt='' src='http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&f=y' class='avatar pull-left media-object avatar-72 photo' height='72' width='72' />
                                  <div class="media-body">
                                    <h4 class="media-heading"><a href='#' rel='external nofollow' class='url'>Steve Clark</a></h4>
                                    <time datetime="2013-02-05T22:29:08+00:00"><a href="#">February 5, 2013</a></time>
                                    <p>A wizard’s job is to vex chumps quickly in fog. Watch “Jeopardy! “, Alex Trebek’s fun TV quiz game. Woven silk pyjamas e</p>
                                    <a class='comment-reply-link' href='#' onclick='return addComment.moveForm("comment-19", "19", "respond", "734")'>Reply</a>
                                  </div>
                                </li>

                              </ol>
                            </section><!-- /#comments -->

                            <section id="respond">
                              <h3>Leave a Reply</h3>
                              <p class="cancel-comment-reply"><a rel="nofollow" id="cancel-comment-reply-link" href="#" style="display:none;">Click here to cancel reply.</a></p>
                                <form action="#" method="post" id="commentform">
                                  <div class="form-group">
                                    <label for="author">Name</label>
                                    <input type="text" class="form-control" name="author" id="author" value="" size="22" aria-required="true">
                                  </div>
                                  <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" name="email" id="email" value="" size="22" aria-required="true">
                                  </div>
                                  <div class="form-group">
                                    <label for="url">Website</label>
                                    <input type="url" class="form-control" name="url" id="url" value="" size="22">
                                  </div>
                                  <div class="form-group">
                                    <label for="comment">Comment</label>
                                    <textarea name="comment" id="comment" class="form-control" rows="5" aria-required="true"></textarea>
                                  </div>
                                  <p><input name="submit" class="btn btn-primary" type="submit" id="submit" value="Submit Comment"></p>
                                  <input type='hidden' name='comment_post_ID' value='734' id='comment_post_ID' />
                                  <input type='hidden' name='comment_parent' id='comment_parent' value='0' />
                                </form>
                              </section><!-- /#respond -->
                            </article>
sección de comentarios --%>
</div><!-- /.main -->


<!-- Sidebar -->
<aside class="sidebar col-sm-3" role="complementary">

    <section class="widget">
        <div>
            <!-- SMM puse los articulos mas valiosos en el sidebar Yea BITCH -->
            <h3>Artículos Más Valiosos</h3>
            <ul>
                <%
                    def articulosrate = Article.list(sort: 'rating', order: 'desc', max: 5)
                %>
                <g:if test="${articulosrate?.size() > 0}">
                    <g:each in="${articulosrate}" var="articulo" status="i">
                        <li>
                            <i class="fa fa-fw ${articulo?.type?.icon}"></i> <a
                                href="${createLink(uri: '/') + articulo?.url}" rel="bookmark"
                                title="${URLDecoder.decode(articulo?.title, 'ISO-8859-1')}">${URLDecoder.decode(articulo?.title, 'ISO-8859-1')}</a>
                        </li>
                    </g:each>
                </g:if>
                <g:else>
                    <div class="fade in alert alert-info">
                        <i class="fa fa-fw fa-exclamation-triangle"></i>
                        Vuelve pronto y esto estará con contenido.
                    </div>
                </g:else>
            </ul>
        </div>
    </section>


    <section class="widget">
        <div>
            <!-- SMM puse los articulos mas votados en el sidebar PERFECT CUCHEY  -->
            <h3>Artículos Más Votados</h3>
            <ul>
                <%
                    def articulosvotes = Article.list(sort: 'votes', order: 'desc', max: 5)
                %>
                <g:if test="${articulosvotes?.size() > 0}">
                    <g:each in="${articulosvotes}" var="articulo" status="i">
                        <li>
                            <i class="fa fa-fw ${articulo?.type?.icon}"></i> <a
                                href="${createLink(uri: '/') + articulo?.url}" rel="bookmark"
                                title="${URLDecoder.decode(articulo?.title, 'ISO-8859-1')}">${URLDecoder.decode(articulo?.title, 'ISO-8859-1')}</a>
                        </li>
                    </g:each>
                </g:if>
                <g:else>
                    <div class="fade in alert alert-info">
                        <i class="fa fa-fw fa-exclamation-triangle"></i>
                        Vuelve pronto y esto estará con contenido.
                    </div>
                </g:else>
            </ul>
        </div>
    </section>


    <section class="widget">
        <div>
            <!-- SMM puse los articulos populares en el sidebar FUCKING NICE :( -->
            <h3>Artículos Populares</h3>
            <ul>
                <%
                    def articuloshits = Article.list(sort: 'hits', order: 'desc', max: 5)
                %>
                <g:if test="${articuloshits?.size() > 0}">
                    <g:each in="${articuloshits}" var="articulo" status="i">
                        <li>
                            <i class="fa fa-fw ${articulo?.type?.icon}"></i> <a
                                href="${createLink(uri: '/') + articulo?.url}" rel="bookmark"
                                title="${URLDecoder.decode(articulo?.title, 'ISO-8859-1')}">${URLDecoder.decode(articulo?.title, 'ISO-8859-1')}</a>
                        </li>
                    </g:each>
                </g:if>
                <g:else>
                    <div class="fade in alert alert-info">
                        <i class="fa fa-fw fa-exclamation-triangle"></i>
                        Vuelve pronto y esto estará con contenido.
                    </div>
                </g:else>
            </ul>
        </div>
    </section>
    <!-- SMM puse los articulos recientes en el sidebar al pelo-->
    <section class="widget">
        <div>
            <h3>Artículos Recientes</h3>
            <ul>
                <%
                    def articulos = Article.list(sort: 'date', order: 'desc', max: 5)
                %>
                <g:if test="${articulos?.size() > 0}">
                    <g:each in="${articulos}" var="articulo" status="i">
                        <li>
                            <i class="fa fa-fw ${articulo?.type?.icon}"></i> <a
                                href="${createLink(uri: '/') + articulo?.url}" rel="bookmark"
                                title="${URLDecoder.decode(articulo?.title, 'ISO-8859-1')}">${URLDecoder.decode(articulo?.title, 'ISO-8859-1')}</a>
                        </li>
                    </g:each>
                </g:if>
                <g:else>
                    <div class="fade in alert alert-info">
                        <i class="fa fa-fw fa-exclamation-triangle"></i>
                        Vuelve pronto y esto estará con contenido.
                    </div>
                </g:else>
            </ul>
        </div>
    </section>

</aside><!-- /.sidebar -->
</div><!-- /.content -->
</div><!-- /.wrap -->


<r:script>
    $(document).ready(function () {
    });
</r:script>

</body>
</html>
