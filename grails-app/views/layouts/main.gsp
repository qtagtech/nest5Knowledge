<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">


        <!-- Le styles -->
        <link href="${resource(dir: 'assets/css', file: 'bootstrap.css')}" rel="stylesheet">
        <link href="${resource(dir: 'assets/css', file: 'bootstrap-responsive.css')}" rel="stylesheet">
        <link href="${resource(dir: 'assets/css', file: 'font-awesome.min.css')}" rel="stylesheet">
        <link href="${resource(dir: 'assets/css', file: 'style.css')}" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800' rel='stylesheet' type='text/css'>

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>

          <script src="${resource(dir: 'assets/js', file: 'html5shiv.js')}"></script>
        <![endif]-->


		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
    <!-- NAVBAR
    ================================================== -->

    <div class="banner navbar navbar-static-top navbar-inverse">
        <div class="navbar-inner">
            <div class="container">

                <a class="brand" href="${createLink(uri: '/')}"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/letras_nest5_90x90.png"></a>

                <!-- Responsive Navbar -->
                <div id="nav-main">
                    <ul id="menu" class="nav">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="knowledge-base.html">Knowledge Base</a></li>
                        <li><a href="articles.html">Articles</a></li>
                        <li><a href="faq.html">Faq</a></li>
                        <li><a href="features.html">Features</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <ul class="dropdown-menu">
                                <li><a href="contact.html">Contact</a></li>
                                <li><a href="full.html">Full</a></li>
                            </ul>
                        </li>
                        <!-- Read about Bootstrap dropdowns at http://twitter.github.com/bootstrap/javascript.html#dropdowns -->
                    </ul>
                </div><!--/.nav-collapse -->

            </div> <!-- /.container -->
        </div><!-- /.navbar-inner -->
    </div><!-- /.navbar -->


		<g:layoutBody/>


    <!-- FOOTER -->
    <footer>
    <div class="main-footer">
        <div class="container">
            <div class="row">
                <!-- Widgets -->
                <section class="span3">
                    <h4>Latest Articles</h4>
                    <ul>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Unlimited Color Settings</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Import and Export Feature</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Easy Plugin Installation</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Local Server Setup Guide</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Dashboard Theme Installation</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Multiple Addresses Setup</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Well Documented Theme</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Unlimited Color Settings</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Import and Export Feature</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Easy Plugin Installation</a>
                        </li>
                        <li>
                    </ul>
                </section>

                <section class="span3">
                    <h4>Popular Articles</h4>
                    <ul>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Unlimited Color Settings</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Import and Export Feature</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Easy Plugin Installation</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Local Server Setup Guide</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Dashboard Theme Installation</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Multiple Addresses Setup</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Well Documented Theme</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Unlimited Color Settings</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Import and Export Feature</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Easy Plugin Installation</a>
                        </li>
                        <li>
                    </ul>
                </section>

                <section class="span3">
                    <h4>Frequent Questions</h4>
                    <ul>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Unlimited Color Settings</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Import and Export Feature</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Easy Plugin Installation</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Local Server Setup Guide</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Dashboard Theme Installation</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Multiple Addresses Setup</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Well Documented Theme</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Unlimited Color Settings</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Import and Export Feature</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Easy Plugin Installation</a>
                        </li>
                        <li>
                    </ul>
                </section>

                <section class="span3">
                    <h4>Latest Articles</h4>
                    <ul>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Unlimited Color Settings</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Import and Export Feature</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Easy Plugin Installation</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Local Server Setup Guide</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Dashboard Theme Installation</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Multiple Addresses Setup</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Well Documented Theme</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Unlimited Color Settings</a>
                        </li>
                        <li>
                            <i class="icon-file"></i> <a href="article.html" title="">Import and Export Feature</a>
                        </li>
                        <li>
                            <i class="icon-film"></i> <a href="article.html" title="">Easy Plugin Installation</a>
                        </li>
                        <li>
                    </ul>
                </section>

            </div>
        </div>
    </div>
    <!-- Sub footer -->
    <div class="sub-footer">
        <div class="container">
            <div id="social-icons">
                <ul>
                    <li class="social-icon twitter">
                        <a class="fade-img" href="#" target="_blank" rel="tooltip" title="Twitter">
                            <img src="${resource(dir: 'assets/img/social', file: 'icons_twitter.png')}" alt="Twitter" />
                        </a>
                    </li>
                    <li class="social-icon facebook">
                        <a class="fade-img" href="#" target="_blank" rel="tooltip" title="Facebook">
                            <img src="${resource(dir: 'assets/img/social', file: 'icons_facebook.png')}" alt="Facebook" />
                        </a>
                    </li>
                    <li class="social-icon gplus">
                        <a class="fade-img" href="#" target="_blank" rel="tooltip" title="Google+">
                            <img src="${resource(dir: 'assets/img/social', file: 'icons_google.png')}" />
                        </a>
                    </li>
                    <li class="social-icon vimeo">
                        <a class="fade-img" href="#" target="_blank" rel="tooltip" title="Vimeo">
                            <img src="${resource(dir: 'assets/img/social', file: 'icons_vimeo.png')}" alt="Vimeo" />
                        </a>
                    </li>
                    <li class="social-icon youtube">
                        <a class="fade-img" href="#" target="_blank" rel="tooltip" title="YouTube">
                            <img src="${resource(dir: 'assets/img/social', file: 'icons_youtube.png')}" />
                        </a>
                    </li>
                    <li class="social-icon linkedin">
                        <a class="fade-img" href="#" target="_blank" rel="tooltip" title="LindekIn">
                            <img src="${resource(dir: 'assets/img/social', file: 'icons_linkedin.png')}" alt="LindekIn" />
                        </a>
                    </li>
                    <li class="social-icon pinterest">
                        <a class="fade-img" href="#" target="_blank" rel="tooltip" title="Pinterest">
                            <img src="${resource(dir: 'assets/img/social', file: 'icons_pinterest.png')}" alt="Pinterest" />
                        </a>
                    </li>
                </ul>
            </div>
            <div class="copyright-text">Copyright Nest5 by Qtag Technologies S.A.S 2013. </a>
            </div>
        </div>
    </div>
    </footer>

        <!-- Javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/bootstrap-transition.js"></script>
        <script src="assets/js/bootstrap-alert.js"></script>
        <script src="assets/js/bootstrap-modal.js"></script>
        <script src="assets/js/bootstrap-dropdown.js"></script>
        <script src="assets/js/bootstrap-tab.js"></script>
        <script src="assets/js/bootstrap-tooltip.js"></script>
        <script src="assets/js/bootstrap-popover.js"></script>
        <script src="assets/js/bootstrap-button.js"></script>
        <script src="assets/js/bootstrap-collapse.js"></script>
        <script src="assets/js/bootstrap-carousel.js"></script>


        <script type="text/javascript" src="assets/js/jquery.autocomplete.js"></script>
        <script type="text/javascript" src="assets/js/jquery.fitvids.js"></script>
        <script type="text/javascript" src="assets/js/application.js"></script>
        <script src="assets/js/holder/holder.js"></script>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
