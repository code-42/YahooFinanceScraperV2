<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%-- <%@ taglib prefix="f" uri="/WEB-INF/functions.tld" %> --%>    
<mt:cssgrid_template title="Home page">
	<jsp:attribute name="content">
		<content class="container">
            <div class="item1">
            </div>
            <div class="item2">
            </div>
            <div class="item3">
            
			    <!-- <div class="loginForm"> -->
			        <%-- <form class="myForm" id="loginForm" action="${pageContext.request.contextPath}/stock/list" method="POST"> --%>
						<form class="myForm" id="loginForm" action="getWebDriver" method="POST">
			            <div class="form_item1">Yahoo Finance Scraper</div>
			            <div class="form_item2">Please login to access your portfolio.</div>
			
			            <input type="hidden" name="command" value="LOGIN" />
			            <label for=" username">Email </label>
			            <input type="email" name="username" id="username" placeholder="Please enter your email address here. ">
			            <label for="password">Password </label>
			            <input type="password" name="password" id="password" placeholder="Please enter your password here.">
			            <button>Submit</button>
			
			        </form>
			    <!-- </div> -->

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

    <style>
        .container {
        		display: grid;
        	    grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
        	    grid-template-rows: 5;
            /* grid-auto-flow: row; */
            align-items: center;
            grid-gap: .8em;
            /* background: #bada55; */
            padding: 1.2em;
		    text-align: left;
		    border-bottom: 1px solid black;
		}
		
        .form_item1 {
            /* grid-template-columns: 50px 1fr 1fr 1fr 50px; */
            grid-column-start: 2;
            grid-column-end: 4;
            /* grid-row: auto; */
            align-items: center;
            text-align: center;
            border: none;
            /* padding: 1em; */
            font-size: 2em;
            font-weight: 600;
        }
        
        .form_item2 {
            /* grid-template-columns: 1fr 1fr 1fr 1fr 1fr; */
            grid-column-start: 2;
            grid-column-end: 4;
			/* grid-row: auto; */
            align-items: center;
            text-align: center;
            border: none;
            /* padding: 1em; */
            font-size: 1.2em;
            font-weight: 200;
        }
        
        .myForm {
            display: grid;
            grid-template-columns: 110px [labels] auto [controls] 1fr 110px;
            /* grid-template-columns: repeat(5, 1fr); */
            grid-auto-flow: row;
            align-items: center;
            grid-gap: .8em;
            /* background: #bada55; */
            padding: 1.2em;
        }
        
        .myForm>label {
            grid-column: labels;
            grid-row: auto;
        }
        
        .myForm>input,
        .myForm>textarea,
        .myForm>button {
            grid-column: controls;
            grid-row: auto;
            border: none;
            padding: 1em;
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
		    grid-column: 4;
		}
		
		.item5 {
		    grid-column: 5;
		}
		
		.item9 {
		    grid-column: 9;
		}
    </style>

	</jsp:attribute>
</mt:cssgrid_template>    
