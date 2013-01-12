<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="layout" content="main">
  </head>

<body>
	<div id="page-title">
		
		<h1><fon:message type="text" url="admin" code="casestudy.site.heading" /></h1>
		<p><fon:message type="textarea" url="admin" code="casestudy.site.note" /></p>
		
	</div> <!-- /page-title -->

	<div id="content">
		
		<div class="container">
			
			<div class="row">
				
				<div class="grid-6 casestudy">
					
					<h2><span class="slash">//</span> <fon:message type="text" url="admin" code="casestudy.site.study1.heading" /></h2>
					
					<p><fon:message type="textarea" url="admin" code="casestudy.site.study1.note" /></p>
					
					<p><fon:message type="textarea" url="admin" code="casestudy.site.study1.note.detail" />:</p>
					<ul>
						<li><fon:message type="text" url="admin" code="casestudy.site.study1.note.detail.bullet1" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study1.note.detail.bullet2" /></li>
					</ul>
					<P><fon:message type="textarea" url="admin" code="casestudy.site.study1.description" /></p>
					<img src="${resource(dir: 'images', file: 'BEM.png')}" alt="" />
					<p><fon:message type="text" url="admin" code="casestudy.site.technology.head" /></p>
					<ul>
						<li><fon:message type="text" url="admin" code="casestudy.site.study1.technology1" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study1.technology2" /></li>
					</ul>
				</div> <!-- /grid-6 -->
				
				
				<div class="grid-6 casestudy">
					
					<h2><span class="slash">//</span> <fon:message type="text" url="admin" code="casestudy.site.study2.heading" /></h2>
					
					<p><fon:message type="textarea" url="admin" code="casestudy.site.study2.note" /></p>
					
					<p><fon:message type="textarea" url="admin" code="casestudy.site.study2.note.detail" /> :</p>
					<ul> 
						<li><fon:message type="text" url="admin" code="casestudy.site.study2.note.detail.bullet1" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study2.note.detail.bullet2" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study2.note.detail.bullet3" /></li>
					</ul>
					<img src="${resource(dir: 'images', file: 'ReportDashboards.png')}" alt="" />
					<p><fon:message type="text" url="admin" code="casestudy.site.technology.head" /></p>
					<ul>
						<li><fon:message type="text" url="admin" code="casestudy.site.study2.technology1" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study2.technology2" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study2.technology3" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study2.technology4" /></li>
					</ul>
				
				</div> <!-- /grid-6 -->
				
			</div> <!-- /row -->
			
			<hr class="row-divider" />
			
			<div class="row">
				
				<div class="grid-6 casestudy">
					
					<h2><span class="slash">//</span> <fon:message type="text" url="admin" code="casestudy.site.study3.heading" /></h2>
					
					<p><fon:message type="textarea" url="admin" code="casestudy.site.study3.note" /></p>
					
					<p><fon:message type="text" url="admin" code="casestudy.site.study3.note.head1" /> :</p>
					<ul>
						<li><fon:message type="textarea" url="admin" code="casestudy.site.study3.note.head1.bullet1" /></li>
						<li><fon:message type="textarea" url="admin" code="casestudy.site.study3.note.head1.bullet2" /></li>
					</ul>
					<p><fon:message type="text" url="admin" code="casestudy.site.study3.note.head2" /> :</p>
					<ul>
						<li><fon:message type="text" url="admin" code="casestudy.site.study3.note.head2.bullet1" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study3.note.head2.bullet2" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study3.note.head2.bullet3" /></li>
						<li><fon:message type="text" url="admin" code="casestudy.site.study3.note.head2.bullet4" /></li>
					</ul>					
					<img src="${resource(dir: 'images', file: 'cal.png')}" alt="" />
					<ul> 
						<li><g:message code="casestudy.site.technology.head" /></li>
						<ul>
							<li><fon:message type="text" url="admin" code="casestudy.site.study3.technology1" /></li>
							<li><fon:message type="text" url="admin" code="casestudy.site.study3.technology2" /></li>
							<li><fon:message type="text" url="admin" code="casestudy.site.study3.technology3" /></li>
							<li><fon:message type="text" url="admin" code="casestudy.site.study3.technology4" /></li>
						</ul>
					</ul>
				</div> <!-- /grid-6 -->
				
				
				<div class="grid-6 casestudy">
				
				</div> <!-- /grid-6 -->
				
			</div> <!-- /row -->			
			
		
		</div> <!-- /container -->
	</div> <!-- /content -->	
	<script>
		$('#main-nav li').removeClass("active");
		$('#main-nav li::nth-child(6)').not(".language").addClass("active");
		$('.editable').editable();
	</script>		
  </body>
</html>
