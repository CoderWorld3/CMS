
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style type="text/css">
* {
	font-size: 2.5;
	padding: 2px;
	margin: 2px;
	rgb
	(180,
	238,
	103);
}
</style>

<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/home.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />



</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/View/header.jsp" />
	</header>
	<!-- Black and White /------------- -->
	<section class="mainquotes">
		<section class="quotes">
			<q id="changeQuotes">It’s not that I’m so smart, it’s just
				that I stay with problems longer” – Albert Einstein</q> <span>
				<p id="changeText">Getting education isn’t easy, and most
					students experience challenges during their degrees. The important
					thing is to believe in yourself and not give up.</p>
			</span>
		</section>
	</section>
	<!-- Black and White /------------- end---------------------------------------------------- -->
	<!-- about the CMS -->
	<section class="about">
		<section class="aboutheading fas fa-address-card1">
			<span>About</span>
		</section>
		<section class="aboutman">
			<section id="slider">
				<div class="slider">

					<a href="#slide-1">1</a> <a href="#slide-2">2</a> <a
						href="#slide-3">3</a> <a href="#slide-4">4</a> <a href="#slide-5">5</a>

					<div class="slides">
						<div id="slide-1">
							<span>
								<h3>In mini CMS system student can get admission in any
									course .They can ask online query in common group of their
									classRoom with their teacher.</h3>
							</span>
						</div>
						<div id="slide-2">
							<h3>The aim of the entity reflects its long term outcomes
								while its objective indicates the short term target.</h3>
						</div>
						<div id="slide-3">
							<h3>The goal CMS is to offer everyone equal opportunities to
								develop their abilities to improve their level of education and
								to retrain for a new career.</h3>
						</div>
						<div id="slide-4">
							<h3>They are also the ideal way to become eligible for
								pursuing a typical university degree afterwards.</h3>
						</div>
						<div id="slide-5">
							<h3>The more that you read, the more things you will know,
								the more that you learn, the more places you’ll go</h3>
						</div>
					</div>
				</div>

			</section>


		</section>
	</section>
	<!-- font -->
	<section>
		<div class="container1" id="content">
			<div class="content">
				<h1>PrivateYard</h1>
				<img src="/img/scott-graham-5fNmWej4tAA-unsplash.jpg" alt=""
					srcset="">
			</div>
			<div class="flap"></div>
		</div>

	</section>

	<!-- Notification System -->
	<div id="success" class="button"></div>
	<div id="failure" class="button"></div>

	<div class="notify">
		<span id="notifyType" class=""></span>
	</div>




	<!-- Courses Of the Cms -->
	<section class="courses">
		<section class="fas fa-book-dead coursesTitle">
			<h3>Courses</h3>

		</section>
		<h3 class="coursehide">
			<span style='font-size: 5vh;'>&#128525;</span>Welcome
		</h3>
		<section class="coursecard1 row">

			<div class="col-md-12">
				<div class="container11">
					<div class="row">
						<c:forEach var="window" items="${courses}">
							<div class="col"></div>
						</c:forEach>



					</div>
				</div>
		</section>







		<!-- 	<div class="row"> -->
		<!--     <div class="col"> -->
		<!--       <div class="card1  "> -->

		<!-- 			<div class="card1-body"> -->
		<%-- 				<h5 class="card1-title"id="coursename"> <c:out value="${window.courseName}"/> </h5> --%>
		<%-- 				<p class="card1-text" id="description" ><c:out value="${window.courseDuration}"/></p> --%>
		<!-- 				<a href="#" class="card1-link">Card link</a> <a href="#" -->
		<!-- 					class="card1-link">Another link</a> -->
		<!-- 			</div> -->

		<!-- 		</div> -->
		<!--     </div> -->
		<!--     <div class="col"> -->
		<!--       2 of 3 -->
		<!--     </div> -->
		<!--     <div class="col"> -->
		<!--       3 of 3 -->
		<!--     </div> -->
		<!--   </div> -->
		<!-- </div> -->



		<div class="container">
			<div class="row">
				<table class="table" class="table table-dark table-striped col-md-4">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Course Name</th>
							<th scope="col">Course Duration</th>
							<th scope="col">Course About</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="window" items="${courses}" varStatus="loop">
							<tr>
								<th scope="row"><c:out value="${loop.index}" /></th>
								<td><c:out value="${window.courseName}" /></td>
								<td><c:out value="${window.courseDuration}" /></td>
								<td>@ Some quick example text to build on the card1 title
									and make up the bulk of the card1's content.</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>




			</div>
		</div>
	</section>









	<jsp:include page="/WEB-INF/View/footer.jsp" />



	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="/js/home.js"></script>
</body>

</html>