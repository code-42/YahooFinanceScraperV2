<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.DateFormat.*" %>
<%@ page import="java.text.ParseException.*" %>
<%@ page import="java.text.SimpleDateFormat.*" %>
<%@ page import="java.util.Date.*" %>

<mt:cssgrid_template title="Yahoo Finance Scraper">
	<jsp:attribute name="content">
		
	<content class="container">
 		
			<div class="item1">
		     </div>
		     <div class="item2">
		     </div>
		     <div class="item3">
					<!-- table below shows daily totals -->
					<h2>Yahoo Stock Watchlist</h2><span>${message}</span>
					<table>
						<thead style="display:table-header-group">
							<tr class="yahoo_color">
								<th align="right">Todays Date and Time</th>
								<th align="right">Current Market Value $</th>
								<th align="right">Today's Gain $</th>
								<th align="right" style="padding-right:8px">Total Gain $</th>
							</tr>
						</thead>
						<c:forEach var="tempData" items="${DATA_LIST}" varStatus="status">
					
						<!-- set up a link for each stock -->
						<%--  					<c:url var="tempLink" value="StockControllerServlet">
						 						<c:param name="command" value="LOAD" />
						 						<c:param name="id" value="${tempTotal.id}" />
						 					</c:url> --%>
						
						<!-- display the totals data -->
						<tbody>
							<tr ${status.first ? '' : 'style = "display:none"'}>
								<td align="right"> <%-- ${tempData.todaysDate} --%> 
									<span>
					                    <fmt:parseDate value="${tempData.todaysDate}" pattern="yyyy-MM-dd HH:mm:ss" var="myDate"/> 
					                    <fmt:formatDate value="${myDate}" pattern="MMM dd, yyyy @ hh:mm a" />
					                </span>
								</td>
								<td align="right"><fmt:formatNumber type = "number" minFractionDigits="2" value = "${tempData.currentMarketValue}" /></td>
								<td align="right"><fmt:formatNumber type = "number" minFractionDigits="2" value = "${tempData.dayGain}" /></td>
								<td align="right" style="padding-right:8px"><fmt:formatNumber type = "number" minFractionDigits="2" value = "${tempData.totalGain}" /></td>
							</tr>
						</tbody>
						</c:forEach>
					</table>
					<br>

					<!-- table below shows stock data   -->
					<table>
						<thead style="display:table-header-group">
							<tr class="yahoo_color">
								<th align="right">Symbol</th>
								<th align="right">Last<br>Price $</th>
								<th align="right">Todays<br>Change $</th>
								<th align="right">Percent<br>Change %</th>
								<th align="right" style="width:120px">Market<br>Time</th>
								<th align="right">Volume (M)</th>
								<th align="right">Average<br>Volume (M)</th>
								<th align="right" style="padding-right:8px">Market<br>Cap (B)</th>
							</tr>
						</thead>
						
						<c:forEach var="tempData" items="${DATA_LIST}">
						<!-- set up a link for each stock -->
						<%-- 	 					<c:url var="tempLink" value="StockControllerServlet">
							 						<c:param name="command" value="LOAD" />
							 						<c:param name="id" value="${tempStock.id}" />
							 					</c:url> --%>
						<!--  display the stock data -->
							<tr>
								<td align="right"> ${tempData.symbol}</td>
								<td align="right"> ${tempData.lastPrice}</td>
								<td align="right"> ${tempData.todaysChange}</td>
								<td align="right"> ${tempData.percentChange}</td>
								<td align="right"> ${tempData.marketTime}</td>
								<td align="right"> ${tempData.volume}</td>
								<td align="right"> ${tempData.avgVol}</td>
								<td align="right" style="padding-right:8px"> ${tempData.marketCap}</td>
							</tr>
						</c:forEach>
					</table>
		
			<c:forEach var="tempData" items="${DATA_LIST}" varStatus="status">
				<!-- display date -->
				<div class="sampleEntry" ${status.first ? '' : 'style = "display:none"'}>
	                The time on the server is ${tempData.todaysDate} 
	            </div> 
			</c:forEach>
						
		</div>		
		<div class="item4">
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
		    grid-column: 2 / 9;
		}
		
		.item4 {
		    grid-column: 4;
		}
		    
		.item5 {
		    grid-column: 5;
		}
		
		.item9 {
		    grid-column: 9;
		}
		
		table {   
			border-collapse:collapse;
			border-bottom:1px solid gray;
			font-family: Tahoma,Verdana,Segoe,sans-serif;
			width:99%;
		}
		 
		th {
			border-bottom:1px solid gray;
			background:none repeat scroll 0 0 #410093;
			/* padding:10px; */
			color: #FFFFFF;
		}
		
		tr {
			border-top:1px solid gray;
			text-align:center;
			marketCap:10px;
		}
		
		#marketCap {
			marketCap:10px;
		}
		 
		tr:nth-child(odd) {background: #FFFFFF}
		tr:nth-child(even) {background: #BBBBBB}	
		 
		#wrapper {width: 100%; margin-top: 200px; }
		#header {width: 100%; background: #1b68fb; margin-top: 0px; padding:15px 0px 15px 15px;}
		#header h2 {width: 100%; margin:auto; color: #FFFFFF;}
		#container {width: 100%; margin:auto}
		#container h3 {color: #000;}
		#container #content {margin-top: 200px;}
		
		.add-stock-button {
			border: 1px solid #666; 
			border-radius: 5px; 
			padding: 4px; 
			font-size: 12px;
			font-weight: bold;
			width: 120px; 
			padding: 5px 10px; 
			
			margin-bottom: 15px;
			background: #cccccc;
		}
		
		.yahoo_color{
			background: #410093;
		}

	</style>
	
	</jsp:attribute>
</mt:cssgrid_template> 