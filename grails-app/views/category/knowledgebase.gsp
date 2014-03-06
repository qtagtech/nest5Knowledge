<%@ page import="nest5knowledge.Article" %>
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta name="layout" content="b3knowledge"/>
      <meta charset="ISO-8859-1">

      <title>Tutoriales y Artículos</title>
  </head>
<%-- SMM aca dice knowKedgebase --%>
  <body class="knowledgebase">



    <!-- Page title -->
    <div class="main-header">
      <div class="container">
        <div class="row">
          <div class="col-sm-8 col-lg-8">
            <h1>Tutoriales y Artículos</h1>
            <p class="tagline">Encuentra respuestas, soluciones y consejos de forma rápida</p>
          </div>
          <div class="col-sm-4 col-lg-4">
            <form role="search" method="get" id="searchform" class="form-search" action="#">
              <div class="append-icon">
                <input type="text" value="" name="s" id="autocomplete-dynamic" class="form-control input-lg" autocomplete="off" placeholder="¿Qué quieres saber? Encuentra la Respuesta.">
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
        <div class="main col-sm-9" role="main"> %{--con sidebar 9--}%
          %{--every 3 categories, a knowledge-base-row must be created--}%
        <g:each in="${categories}" var="category" status="i">
            <g:if test="${i % 3 == 0}">
                <div class="row knowledge-base-row">
            </g:if>
            <div class="col-sm-4 kb-category">
                <h2>
                    <a href="#" title="${category?.name}">${category?.name ?: 'Categoría sin Nombre'}</a>
                </h2>
                <ul class="category-posts">
                    <g:if test="${(elements[i]).size() > 0}">
                        <g:each in="${elements[i]}" var="article" status="j">
                            <li>
                                <i class="fa fa-fw ${article?.type?.icon ?: 'fa-file-text-o'}"></i>
                                <!-- SMM arregle el HREF de los articulos -->
                                <a href="${createLink(uri: '/')+article?.url}">${java.net.URLDecoder.decode(article?.title ?: 'Sin Título','ISO-8859-1')}</a>
                            </li>
                        </g:each>
                    </g:if>
                    <g:else>
                        <li>
                            <div class="fade in alert alert-info">
                                <i class="fa fa-fw fa-exclamation-triangle"></i>
                                Aún no hay tutoriales o artículos disponibles
                            </div>
                        </li>
                    </g:else>

                </ul>

                <span class="label label-primary">
                    <a href="#" >Ver todos los (${nest5knowledge.Article.countByCategory(category)}) artículos  <i class="fa fa-chevron-right"></i></a>
                </span>
            </div>
            <g:if test="${category == categories.last()}">
                </div>
            </g:if>
            <g:elseif test="${(i + 1) % 3 == 0}">
                </div>   %{--closes knowledge-base-row--}%
            </g:elseif>
        </g:each>
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
                                <i class="fa fa-fw ${articulo?.type?.icon}"></i> <a href="${createLink(uri: '/')+articulo?.url}" rel="bookmark" title="${URLDecoder.decode(articulo?.title,'ISO-8859-1')}">${URLDecoder.decode(articulo?.title,'ISO-8859-1')}</a>
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
                                <i class="fa fa-fw ${articulo?.type?.icon}"></i> <a href="${createLink(uri: '/')+articulo?.url}" rel="bookmark" title="${URLDecoder.decode(articulo?.title,'ISO-8859-1')}">${URLDecoder.decode(articulo?.title,'ISO-8859-1')}</a>
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
                                <i class="fa fa-fw ${articulo?.type?.icon}"></i> <a href="${createLink(uri: '/')+articulo?.url}" rel="bookmark" title="${URLDecoder.decode(articulo?.title,'ISO-8859-1')}">${URLDecoder.decode(articulo?.title,'ISO-8859-1')}</a>
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
                                <i class="fa fa-fw ${articulo?.type?.icon}"></i> <a href="${createLink(uri: '/')+articulo?.url}" rel="bookmark" title="${URLDecoder.decode(articulo?.title,'ISO-8859-1')}">${URLDecoder.decode(articulo?.title,'ISO-8859-1')}</a>
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
