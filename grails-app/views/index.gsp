<!DOCTYPE html>
<html lang="es">
  <head>
      <meta name="layout" content="b3knowledge"/>
      <meta charset="utf-8">
      <title>Centro de Soporte - Nest5</title>
  </head>

  <body>
  <!-- Hero Section -->
  <div id="hero" class="hero-image">
      <div class="container">

          <div class="row">
              <div class="col-sm-12">
                  <h1>Centro de Soporte - Nest5</h1>
                  <p class="subtitle">El lugar perfecto para que siempre saques el máximo provecho de Nest5, sus funcionalidades y seas más eficiente.</p>
              </div>
          </div>

          <div class="row">
              <div class="hero-box col-sm-8 col-sm-offset-2">
                  <form role="search" method="get" id="searchform" class="form-search" action="#">
                      <div class="input-group">
                          <input disabled="disabled" type="text" id="autocomplete-dynamic" name="s" id="s" class="form-control input-lg" autocomplete="off" placeholder="¿Qué quieres saber? Encuentra la Respuesta. (PRONTO)">
                          <span class="input-group-btn">
                              <input type="submit" disabled="disabled" id="searchsubmit" value="Encontrar" class="btn">
                          </span>
                      </div>
                  </form>
              </div>
          </div>

      </div>
  </div><!-- /#hero -->

  <!-- Boxes Section -->
  <div class="container">
      <div id="boxes">
          <div class="home-title">
              <h2>Bienvenido al Centro de Soporte Nest5</h2>
              <p>En este sitio aclaramos de forma rápida y eficiente tus dudas para que saques el mayor provecho de Nest5, tanto si eres empresa como si eres un usuario. Si no enceuntras solución aquí, comúnicate con nosotros.</p>        </div>
          <div class="row">
              <div class="col-sm-4">
                  <article class="box box-left">
                      <div class="circle">
                          <a href="${createLink(controller: 'category',action: 'knowledgebase')}"><span></span><i class="fa fa-file-text-o"></i></a>
                      </div>
                      <h3><a href="${createLink(controller: 'category',action: 'knowledgebase')}">Tutoriales</a></h3>
                      <p>Artículos y Tutoriales para que aprendas desde como inscribirte hasta lo más avanzado de Nest5.</p>
                      <a class="btn" href="${createLink(controller: 'category',action: 'knowledgebase')}">Continuar</a>
                  </article>
              </div>
              <div class="col-sm-4">
                  <article class="box box-middle">
                      <div class="circle">
                          <a href="#"><span></span><i class="fa fa-question-circle"></i></a>
                      </div>
                      <h3><a href="#">FAQ <span class="label label-info" style="font-size: 0.4em;">PRONTO</span></a></h3>
                      <p>Preguntas frecuentes con su inmediata respuesta sobre Nest5. Es la forma más fácil de encontrar la información que busques.</p>
                      <a class="btn" href="#">Continuar</a>
                  </article>
              </div>
              <div class="col-sm-4">
                  <article class="box box-right">
                      <div class="circle">
                          <a href="mailto:soporte@nest5.com?Subject=Soporte:%20No%20encuentro%20algo%20en%20el%Centro."><span></span><i class="fa fa-envelope-o"></i></a>
                      </div>
                      <h3><a href="mailto:soporte@nest5.com?Subject=Soporte:%20No%20encuentro%20algo%20en%20el%Centro.">Contactános</a></h3>
                      <p>¿Aún no encuentras lo que buscas? Siempre estamos ahí para tí. Escríbenos, llámanos, grítanos, es decir, ¡Como sea te ayudamos!</p>
                      <a class="btn" href="mailto:soporte@nest5.com?Subject=Soporte:%20No%20encuentro%20algo%20en%20el%Centro.">Continuar</a>
                  </article>
              </div>
          </div>
      </div>
  </div>

  <!-- Featured Articles Section -->
  %{--<div id="home-featured">
      <div class="container">
          <div class="home-title">
              <h2>Los artículos más destacados por los Usuarios</h2>
              <p>Estos tutoriales y artículos son populares entre los lectores del Centro de Soporte Nest5. Tú también puedes ayudar a los demás calificando cada artículo, pregunta o tutorial que apliques.</p>
          </div>
          <div class="row recent-posts">

              <div class="col-sm-3">
                  <article>
                      <header>
                          <h4 class="entry-title"><i class="fa fa-picture-o"></i> <a href="article.html">Responsive Design</a></h4>
                      </header>
                      <div class="entry-media">
                          <a href="article.html" title="Responsive Design">
                              <img width="870" height="490" src="${resource(dir:'bootstrap3update/assets/img',file:'responsive.jpg')}" alt="Responsive" />
                          </a>
                      </div>
                      <div class="entry-content">
                          <p>One morning, when Greg woke from troubled dreams, he found himself formed <a class="blog-more btn btn-xxs btn-primary" href="article.html">Read more</a></p>
                      </div>
                  </article>
              </div>

              <div class="col-sm-3">
                  <article>
                      <header>
                          <h4 class="entry-title"><i class="fa fa-picture-o"></i> <a href="article.html">Live Search</a></h4>
                      </header>
                      <div class="entry-media">
                          <a href="article.html" title="Live Search">
                              <img width="870" height="490" src="${resource(dir:'bootstrap3update/assets/img',file:'colors-870x490.jpg')}" alt="colors" />
                          </a>
                      </div>
                      <div class="entry-content">
                          <p>A wonderful serenity has taken possession of my entire soul, like these <a class="blog-more btn btn-xxs btn-primary" href="article.html">Read more</a></p>
                      </div>
                  </article>
              </div>

              <div class="col-sm-3">
                  <article>
                      <header>
                          <h4 class="entry-title"><i class="fa fa-film"></i> <a href="video.html">Using Custom Fields</a></h4>
                      </header>
                      <div class="entry-media fitvids">
                          <iframe src="http://player.vimeo.com/video/69712594?title=0&byline=0&portrait=0&color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                      </div>
                      <div class="entry-content">
                          <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming <a class="blog-more btn btn-xxs btn-primary" href="video.html">Read more</a></p>
                      </div>
                  </article>
              </div>

              <div class="col-sm-3">
                  <article>
                      <header>
                          <h4 class="entry-title"><i class="fa fa-film"></i> <a href="video.html">Customizing Forms</a></h4>
                      </header>
                      <div class="entry-media fitvids">
                          <iframe src="http://player.vimeo.com/video/75660130?title=0&byline=0&portrait=0&badge=0&color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                      </div>
                      <div class="entry-content">
                          <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse <a class="blog-more btn btn-xxs btn-primary" href="video.html">Read more</a></p>
                      </div>
                  </article>
              </div>

          </div>
      </div>
  </div>--}%

  <!-- Video Section -->
  <div id="home-video">
      <div class="container">
          <div class="home-title">
              <h2>Guías de Inicio Rápido</h2>
              <p>Con estos videos y tutoriales, en menos de 10 minutos tendrás tu Marca lista para registrar tus ventas, hacer inventario y cuidar a tus usuarios usando Nest5.</p>
          </div>
          <div class="row">
              <div class="col-sm-12">
                  <p>
                  <div class="fitvids">
                  <iframe width="560" height="315" src="//www.youtube.com/embed/xQdKi1p1-3I" frameborder="0" allowfullscreen></iframe>
                  </div>
              </p>
              </div>
              %{--<div class="col-sm-4">
                  <div class="box-video-list">
                      <h3>Video Tutorials</h3>
                      <ul>
                          <li><h4><i class="fa-film fa fa-fw"></i> <a href="video.html">Video Post Format</a></h4></li>
                          <li><h4><i class="fa-film fa fa-fw"></i> <a href="video.html">Multiple Ship to Addresses</a></h4></li>
                          <li><h4><i class="fa-film fa fa-fw"></i> <a href="video.html">Theme Installation</a></h4></li>
                          <li><h4><i class="fa-film fa fa-fw"></i> <a href="video.html">Plugin Installation</a></h4></li>
                          <li><h4><i class="fa-film fa fa-fw"></i> <a href="video.html">Warnings and errors</a></h4></li>
                          <li><h4><i class="fa-film fa fa-fw"></i> <a href="video.html">Rewrite configuration</a></h4></li>
                          <li><h4><i class="fa-film fa fa-fw"></i> <a href="video.html">Using Custom Fields</a></h4></li>
                          <li><h4><i class="fa-film fa fa-fw"></i> <a href="video.html">Customizing Forms</a></h4></li>
                      </ul>
                      <a class="btn-videos" href="#" title="">Ver todos los Videos<i class="icon-chevron-right"></i></a>
                  </div>
              </div>--}%
          </div>
      </div>
  </div>
  </body>
</html>
