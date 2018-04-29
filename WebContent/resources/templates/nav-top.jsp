
<head>
	<meta content="This is a single page site. Use page reader friendly tags." name="description">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="width=device-width, initial-scale=1" name="viewport"><!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<!-- Latest compiled and minified CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"><!-- Optional theme -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
	
	<link href="${pageContext.request.contextPath}/css/navbar.css" rel="stylesheet"><!-- <header and footer> css  -->
	<link href="${pageContext.request.contextPath}/css/content.css" rel="stylesheet"><!-- content css  -->
	<title>Yahoo Finance Scraper</title><!-- Bootstrap -->
	<!--<link href="css/bootstrap.min.css" rel="stylesheet">-->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!--<div class="page-wrapper">-->
	<header>
		<div class="navbar-wrapper">
			<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<button aria-expanded="false" class="navbar-toggle collapsed" data-target="#navbar" data-toggle="collapse" type="button"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button> <a class="navbar-brand" href="#"><strong>Algos <span class="reversed">'R'</span> Us</strong></a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav">
							<li class="active">
								<a href="#">Home</a>
							</li>
							<!--<li><a href="#">Page 1</a></li>-->
							<!--<li><a href="#">Page 2</a></li>-->
							<!--<li><a href="#">Page 3</a></li>-->
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="login.jsp" target="popup" onclick="window.open('login.jsp', 'popup', 'width=600,height=300'); return false;">Login</a>
							</li>
							<li>
								<a href="#register">Register</a>
							</li>
							<!-- 
							<li>
								<a href="#pricing">Pricing</a>
							</li>
							<li>
								<a href="#info">More Information</a>
							</li>
 							-->							
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
