<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Stocks</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>YFS - Yahoo Finance Scraper</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>Today's Date</th>
					<th>Current Market Value</th>
					<th>Today's Gain</th>
					<th>Total Gain</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempTotals" items="${totals}">
				
					<tr>
						<td> ${tempTotals.todaysDate} </td>
						<td> ${tempTotals.currentMarketValue} </td>
						<td> ${tempTotals.dayGain} </td>
						<td> ${tempTotals.totalGain} </td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>

<img src="${pageContext.request.contextPath}/resources/images/spring-logo.png">		

</body>

</html>









