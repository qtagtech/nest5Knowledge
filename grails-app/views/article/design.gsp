<!DOCTYPE html>
<html lang="en">
  <head>
      <meta name="layout" content="b3knowledge"/>
      <meta charset="ISO-8859-1">
      <r:require modules="ckeditor,base64" />
  </head>

  <body class="article">
    <!-- Paga title -->
    <div class="main-header">
      <div class="container">
        <div class="row">
          <div class="col-sm-8 col-lg-8">
            <h1>${user?.name}</h1>
            <p class="tagline">Diseña y Edita el Artículo: ${articleInstance?.title ?: 'Sin Título'}</p>
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
        <div class="main col-sm-9" role="main">

          <article class="post hentry">
            <header>
              <h1 class="entry-title" contenteditable="true">${articleInstance?.title ?: 'Título del Artículo'}</h1>
            </header>
            <div id="article-content">
                <div class="featured-media" contenteditable="true">
                  <img width="870" height="490" src="${resource(dir:'bootstrap3update/assets/img',file:'responsive.png')}" alt="Centro de Soporte Nest5" />
                </div>
                <div class="entry-content">
                  <p contenteditable="true">${articleInstance?.content ?: 'How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! &#8220;Now fax quiz Jack! &#8221; my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. The jay, pig, fox, dog, and my wolves quack! Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch &#8220;Jeopardy! &#8220;, Alex Trebek&#8217;s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just'}</p>
                </div>
            </div>
              <form name="article-form" action="${createLink(controller: 'article',action: 'save')}">
                  <input type="hidden" name="title" value="${articleInstance?.title}" />
                  <input type="hidden" name="content" value="${articleInstance?.content}" />
                  <input type="hidden" name="hits" value="${articleInstance?.hits}" />
                  <input type="hidden" name="rating" value="${articleInstance?.rating}" />
                  <input type="hidden" name="votes" value="${articleInstance?.votes}" />
                  <input type="hidden" name="url" value="${articleInstance?.url}" />
                  <input type="hidden" name="category.id" value="${articleInstance?.category?.id}" />
                  <input type="hidden" name="type.id" value="${articleInstance?.type?.id}" />
                  <input type="hidden" name="date_day" value="${fecha?.day}" />
                  <input type="hidden" name="date_month" value="${fecha?.month}" />
                  <input type="hidden" name="date_year" value="${fecha?.year}" />
                  <a href="#" target="_self" class="btn btn-primary btn-lg" id="submitform">Guardar</a>
              </form>
            %{--
            <footer>
              <time class="updated" datetime="2012-11-05T20:30:07+00:00" pubdate>Last Updated: 1 year ago</time>
              <p class="byline author vcard">By <a href="#" rel="author" class="fn">John Smith</a></p>
            </footer>
            <div id="author-box" class="clearfix">
              <div class="author-box-image">
                <img alt='' src='http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&f=y' class='avatar pull-left media-object avatar-72 photo' height='72' width='72' />        </div><!-- /.author-box-image -->
                <h4 class="author-box-name">John</h4>
                <div class="author-box-description">
                  <p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc.</p>
                </div><!-- /.author-box-description -->
                <p class="author-links">
                  <i class="icon-user"></i> <a class="author-link author-posts-url" href="#" title="John Posts">Posts</a>
                  &nbsp;<i class="icon-globe"></i> <a class="author-link author-url" href="#" title="Website" target="_blank" rel="author">Website</a>
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
              </section><!-- /#respond -->--}%
            </article>

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

        </aside>--}%<!-- /.sidebar -->
      </div><!-- /.content -->
    </div><!-- /.wrap -->

 
   <r:script>
   $(document).ready(function(){
       $('form').on('click','#submitform',function(e){
           e.preventDefault();
           var title = encodeURI(GetContents());
           var content = encodeURI(GetContents(3));
           var image = encodeURI(GetContents(1));
           var complete = image+"----------//////////----------"+content;
           $("[name='title']").val(title);
           $("[name='content']").val(complete);

           $("[name='article-form']").submit();
       });

   });

   function GetContents(ins) {
       // Get the editor instance that you want to interact with.
       switch (ins){
           case 1: var editor = CKEDITOR.instances.editor1;  //imagen
               break;
           case 2: var editor = CKEDITOR.instances.editor2;   // titulo
               break;
           case 3: var editor = CKEDITOR.instances.editor3;  // contenido
               break;
           default : var editor = CKEDITOR.instances.editor2; //titulo
       }


       // Get editor contents
       // http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-getData
       return editor.getData();
   }

   </r:script>

  </body>
</html>
