<%@ tag language="java" pageEncoding="ISO-8859-1" %>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="content" fragment="true" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="width=device-width, initial-scale=1" name="viewport"><!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta content="" name="description">
	<meta content="" name="author"><!--<link rel="icon" href="../../favicon.ico">-->
	<!-- Latest compiled and minified CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"><!-- Optional theme -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
	<!-- <link href="css/style.css" rel="stylesheet"> -->
	<link href="css/navbar.css" rel="stylesheet" type="text/css">
	<link href="css/content.css" rel="stylesheet" type="text/css">
	<link href="css/list-style.css" rel="stylesheet" type="text/css">
	<link type="text/css" rel="stylesheet" href="css/login-form-style.css">
	<!-- <link type="text/css" rel="stylesheet" href="css/style.css"> -->
	<title>${title}</title>
</head>
<body>
		<header>
		<div class="navbar-wrapper">
			<div class="container-fluid">
				<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
					<!--<div class="container">-->
					<div class="navbar-header">
						<!-- 
						<button aria-controls="navbar" aria-expanded="false" class="navbar-toggle collapsed" data-target="#navbar" data-toggle="collapse" type="button">
							<span class="sr-only">Toggle navigation</span> 
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span></button> 
						--> 	
							<a class="active navbar-brand" href="#">Yahoo Stock Scraper</a>
					</div>
					<div class="navbar-collapse collapse" id="navbar">
						<ul class="nav navbar-nav">
							<li>
								<a href="index.jsp">Home</a>
							</li>
							<li>
								<a href="login.jsp">Login</a>
							</li>
							<li>
								<a href="aboutMe.jsp">About Me</a>
							</li>
<!-- 							
							<li class="dropdown">
								<a aria-expanded="false" aria-haspopup="true" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">About Me<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li>
										<a href="https://www.linkedin.com/in/edward-dupre-9b859b143/" target="_blank">LinkedIn</a>
									</li>
									<li>
										<a href="https://www.facebook.com" target="_blank">facebook</a>
									</li>
									<li>
										<a href="https://twitter.com/GeekyCoderr" target="_blank">twitter</a>
									</li>
									<li>
										<a href="https://github.com/code-42" target="_blank">github</a>
									</li>
									<li>
										<a href="https://ide.c9.io/code42/production" target="_blank">cloud9</a>
									</li>
									
                                        <li role="separator" class="divider"></li>
                                        <li class="dropdown-header">Nav header</li>
                                        <li><a href="#">Separated link</a></li>
                                        <li><a href="#">One more separated link</a></li>
                                   
								</ul>
							</li>
 -->	

<!-- 
							<li class="dropdown">
								<a aria-expanded="false" aria-haspopup="true" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">Projects<span class="caret"></span></a>
								<ul class="dropdown-menu">
								<li>
									<a href="https://code-42.github.io/newsapi/" target="_blank">News That You Choose</a>
								</li>
								<li>
									<a href="https://code-42.github.io/weather_app/" target="_blank">Local Weather App</a>
								</li>
									<li>
										<a href="https://code-42.github.io/random_quote_machine" target="_blank">Random Quote Machine</a>
									</li>
									<li>
										<a href="https://code-42.github.io/product_page" target="_blank">Product Landing Page</a>
									</li>
									<li>
										<a href="#tribute">A Tribute Page</a>
									</li>
									<li>
										<a href="https://code-42.github.io/survey_form/" target="_blank">ACME Survey Company</a>
									</li>
									<li>
										<a href="#NASDAQapp">My first MEAN Stack App</a>
									</li>
									<li>
										<a href="https://code-42.github.io/weather_app/" target="_blank">My Weather App</a>
									</li>
									<li><a href="http://intracitygeeks.org/careerdevs/" target="_blank">CareerDevs</a></li>
									<li><a href="https://github.com/code-42/my_portfolio" target=_"blank">My github.com</a></li>
									
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Nav header</li>
                                    <li><a href="#">Separated link</a></li>
                                    <li><a href="#">One more separated link</a></li>
                                   
								</ul>
							</li>
-->
<!-- 
							<li>
								<a href="https://bfxdata.com/orderbooks/btcusd" target="_blank" class="active">BTC/USD = </span><span class="active" id="btc"></span></a>
							</li>
-->
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>
	</div>
	<!-- 	
	<div id="wrapper">
		<div id="header">
			<a href="index.jsp">Home</a> | 
			<a href="aboutMe.jsp">About Me<a> | 
			<a href="StockControllerServlet">Stock Controller Servlet</a>
		</div>
	</div> 
	-->
<div id="content" class="container">

<jsp:invoke fragment="content"></jsp:invoke>

</div>

		<!-- FOOTER -->
		<footer>
			<p id="footer">&copy; 2017 Edward Dupre &middot; <a href="https://code-42.github.io/my_portfolio">Back to My Portfolio</a> &middot; <a href="https://github.com/code-42/my_portfolio">My Github Repo</a></p>
		</footer>
		</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
	</script> <!-- Latest compiled and minified JavaScript -->
	 
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	</script>
	<script src="script/script.js"></script>

</body>
</html>