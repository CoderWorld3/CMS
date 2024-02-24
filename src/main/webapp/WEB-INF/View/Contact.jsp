<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CUTOMCSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style type="text/css">
*{
    padding: 0px;
    margin: 0px;
    box-sizing: border-box;
}
body{ background: rgb(238,174,202);
	background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%); 
	height: 100%;

	
}
.customNavBar{
	position: relative;
}
.navSvg{
	position: relative;
	top:0rem;
	
}
.footerLink a{
	text-decoration: none;
	list-style-type: none;
}
.footerLink a :hover{
	color:black;
	text-decoration: line-through;

}
img{
	width: 100%;
	height: 50vh;

}
.handw{
  height: 70vh;
  width: 100%;
}
.handw img{
  height: 50vh;
  

}
.hover-img {
  background-color: #000;
  color: #fff;
  display: inline-block;
  margin: 8px;
  max-width: 320px;
  min-width: 240px;
  overflow: hidden;
  position: relative;
  text-align: center;
  width: 100%;
}

.hover-img * {
  box-sizing: border-box;
  transition: all 0.45s ease;
}

.hover-img:before,
.hover-img:after {
  background-color: rgba(0, 0, 0, 0.5);
  border-top: 32px solid rgba(0, 0, 0, 0.5);
  border-bottom: 32px solid rgba(0, 0, 0, 0.5);
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  content: '';
  transition: all 0.3s ease;
  z-index: 1;
  opacity: 0;
  transform: scaleY(2);
}

.hover-img img {
  vertical-align: top;
  max-width: 100%;
  backface-visibility: hidden;
}

.hover-img figcaption {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  align-items: center;
  z-index: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  line-height: 1.1em;
  opacity: 0;
  z-index: 2;
  transition-delay: 0.1s;
  font-size: 24px;
  font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  font-weight: 400;
  letter-spacing: 1px;
  text-transform: uppercase;
}

.hover-img:hover:before,
.hover-img:hover:after {
  transform: scale(1);
  opacity: 1;
}

.hover-img:hover > img {
  opacity: 0.7;
}

.hover-img:hover figcaption {
  opacity: 1;
}

</style>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    
  </head>
  <body class="text-dark">
  <!--header  -->

  <%@include file="/WEB-INF/view/Header.jsp" %>
  <!-- header end -->
      <svg  class="navSvg" viewBox="0 0 1400 250">
          
        
        
        <path fill="#78afee"  fill-opacity="1" d="M0,160L48,176C96,192,192,224,288,208C384,192,480,128,576,106.7C672,85,768,107,864,122.7C960,139,1056,149,1152,133.3C1248,117,1344,75,1392,53.3L1440,32L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>
<!-- For card -->
<div class="container mt-4  ">
  <div class="row ">
    <div class="col-md-6 text-center ms-1 mt-4 me-0">
   <div class="">
    <h1> Web Developer </h1>
    <h5 class="alert alert-info mt-5">Time Is most important Thing in this World</h5>
    <h4>
        you nerver a buy a one second by any money
        thats why work with time
    </h4>
    <div class="gratitude btn btn-outline-success">Gratitude For your Time</div>
   </div>


    </div>
    <div class="col-md-6 col-lg-4 ">
      <div class="card text-primary alert-info text-center" >
        <img src="/PowerOfEducation/StaticFile/image/aboutme.jpg" class="card-img-top  " alt="...">
        <div class="card-body">
              <h5 class="card-title mt-4 alert-info shadow-lg text-Dark ">Hari Shanker Mishra</h5>
              <Strong class="card-text"> Web Developer  Java Developer</Strong><br>
              <a href="" class="btn btn-outline-info mt-5">Get A Resume</a>
              <section class="mb-4  rounded bg-info badge badge-pill flex ">
                <!-- Facebook -->
                <a class="btn btn-outline-light btn-floating ms-0" href="#!" role="button"
                  ><i class="fab fa-facebook-f"></i
                ></a>
          
                <!-- Twitter -->
                <a class="btn btn-outline-light btn-floating ms-0" href="#!" role="button"
                  ><i class="fab fa-twitter"></i
                ></a>
          
                <!-- Google -->
                <a class="btn btn-outline-light btn-floating ms-0" href="#!" role="button"
                  ><i class="fab fa-google"></i
                ></a>
          
                <!-- Instagram -->
                <a class="btn btn-outline-light btn-floating ms-0" href="#!" role="button"
                  ><i class="fab fa-instagram"></i
                ></a>
          
                <!-- Linkedin -->
                <a class="btn btn-outline-light btn-floating ms-0" href="#!" role="button"
                  ><i class="fab fa-linkedin-in"></i
                ></a>
          
                <!-- Github -->
                <a class="btn btn-outline-light btn-floating ms-0" href="#!" role="button"
                  ><i class="fab fa-github"></i
                ></a>
              </section>
            </div>
            
          </div></div>
  </div>
