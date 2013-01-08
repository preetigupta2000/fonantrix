<!-- Top  Navbar for logo, brand, menu, and language selection -->
<div id="header">
	<div class="container">		
		<h1 id="title">
			<a href="home">
				Fonantrix
			</a>			
		</h1>
	</div> <!-- /container -->
</div> <!-- /header -->	

<div id="nav" class="clearfix">
	<div class="container">
		<ul id="main-nav">
			<li class="active">
				<a href="home"><g:message code="header.site.home" /></a>
			</li>			
			<li>
				<a href="about"><g:message code="header.site.about" /></a>
			</li>
			<li>
				<a href="services"><g:message code="header.site.services" /></a>
			</li>
			<li>
				<a href="product"><g:message code="header.site.products" /></a>
			</li>
			<!--  li>
				<a href="faq">Faq</a>
			</li -->
			<li>
				<a href="contact"><g:message code="header.site.contact" /></a>
			</li>
			<li>
				<a href="casestudy"><g:message code="header.site.casestudies" /></a>
			</li>
	        <li class="dropdown hidden-phone">
	           <a class="dropdown-toggle" href="#" data-toggle="dropdown"><g:message code="header.site.signin" /><span class="caret"></span></a>
	           <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
	           <sec:ifNotLoggedIn>
					<form action="${request.contextPath}/j_spring_security_check" method='POST' id='ajaxLoginForm' name='ajaxLoginForm'>
					  <input id="username" type="email" name="j_username" size="30" placeholder="Username" />
					  <input id="j_password" type="password" name="j_password" size="30" placeholder="Password" />					
					  <a href="javascript:{}" onclick="document.getElementById('ajaxLoginForm').submit();" type="submit" name="commit" class="btn btn-primary btn-warning"><fon:message code="header.site.signin"/></a>
					</form>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<div id="user-info">
							<div class="icon">
								<i class="icon-user"></i>
							</div>
							<div class="info">
								<p><strong>${sec.username()}</strong></p>
								<p><small>${sec.username()}</small></p>
							</div>	
					</div>
					<a href="logout" class="btn btn-primary btn-warning"><fon:message code="header.site.logout"/></a>			
				</sec:ifLoggedIn>
	           </div>
	        </li> 			
			<li class="dropdown">
				<a href="javascript:;" data-toggle="dropdown">
					<i class="icon-cog"></i>
					<span class="caret"></span>
				</a>			
				<ul class="dropdown-menu">
		        	<li class="language"><a href="?lang=en">English</a></li>
		            <li class="language"><a href="?lang=ar">Arabic</a></li>
		            <li class="language"><a href="?lang=ja">Japanese</a></li>                       
	        	</ul>
	        </li>       
		</ul>
	</div> <!-- /container -->
</div> <!-- /nav -->