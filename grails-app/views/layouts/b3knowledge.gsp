<%@ page import="nest5knowledge.Article" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Centro de Soporte - Nest5</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'bootstrap3update/assets/css',file:'bootstrap.min.css')}" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'bootstrap3update/assets/css',file:'font-awesome.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'bootstrap3update/assets/css',file:'style.css')}" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,300italic,500,700' rel='stylesheet' type='text/css'>
    <g:layoutHead/>
    <r:layoutResources />
</head>

<body class="">

<!-- Navbar -->

<header class="banner navbar navbar-static-top" role="banner">
    <div class="container">

        <div class="navbar-header">

            <div class="navbar-brand">
                <a title="KnowledgePress" href="${createLink(uri: '/')}"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/letras_nest5_90x90.png" alt="Centro de Soporte Nest5 - Inicio"/></a> <span class="label label-warning">Alpha</span>
            </div>

            <button data-target=".nav-responsive" data-toggle="collapse" type="button" class="navbar-toggle">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>

        <nav class="nav-main hidden-xs" role="navigation">
            <ul id="menu-main" class="nav navbar-nav">
                <li class="active dropdown">
                    <a class="dropdown-toggle" data-target="#" href="${createLink(uri: '/')}">Inicio</a>
                </li>
                <li><a href="${createLink(controller: 'category',action: 'knowledgebase')}">Tutoriales</a></li>
                <li><a href="#">Artículos</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-target="#" href="#">FAQ</a>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-target="#" href="#">Otros Recursos</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Contáctanos</a></li>
                        <li><a href="#">Info. General</a></li>
                        <li><a href="#">Videos</a></li>
                        <li><a href="#">Audios</a></li>
                        %{--<li><a href="typography.html">Typography</a></li>
                        <li><a href="videos.html">Responsive Videos</a></li>--}%
                    </ul>
                </li>
            </ul>
        </nav>

        <!-- Responsive Nav -->
        <div class="visible-xs">
            <nav class="nav-responsive collapse" role="navigation">
                <ul class="nav">
                    <li><a href="${createLink(uri: '/')}">Inicio</a></li>
                    <li><a href="${createLink(controller: 'category',action: 'knowledgebase')}">Tutoriales</a></li>
                    <li><a href="#">Artículos</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Otros Recursos</a></li>
                    <li><a class="responsive-submenu" href="#">Contáctanos</a></li>
                    <li><a class="responsive-submenu" href="#">Info. General</a></li>
                    <li><a class="responsive-submenu" href="#">Videos</a></li>
                    <li><a class="responsive-submenu" href="#">Audios</a></li>
                </ul>
            </nav>
        </div>

    </div>
</header>
<g:layoutBody/>
<!-- Footer Widgets -->
<footer>
    <div class="footer-widgets">
        <div class="container">
            <div class="row">

                <section class="col-sm-3">
                    <div>
                        <h3>Artículos Recientes</h3>
                        <ul>
                            <%
                                def articulos = Article.list([max: 10]).sort {it.date}
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

                <section class="col-sm-3">
                    <div>
                        <h3>Artículos Populares</h3>
                        <ul>
                            <li>
                                <div class="fade in alert alert-info">
                                    <i class="fa fa-fw fa-exclamation-triangle"></i>
                                    Vuelve pronto y esto estará con contenido.
                                </div>
                            </li>
                        </ul>
                    </div>
                </section>

                <section class="col-sm-3">
                    <div>
                        <h3>Artículos Más Votados</h3>
                        <ul>
                            <li>
                                <div class="fade in alert alert-info">
                                    <i class="fa fa-fw fa-exclamation-triangle"></i>
                                    Vuelve pronto y esto estará con contenido.
                                </div>
                            </li>
                        </ul>
                    </div>
                </section>

                <section class="col-sm-3">
                    <div>
                        <h3>Artículos Más Valiosos</h3>
                        <ul>
                            <li>
                                <div class="fade in alert alert-info">
                                    <i class="fa fa-fw fa-exclamation-triangle"></i>
                                    Vuelve pronto y esto estará con contenido.
                                </div>
                            </li>
                        </ul>
                    </div>
                </section>

            </div>
        </div>
    </div>

    <!-- Footer Info -->
    <div class="footer-info">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="social-icons">
                        <li class="btn-social btn-twitter">
                            <a href="http://twitter.com/nest5_oficial"><img src="${resource(dir:'bootstrap3update/assets/img/social/white',file:'icons_twitter.png')}" alt="Twitter" />
                            </a>
                        </li>
                        <li class="btn-social btn-facebook">
                            <a href="http://facebook.com/nest5Oficial"><img src="${resource(dir:'bootstrap3update/assets/img/social/white',file:'icons_facebook.png')}" alt="Facebook" />
                            </a>
                        </li>


                        <li class="btn-social btn-vimeo">
                            <a href="http://vimeo.com/nest5"><img src="${resource(dir:'bootstrap3update/assets/img/social/white',file:'icons_vimeo.png')}" alt="Vimeo" />
                            </a>
                        </li>
                        <li class="btn-social btn-youtube">
                            <a href="http://youtube.com/nest5_oficial"><img src="${resource(dir:'bootstrap3update/assets/img/social/white',file:'icons_youtube.png')}" alt="YouTube" />
                            </a>
                        </li>

                    </ul>
                    <p class="copyright">&copy; Copyright 2013 - 2014 Nest5&reg;.</p>
                </div>
            </div>
        </div>
    </div>

</footer>

<!-- Javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${resource(dir:'bootstrap3update/assets/js',file:'jquery-2.1.0.min.js')}"></script>
<script src="${resource(dir:'bootstrap3update/assets/js',file:'bootstrap.min.js')}"></script>

<script type="text/javascript" src="${resource(dir:'bootstrap3update/assets/js',file:'jquery.autocomplete.js')}"></script>
<script type="text/javascript" src="${resource(dir:'bootstrap3update/assets/js',file:'jquery.backstretch.min.js')}"></script>
<script type="text/javascript" src="${resource(dir:'bootstrap3update/assets/js',file:'jquery.fitvids.js')}"></script>
<script type="text/javascript" src="${resource(dir:'bootstrap3update/assets/js',file:'application.js')}"></script>
<r:layoutResources />
</body>
</html>