</div>
<!-- Skills -->
<div>
<div class="border w-25 mt-4 d-flex fs-5 justify-content-center pt-0  h-25 mx-auto border border-light  border-end-0 border-start-0 border-top-0 col-lg-12 col-md-6 col-sm-3">
  <i class="fas fa-check-circle mt-1 text-success spinner-grow spinner-grow-sm bg-dark"></i><p  class="">Skill</p></div>
</div>
<div class="container-fluid">
  <div class="row ">
    <div class="col-md-6  ">
      <div class="mt-2  p-2"><div class="progress ">
        <div class="progress-bar progress-bar-striped progress-bar-animated bg-info fs-4" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"> Java 1.8</div>
      </div></div>
      <div class="mt-2  p-2"><div class="progress ">
        <div class="progress-bar progress-bar-striped progress-bar-animated bg-info fs-4" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 85%"> HTMl5</div>
      </div></div>
      <div class="mt-2  p-2"><div class="progress ">
        <div class="progress-bar progress-bar-striped progress-bar-animated bg-info fs-4" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 60%">Css3</div>
      </div></div>
      <div class="mt-2  p-2"><div class="progress ">
        <div class="progress-bar progress-bar-striped progress-bar-animated bg-info fs-4" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 65%">JavaScript</div>
      </div></div>
      <div class="mt-2  p-2"><div class="progress ">
        <div class="progress-bar progress-bar-striped progress-bar-animated bg-info fs-4" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">Bootstrap5</div>
    </div>
    </div>
    


    </div>
    <div class="col-md-6 mx-auto">
      <figure class="text-center  p-5">
        <blockquote class="blockquote fs-3 mx-auto mt-5">
          <p>
            “Successful and unsuccessful people do not vary greatly in their abilities. They vary in their desires to reach their potential.”
      </p>
        </blockquote>
        <figcaption class="blockquote-footer">
           John Maxwell <cite title="Source Title">Success</cite>
        </figcaption>
      </figure>
    </div>
  </div>
</div>
<!-- project -->
<div class="border w-25 mt-4 d-flex fs-5 justify-content-center pt-0  h-25 mx-auto border border-light  border-end-0 border-start-0 border-top-0 col-lg-12 col-md-6 col-sm-3">
  <p class="fas fa-folder-open"> Projects</p></div>
