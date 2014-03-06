<%@ page import="nest5knowledge.Answer; nest5knowledge.Article" %>
<%@ page import="nest5knowledge.Question" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="b3knowledge"/>
    <meta charset="utf-8">
    <title>Centro de Soporte - Nest5</title>
</head>

<body class="faq-accordion">

<!-- Paga title -->
<div class="main-header">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-lg-8">
                <h1>Preguntas Frecuentes</h1>

                <p class="tagline">Soluciones rápidas a tus preguntas</p>
            </div>

            <div class="col-sm-4 col-lg-4">
                <form role="search" method="get" id="searchform" class="form-search" action="#">
                    <div class="append-icon">
                        <input type="text" value="" name="s" id="autocomplete-dynamic" class="form-control input-lg"
                               autocomplete="off" placeholder="Enter search term here.">
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
        <div class="main col-sm-9" role="main">

            <div class="page-header">
                <h1>Accordion FAQ</h1>
            </div>

            <div class="page-main">
                <g:each in="${resultado}" var="objeto" status="i">
                    <div class="question-detail-list">
                        <h2 id="${objeto.key.id}-questions1" class="faq-section-heading">${objeto.key}</h2>
                        <g:each in="${objeto.value}" status="j" var="pregunta">
                            <article class="faq clearfix">
                                <h3 id="question-${pregunta.id}" class="entry-title faq-close"><span></span><a name="${pregunta.id}"></a>${pregunta.content}</h3>
                                <div class="faq-content" style="display: none;">
                                    <p>${pregunta?.answers[0]}</p>
                                </div>
                            </article>
                        </g:each>
                    </div>
                </g:each>
            </div>
        </div>

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

</body>
</html>
