<!DOCTYPE html>
<html lang="en">
  <head>
      <meta name="layout" content="b3knowledge"/>
      <meta charset="ISO-8859-1">

      <title>Tutoriales y Artículos</title>
  </head>

  <body class="knowkedgebase">



    <!-- Paga title -->
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
        <div class="main col-sm-12" role="main"> %{--con sidebar 9--}%
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
                                <a href="#">${java.net.URLDecoder.decode(article?.title ?: 'Sin Título','ISO-8859-1')}</a>
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
                    <a href="#" >Ver todos los (${nest5knowledge.Article.countByCategory(category)}) Artículos<i class="fa fa-chevron-right"></i></a>
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
      %{--<aside class="sidebar col-sm-3" role="complementary">

        <section class="widget nav_menu-2 widget_nav_menu">
          <div>
            <h3>Knowledge Base</h3>
            <ul>
              <li><a href="#">Getting Started</a></li>
              <li><a href="#">Administration</a></li>
              <li><a href="#">Admin Panel</a></li>
              <li><a href="#">Extensions</a></li>
              <li><a href="#">Shipping Methods</a></li>
              <li><a href="#">Tips and Tricks</a></li>
              <li><a href="#">Troubleshooting</a></li>
              <li><a href="#">Video Tutorials</a></li>
            </ul>
          </div>
        </section>

        <section class="widget">
          <div>
            <h3>Popular Articles</h3>
            <ul>
              <li>
                <i class="fa fa-fw fa-file-text-o"></i> <a href="#" rel="bookmark" title="Permanent link to Unlimited Colors">Unlimited Colors</a>
              </li>
              <li>
                <i class="fa fa-fw fa-file-text-o"></i> <a href="#" rel="bookmark" title="Permanent link to Multiple installs on domain">Multiple installs on domain</a>
              </li>
              <li>
                <i class="fa fa-fw fa-file-text-o"></i> <a href="#" rel="bookmark" title="Permanent link to Import and Export Extension">Import and Export Extension</a>
              </li>
              <li>
                <i class="fa fa-fw fa-film"></i> <a href="#" rel="bookmark" title="Permanent link to Plugin Installation">Plugin Installation</a>
              </li>
              <li>
                <i class="fa fa-fw fa-file-text-o"></i> <a href="#" rel="bookmark" title="Permanent link to Local Server Setup">Local Server Setup</a>
              </li>
              <li>
                <i class="fa fa-fw fa-film"></i> <a href="#" rel="bookmark" title="Permanent link to Theme Installation">Theme Installation</a>
              </li>
              <li>
                <i class="fa fa-fw fa-film"></i> <a href="#" rel="bookmark" title="Permanent link to Multiple Ship to Addresses">Multiple Ship to Addresses</a>
              </li>
              <li>
                <i class="fa fa-fw fa-file-text-o"></i> <a href="#" rel="bookmark" title="Permanent link to Well Documented">Well Documented</a>
              </li>
            </ul>
          </div>
        </section>

      </aside><!-- /.sidebar -->--}%
    </div><!-- /.content -->
  </div><!-- /.wrap -->

 



  </body>
</html>
