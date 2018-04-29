<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %> --%>
<%-- <%@ taglib prefix="f" uri="/WEB-INF/functions.tld" %> --%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>    
<mt:cssgrid_template title="Home page">
	<jsp:attribute name="content">
		<content class="container">
            <div class="item1">
            </div>
            <div class="item2">
            </div>
            <div class="item3">
				<h1>Yahoo Finance Scraper</h1>
			
				<article class="my-article">
					<p>
					This is my CareerDevs web scraper assignment for demonstrating basic principles of web scraping.  Using a made up Yahoo Finance
					portfolio of 10 stocks, I employ Selenium Web Driver and various Java, Spring and JSTL technologies and libraries to scrape data from Yahoo Finance.
					I try to implement an adaptation of Observer and State Design Patterns, adapted from the online pdf 
					Design Patterns - Elements of Reusable Object-oriented Software, by Gang of Four, 1994.
					</p>
					<p>
					My homepage design started as a JSTL single page template, but I added a Bootstrap nav bar.  
					The login dialog box loads in a popup window, and it loads content from a MySQL database.  
					</p>
				</article>  

			</div>
			<div class="item4">
				<%-- <form action="${pageContext.request.contextPath}/stock/list" method="POST"> --%>
				<form action="getWebDriver" method="POST">
					<input type="hidden" name="command" value="LAUNCHER" />
			        <input type="submit" value="Launch the Yahoo Finance Scraper App" class="launcher" />
			    </form>
            </div>
            <div class="item5">
            </div>
            <div class="item6">
            </div>
            <div class="item7">
            </div>
            <div class="item8">
            </div>
            <div class="item9">
            </div>
        </content>
		<style>
			.container {
			    display: grid;
			    grid-template-columns: repeat(9, 1fr);
			    grid-template-rows: 3;
			    grid-gap: 1em;
			    align-items: center;
			    text-align: left;
			    border-bottom: 1px solid black;
			}
			
			content {
			    display: grid;
			    grid-template-columns: repeat(9, 1fr);
			    grid-template-rows: 3;
			    grid-gap: 1em;
			    align-items: center;
			    text-align: center;
			    border-bottom: 1px solid black;
			}
			
			.item1 {
			    grid-column: 1;
			}
			
			.item2 {
			    grid-column: 2;
			}
			
			.item3 {
			    grid-column: 3 / 8;
			}
			
			.item4 {
			    grid-column: 3 / 8;
			    align-items: center;
			    text-align: center;
			    }
			    
			.item4_link {
			    font-family: 'Ubuntu', sans-serif;
			    font-size: 36px;
			    font-weight: 600;
			    text-transform: uppercase;
			    text-decoration: none;
			    color: green;
			}
			.item4_link:hover {
			    color: green;
			    font-weight: 500;
			}
			
			.item5 {
			    grid-column: 5;
			}
			
			.item9 {
			    grid-column: 9;
			}
			
			.launcher {
				display: inline-block;
			    font-family: 'Ubuntu', sans-serif;
			    font-size: 1.6em;
			    font-weight: 400;
			    text-transform: uppercase;
			    text-decoration: none;
			    color: #e3deee;
			    background-color: #400098;
			}
			
			.launcher:hover {
			    color: #0df400;
			    font-weight: 400;
			}
	</style>
	</jsp:attribute>
  
</mt:cssgrid_template>  
