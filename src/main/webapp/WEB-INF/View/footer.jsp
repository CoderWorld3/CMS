
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

	<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	<!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/home.css" var="jstlCss" />
	<link href="/css/home.css" rel="stylesheet" />

</head>
<body>
<section class="footershow"> .

    <footer class="footer-distributed">

        <div class="footer-left">

        <h3>CMS<span>Yard</span></h3>

        <p class="footer-links">
        <a href="#">Home</a>
        ·
        <a href="#">Blog</a>
        ·
        <a href="#">Pricing</a>
        ·
        <a href="#">About</a>
        ·
        <a href="#">Faq</a>
        ·
        <a href="#">Contact</a>
        </p>

        <p class="footer-company-name">CMSyard &copy; 2019</p>
        </div>

        <div class="footer-center">

        <div>
        <i class="fa fa-map-marker"></i>
        <p><span>UnknownYard</span> Delhi, India</p>
        </div>

        <div>
        <i class="fa fa-phone"></i>
        <p>+918851402921</p>
        </div>

        <div>
        <i class="fa fa-envelope"></i>
        <p><a href="arvinmishraji@gmail.com">arvinmishraji@gail.com</a></p>
        </div>

        </div>

        <div class="footer-right">

        <p class="footer-company-about">
        <span>About the CMS</span>
        University &amp; CMS Collage System.
        </p>

        <div class="footer-icons">

        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-github"></i></a>

        </div>

        </div>

        </footer>

</section>


	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>