<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:cssgrid_template title="About Me">
	<jsp:attribute name="content">
		<content class="container">
            <div class="item1">
            </div>
            <div class="item2">
            </div>
            <div class="item3">
	
				<p id="hello_line">Hello, my name is Edward Dupre, and I'm a code-a-haulic.</p>
			
				<div class="11"> 
					<p>
					I picked up the code bug at the <a href="http://www.hackri.com/">2016 RIPTA Hackathon</a> at <a href="http://times2.org/">Times<sup>2</sup> STEM Academy</a> in Providence, RI.  
					I have  been coding ever since, 24x7 for 
					<span id="days" title="document.getElementById('days').innerHTML = Math.floor((new Date() - new Date(2016,12,4)) / (1000*60*60*24));"></span> days and counting.
					<p>
					I know I am a code-a-haulic because it has positively affected my career goals, my social life and family life.
					I no longer make time to enjoy the usual things in life like shopping, cooking, leisure, holidays, 
					TV, bon-bons, martinis, house hunting, car shopping and yard sailing, to name a few.  
					
					I do, however, make the time to go out and shoot hoop on Sunday mornings with my older brother.
					  
					<p>
					<strong>CareerDevs Computer Science Academy</strong> along with the help of Arnell Milhouse and Cliff Choiniere 
					and the rest of my cohort there encourage me to code, to learn new things, to reach out for help 
					and collaborate with my co-workers and teammates.   
					
					I go to meetups like PVD-Code-Camp and ProvidenceGeeks, and go to events at 
					the Brown University Nelson Center for Entrepreneurship, where I meet smart people.  
					
					I read books like Design Patterns by Gang of Four, 
					and I watch video tutorials on you tube instead of the newest prime-time HBO movie of the week.
					<p>
					Sounds sick, I know.  But that is who I am, have been trying to be for a long time, and I see no reason 
					to change now.  I finally found my niche, and I intend to stick with it for as long as possible.
					</p>
				</div>
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
<!-- 	</content>
	
	<content class="container"> -->
            <div class="form_item1">
            </div>
            <div class="form_item2">
            </div>
            <div class="form_item3">
		        <form class="myForm">
		            <div id="form_say_hello">Say Hello!  I'd love to hear from you.</div>
		            <label for="name">Name </label>
		            <input type="text" name="name" id="name" placeholder="Please enter your name here." size="40">
		            <label for=" email_address">Email </label>
		            <input type="email" name="email_address" id="email_address" placeholder="Please enter your email address.">
		            <label for="comments">Comments</label>
		            <textarea name="comments" id="comments" maxlength="500" placeholder="Please enter your comments here."></textarea>
		            <button>Submit</button>
		        </form>
			</div>
			<div class="form_item4">
            </div>
            <div class="form_item5">
            </div>
            <div class="form_item6">
            </div>
            <div class="form_item7">
            </div>
            <div class="form_item8">
            </div>
            <div class="form_item9">
            </div>
    </content>
	<script>
		/* which javascript do you like better? */
		/* var today = new Date(); */
		/* var hackathon = new Date(2016,12,4); */
		/* var days = Math.floor((today - hackathon) / (1000*60*60*24)); */

		document.getElementById("days").innerHTML = Math.floor((new Date() - new Date(2016,12,4)) / (1000*60*60*24));
	</script>
		
	<style>
		.container {
		    display: grid;
		    grid-template-columns: repeat(9, 1fr);
		    grid-template-rows: 5;
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
		
		#hello_line {
			font-size: 1.6em;
			font-weight: 500;
		}
		
		#form_say_hello {
			font-size: 1.6em;
			font-weight: 500;
			grid-column: 1 / -1;
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
		
		.myForm {
            display: grid;
            grid-template-columns: 1fr [labels] auto [controls] 1fr 1fr;
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
        
        .myForm>div {
            grid-row: auto;
            text-align: center;
            border: none;
            /* padding: 1em; */
        }
        
        .myForm>input,
        .myForm>textarea,
        .myForm>button {
            grid-column: controls;
            grid-row: auto;
            border: none;
            padding: 1em;
        }
        
        	.form_item3 {
		    grid-column: 3 / 8;
		}
	</style>
	</jsp:attribute>
</mt:cssgrid_template>