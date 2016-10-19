<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<!DOCTYPE HTML>
<html dir="ltr" lang="en-US">
<head>
    <meta name="layout" content="ajax"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Error | ${orgNameLong}</title>
    <link rel="shortcut icon" href="${request.contextPath}/images/tepapa/favicon.ico" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <r:require modules="tepapa" />
    <!-- Start vslider -->
    <script type="text/javascript" src="http://www.ala.org.au/wp-content/themes/ala2011/scripts/s3slider.js"></script>
    <script type="text/javascript" src="http://www.ala.org.au/wp-content/themes/ala2011/scripts/vslider.js"></script>
    <script type="text/javascript">
        /*** vslider Init ***/
        jQuery.noConflict();
        jQuery(document).ready(function(){
            jQuery('ul#sliderbody').innerfade({
                animationtype: 'fade',
                speed: 1000,
                timeout: 5000,
                type: 'sequence'
            });

            jQuery('#explore-here').click(function(el){
                window.location = jQuery(this).data('link');
            });
        });
    </script>
    <!-- End vslider -->
    <style type="text/css">
    #homepage-text {
        font-size: 14px;
    }
    </style>
</head>

<body class="home">

<nav>
    <div class="inner">
        <ul id="nav-site">
            <li class="selected"><a href="${request.contextPath}/">Home</a></li>
            <li><a href="${request.contextPath}/help/about.html">About</a></li>
            <li><a href="${request.contextPath}/help/termsOfUse.html">Terms of use</a></li>
            <li><a href="${request.contextPath}/help/help.html">Help</a></li>
            <li class="${(section=='search')?'selected':''}"><a href="${request.contextPath}/search">Search</a></li>
            <li><a href="${request.contextPath}/help/news.html">News</a></li>
        </ul>
        <ul id="nav-user" style="display: none;">
            <li><a href="http://www.ala.org.au/my-profile/" title="My profile">My profile</a></li>
            <li class="last"><a href="https://auth.ala.org.au/cas/login?service=http://www.ala.org.au/wp-login.php?redirect_to=http://www.ala.org.au/my-profile/">Log in</a></li>
        </ul>
    </div>
</nav>
<div class="errors">
    <h1>
        An error occurred:
    </h1>
    <ul class="errors">
        <g:renderException exception="${exception}" />
    <ul>
</div>
<footer>
    <div class="inner">
        <section class="copyright">
            <div class="img-left"><a href="http://creativecommons.org/licenses/by/3.0/nz/"
                                     title="External link to Creative Commons"><img
                        src="http://www.ala.org.au/wp-content/themes/ala2011/images/creativecommons.png" width="88"
                        height="31" alt=""/></a></div>
            <p><a href="${request.contextPath}/help/termsOfUse" title="Terms of Use">Terms of Use</a> |
                <a href="${request.contextPath}/help/contactTepapa">Contact</a><br/>This site is licensed under
            a <a href="http://creativecommons.org/licenses/by/3.0/nz/" title="External link to Creative Commons"
                 class="external">Creative Commons Attribution 3.0 New Zealand License</a>.</p>

            <div class="img-right"><a href="http://www.ala.org.au" title="Atlas of Living Australia"><img
                    src="http://www.ala.org.au/wp-content/themes/ala2011/images/poweredby-ala.png" width="178"
                    height="62" alt=""/></a></div>
        </section>
    </div>
</footer>
<%--<script type="text/javascript">--%>
<%--var uvOptions = {};--%>
<%--(function() {--%>
<%--var uv = document.createElement('script'); uv.type = 'text/javascript'; uv.async = true;--%>
<%--uv.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'widget.uservoice.com/5XG4VblqrwiubphT3ktPQ.js';--%>
<%--var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(uv, s);--%>
<%--})();--%>
<%--</script>--%>
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    var pageTracker = _gat._getTracker("UA-4355440-1");
    pageTracker._initData();
    pageTracker._trackPageview();
</script>
</body>
</html> 
