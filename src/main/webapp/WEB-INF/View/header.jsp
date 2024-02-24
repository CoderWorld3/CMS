
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<style type="text/css">
form {
	font-size: 3.2vh;
}

ul {
        padding: 0;
        list-style: none;
         color: #fff;
       
    }
    ul li {
        display: inline-block;
        position: relative;
        line-height: 21px;
        text-align: left;
    }
    ul li a {
        display: block;
        padding: 8px 25px;
        color: #000;
        text-decoration: none;
    }
    ul li a:hover {
        color: #000;
        background: #939393;
    }
    ul li ul.dropdown {
        min-width: 100%; /* Set width of the dropdown */
        background: #fff;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
    ul li:hover ul.dropdown {
        display: block; /* Display the dropdown */
    }
    ul li ul.dropdown li {
        display: block;
    }
</style>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">


<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<style type="text/css">

</style>

<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->

<!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<title>Collage Magement System</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">

</head>
<body>
	<section class="header">

		<Section class="right-header">
			<span><img src="/img/CMSLog.jpg" alt="" srcset="" /><a
				href="#">Collage Management System</a></span>
		</Section>
		<Section class="middle-header">
			<ul>
				<li><a class=" active   fas fa-house-user" href="/"> Home </a>
					<section class="homeitem">
						<span></span>
<!-- 						<ul> -->
<!-- 							<li><a href="/Html/index.html">Home</a></li> -->
<!-- 							<li><a href="/Html/index.html">Home</a></li> -->
<!-- 							<li><a href="/Html/index.html">Home</a></li> -->
<!-- 						</ul> -->
					</section></li>
				<li><a class="    fas fa-id-card-alt" href="/about">
						About </a></li>
				<li><a class="    fas fa-user-graduate" href="/#">
						RegisterOnline </a>
						 <ul class="dropdown">
                <li><a href="/registration">Students</a></li>
             
                <li><a href="/teacherRegistration">Teacher</a></li>
            </ul>
						
						
						</li>
				<li><a class="    fas fa-headset" href="/SSupport">
						StudentSupport </a></li>
			</ul>

		</Section>
		<section class="left-header">
			<ul>
			<c:if test="${ name == null}">
				<li><a class="fas fa-user-plus" href="/login">Profile </a></li></c:if>
				<section class="userName">
				<c:if test="${ name != null || name == ''}">
					<li class="nameHeading"><h4 class="  fas user"> ${name} </h4>

						<section class="usernameitem">
							<span> </span>
							<ul>
								<li><a href="/logout">Logout</a></li>
								
								<li><a href="/deshboard">Profile</a></li>

							</ul>
						</section></li></c:if>
				</section>
			</ul>

		</section>


	</section>
	<c:if test="${ name == null}">
		<button class="open-button fas fa-sign-in-alt" onclick="openForm()">SignIn
		</button>
	</c:if>

	<div class="form-popup" id="myForm">
	<form id="frm_details" action="normallUserSignUp" method="post" name="frm_details" class="form-container1">
		<!-- <form action="/signin" Method="Post" > -->
			<h1>SignIn</h1>

			<label for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" id="userName" name="userName" required>
				 <label for="psw"><b>Password</b></label> 
				 <input type="password" placeholder="Enter Password" id="password" name="password" required>
            <button type="submit" name="false"  class="btn">SignIn</button>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
		<h5> <a href="/signUp" > Signup</a>  </h5>
		</form>
	</div>

	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
		

/* 		$(function(){
	        $("#frm_details").on("submit", function(event) {
	            event.preventDefault();
	            var email =$("#userName").val();
	            var password= $("#password").val();
	          /*   alert(email + password); 
	           var signin = {};
	           signin.userName = email;
	           signin.password = password;
                


	            $.ajax({
	                url: "/signin",
	                type: "post",
	                contentType : "application/json",
	    			data : JSON.stringify(signin),
	    			dataType : 'json',
	    			timeout : 100000,
	                success: function(d) {
	                    alert(d.userName + d.password);
	                }
	            });
	        });
	    	document.getElementById("myForm").style.display = "none";
	    })  */


	</script>

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>