<div class="container">
  <div class="">
    <div class="row m-auto">
      <div class="col-md-4">
        <div class="row gx-5">
          <div class="col-md-6 handw text-muted mt-5">
            <figure class="hover-img">

             <img src="/PowerOfEducation/StaticFile/image/web.jpeg"  class="    img-fluid"alt="" srcset="">
              <figcaption>
                <h3>Hari Shanker <br/>Mishra</h3>
              </figcaption>
            </figure>
          <p class="text-center">Online Student Mangament System</p>
          <strong>java,j2ee,Html5,Css3</strong>
        <p>Its Web Based Project in Collage</p> 
        </div>
        
        </div>
      </div>
      <div class="col-md-4">
        <div class="col-md-6 handw    text-muted mt-5">
          <figure class="hover-img">

            <img src="/PowerOfEducation/StaticFile/image/code.jpg"  class="   img-fluid"alt="" srcset="">
             <figcaption>
               <h3>Hari Shanker <br/>Mishra</h3>
             </figcaption>
           </figure>
        <p class="text-center">Online Locker System</p>
        <strong>java 1.5,Swing</strong>
      <p>Its StandAlone application Based Project in Collage</p>
      
          </div>
      </div>
      <div class="col-md-4">
        <div class="col-md-6    handw    text-muted mt-5">
          <figure class="hover-img">

            <img src="/PowerOfEducation/StaticFile/image/CodeWorld.jpg"  class="   img-fluid"alt="" srcset="">
             <figcaption>
               <h3>Hari Shanker <br/>Mishra</h3>
             </figcaption>
           </figure>
          
        <p class="text-center">online Study center</p>
        <strong>java,Spring core,Spring jdbc,Spring Security, bootstrap5, ECMAScript6</strong>
      <p>Its web based Project in (MCA)Collage</p>
      
          </div>
      </div>
    </div>
  </div>

  
 
  
</div>
<div class="border w-25 mt-4 d-flex fs-5 justify-content-center pt-0  h-25 mx-auto border border-light  border-end-0 border-start-0 border-top-0 col-lg-12 col-md-6 col-sm-3">
  <p  class="fas fa-book-open">Education</p></div>
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <strong class="badge badge-primary fs-5 mt-4 d-flex justify-content-center fas fa-graduation-cap">Bachelor of Computer Application</strong>
    <p>The BCA is a common degree for CS/IT students at Indian universities, and is an alternative to the engineering counterpart, the B.E/B.Tech in Computer Science and Engineering/IT, which requires 4 years of study. It is a technical degree that prepares students for a career in the field of computer applications and software development, this being a professional course, even non-math students can also opt for this course, many universities offer this course in India. This is a good course for non-math student so they also can make their career in Information technology</p>
    </div>
    <div class="col-md-12">
      <strong class="badge badge-primary fs-5 mt-4 d-flex justify-content-center fas fa-user-graduate">Master of Computer Applications </strong>
      <p> (MCA) is a three year long professional post-graduate programme for candidates wanting to delve deeper into the world of computer application development with the help of learning modern programming language. The programme is a blend of both theoretical and practical knowledge. An MCA degree endows students’ an opportunity  to work with tools meant to develop better and faster applications.</p>
    </div>
  </div>
</div>
<!-- Carsoual -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="container h-50 ">
  <div class="carousel-inner">
    <div class="carousel-item active ">
      <img src="/PowerOfEducation/StaticFile/image/chat.jpeg" class="d-block w-100" alt="...">
         <div class="carousel-caption  text-dark d-none d-md-block">
        <h5>Time</h5>
        <p>make your rules with to define your self</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/PowerOfEducation/StaticFile/image/dothink.jpg" class="d-block w-100" alt="...">
         <div class="carousel-caption d-none d-md-block">
        <h5>Play</h5>
        <p>Life is container which always play with us</p>
      </div>
    </div>
    <div class="carousel-item ">
      <img src="/PowerOfEducation/StaticFile/image/code2.jpg" class="d-block w-100" alt="...">
         <div class="carousel-caption text-info d-none d-md-block">
        <h5>Aim </h5>
        <p>Can't is only a word</p>
      </div>
    </div>
  </div>
  </div>

  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
<!-- end -->
 <!-- Footer -->
<!--fotter  -->
  
<%@include file="/WEB-INF/view/Fotter.jsp" %>
<!-- footer -->



    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
 <!-- Custom js -->
 <script src="about.js"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>
</html>
