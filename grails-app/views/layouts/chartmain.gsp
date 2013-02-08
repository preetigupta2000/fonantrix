<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html manifest="cache.appcache"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Fonantrix Solutions</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0; maximum-scale=1.0;">
		<meta name="apple-mobile-web-app-capable" content="yes" />
		
		<meta name="description" content="Web Site, 2013">
		<meta name="author" content="Fonantrix Solutions LLP">
				
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
        <!-- iPhone ICON-->
        <link rel="apple-touch-icon" sizes="57x57" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}" />

        <!-- iPad ICON-->
        <link  rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'ipad-touch-icon.png')}" />
        <!-- iPad (Retina) ICON-->
        <link  rel="apple-touch-icon" sizes="144x144" href="${resource(dir: 'images', file: 'ipad-touch-icon-retina.png')}" />
                    
		<g:if test="${direction == 'rtl'}">
		    <link rel="stylesheet" href="${resource(dir: 'css/less', file: 'custom-bootstrap-rtl.css')}" type="text/css">
		</g:if>
		<g:else>
			<link rel="stylesheet" href="${resource(dir: 'css/less', file: 'custom-bootstrap.css')}" type="text/css">
		</g:else>
		
	    <g:layoutHead/>	    
		<r:layoutResources/>
		
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<!--  Not Required as became depends on pages css r:require modules="corestyles"/ -->
		<r:require modules="chartjs"/>
      
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body dir="${direction}">
		<div id="wrapper" class="clearfix">
			<g:render template="/layout-helpers/header"/>
			
			<g:layoutBody/>
			
			<g:render template="/layout-helpers/footer"/>
		</div> <!-- /wrapper -->
		<r:layoutResources />
	</body>
</html>