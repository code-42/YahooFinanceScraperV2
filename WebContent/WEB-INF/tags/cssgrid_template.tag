<%@ tag language="java" pageEncoding="ISO-8859-1" %>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="content" fragment="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; ISO-8859-1">
    	<!-- reference our style sheet -->

	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />

	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login-form-style.css" />		  
		      
    <title>${title}</title>
</head>

<body>

    <header>
        <nav>
            <div class="logo">
<!--             		
	<div class=" tooltip">
		<span class="tooltiptext">
		Disclaimer: this web application is for demonstration purposes only, and not intended to be used commercially.  
		No portion of this application may be relied upon for actual market data.  
		Portions of this web application may contain proprietary information and artifacts.  
		No permission has been sought or granted to use such artifacts, and as such, may be in violation of copyright law.  
		It is up to the owners of proprietary artifacts, if any, to pursue protection of their intellectual property.    
		</span>
	</div> 
-->
            </div>
            <div class="nav2">
                <a href="${pageContext.request.contextPath}/index" class="navLinks">Home</a>
            </div>
            <div class="nav3">
            		<a href="${pageContext.request.contextPath}/login" class="navLinks">Login</a>
            </div>
            <div class="nav4">
                <a href="${pageContext.request.contextPath}/about_me" class="navLinks">About&nbsp;Me</a>
            </div>
            <div class="nav5">
            </div>
            <div class="nav6">
            </div>
            <div class="nav7">
            </div>
            <div class="nav8">
            </div>
            <div class="nav9">
            </div>
        </nav>
    </header>

    <main>
    		<jsp:invoke fragment="content"></jsp:invoke>
    </main>


    <footer>
    <p id="disclaimer">Disclaimer: this web application is for demonstration purposes only, and not intended to be used commercially.  
    	No portion of this application may be relied upon for actual market data.  
    	Portions of this web application may contain proprietary information and artifacts.  
    	No permission has been sought or granted to use such artifacts, and as such, may be in violation of copyright law.  
    	It is up to the owners of proprietary artifacts, if any, to pursue protection of their intellectual property.    
	</p>    	  
    	 
        <p id="footer">&copy; 2017-18 Edward Dupre &middot; <a href="https://code-42.github.io/my_portfolio">My Portfolio</a> &middot; <a href="#">Back to top</a></p>
    </footer>
</body>
</html>