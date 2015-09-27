<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.fittext.js"></script>
<script src="js/wow.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/creative.js"></script>

<nav id="mainNav" class="navbar navbar-default navbar-fixed-top" role="navigator">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand page-scroll" href="index.jsp#page-top">Nest归巢</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a class="page-scroll" href="index.jsp#about">About</a></li>
				<li><a class="page-scroll" href="index.jsp#services">Services</a></li>
				<li><a class="page-scroll" href="index.jsp#portfolio">Portfolio</a></li>
				<li><a class="page-scroll" href="index.jsp#contact">Contact</a></li>
				<!-- Modified -->
				<li><a href="UserSignUpInit" class="page-scroll"><s:property value="getText('global.signUp')" /></a></li>
				<li><a href="EventListInit" class="page-scroll"><s:property value="getText('global.reserve')" /></a></li>
				<li><a href="AdminInit" class="page-scroll"><s:property value="getText('global.administrate')" /></a></li>
				<li><a href="ChangeLocale?request_locale=zh_CN" class="page-scroll">中文</a></li>
				<li><a href="ChangeLocale?request_locale=en_US" class="page-scroll">English</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>