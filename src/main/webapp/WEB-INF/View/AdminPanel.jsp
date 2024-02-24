
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page isELIgnored="false" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="/PowerOfEducation/StaticFile/css/dashBroad.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>

<body id="backGround">

  
  
</div>
    <div class="container d-md-none d-lg-none shadow-lg p-3 mb-5 bg-body rounded">
        <div class="row">
            <div class="col-md-6 ">
                <button class="btn btn-primary " type="button" data-bs-toggle="offcanvas" data-bs-target="#adminTop"
                    aria-controls="offcanvasTop">AdminRole</button>

                <div class="offcanvas  h-100   offcanvas-top" tabindex="-1" id="adminTop"
                    aria-labelledby="offcanvasTopLabel">
                    <div class="offcanvas-header">
                        <h5 id="offcanvasTopLabel"></h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body col-6 offset-3">
                        <div class="container col-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="container mx-auto ">
                                        <div class="adminItems ">
                                            <h3 class="badge   text-center   ">Admin</h3>
                                            <div class="border-top border-muted"></div>
                                            <div class="fs-2 w-100 heightAdminItem m-auto mt-4 ">
                                                <a class="btn btn-outline-info border-0 rounded-pill shadow-lg  fs-3" href=""><i
                                                        class="fas fa-chalkboard-teacher">Teacher</i></a>
                                            </div>
                                            <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a
                                                    class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3 " href=""><i
                                                        class="fas fa-child">Students</i></a>
                                            </div>
                                            <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a
                                                    class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3 " href=""><i
                                                        class="fas fa-book">Courses</i></a>
                                            </div>
                                            <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a
                                                    class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3 " href=""><i
                                                        class="fas fa-folder-open">Documents</i></a>
                                            </div>
                                            <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a
                                                    class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-5 " href=""><i
                                                        class="fas fa-id-card">Confirm To Student</i></a>
                                            </div>
                                            <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a
                                                    class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3 " href=""><i
                                                        class="fas fa-user-shield">Admin mode</i></a>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-6"></div>
        </div>
    </div>
    <div class="container-fluid shadow-lg p-3 mb-5 bg-body rounded">

        <div class="row">
            <div class="col-md-4">
                <div class="container mx-auto ">
                    <div class="adminItems   mt-5 text-center  adminWorks    d-sm-none d-md-block  ">
                        <h3 class="badge bg-dark   mt-1  "> Admin</h3>
                        <div class="border-top border-muted"></div>
                        <div class="fs-2 w-100 heightAdminItem m-auto mt-4 ">
                            <a class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3" href="/PowerOfEducation/Admin/addTeacher"><i
                                    class="fas fa-chalkboard-teacher">Teacher</i></a>
                        </div>
                        <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3 "
                                href="/PowerOfEducation/Admin/showStudent"><i class="fas fa-child">Students</i></a>
                        </div>
                        <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3 "
                                href="/PowerOfEducation/Admin/addCourse"><i class="fas fa-book">Courses</i></a>
                        </div>
                        <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3 "
                                href="/PowerOfEducation/Admin/addNotes"><i class="fas fa-folder-open">Documents</i></a>
                        </div>
                        <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-5 "
                                href=""><i class="fas fa-id-card">Confirm To Student</i></a>
                        </div>
                        <div class="fs-2 w-100 heightAdminItem m-auto mt-4"> <a class="btn btn-outline-info border-0 rounded-pill shadow-lg fs-3 "
                                href="adminModeOff"><i class="fas fa-user-shield">Admin mode</i></a>
                        </div>

                    </div>

                </div>
            </div>
            <div class="col-md-8">
                <div class="container">
                    <div class="row  ">
                        <div class="brandName mt-5 text-success   fs-3 col-md-3 fas fa-school"><a href="addAdmin" class="text-success text-decoration-none" aria-label="Arvin" class="logo">HS Yard</a><i class="fas  ms-5 fa-users"></i>${student}</div>
                        <div class="col-md-9 mt-5 fs-3 text-success fixedTime" id="time"></div>

                        <div class="container-fluid mt-5 ">
                            <div class="row  ">
                                <div class="col-md-12  flex-row bd-highlight mb-3 ">
                                    <div class="accordion accordion-flush" id="accordionExample ">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingOne">
                                                <button class="accordion-button alert-info collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#StudentData" aria-expanded="true"
                                                    aria-controls="StudentData">
                                                    StudetntInformation
                                                </button>
                                            </h2>
                                            <div id="StudentData" class="accordion-collapse collapse "
                                                aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                  <div class="container-fluid">
                                                    <div class="row ">
                                                      <div class="col-md-12">
                                                        <c:forEach var="student" items="${reg }">
                                                        <div class="col-md-4">  
                                                            <div class="card" style="width: 18rem;">
                                                                 <img src="<c:url value="/StaticFile/images/${student.image}"/>" class="card-img-top" alt="${student.image}"/> 

                                                                 <div class="card-body">
                                                                   <h5 class="card-title" id="h1Id"> ST_ID: ${student.id }</h5>
                                                                   <p class="card-text" id="h3Id"> St_Name: ${student.firstName }</p>
                                                                   <h3 id="h5Id">ST_userName: ${student.userName} </h3>
                                                                 </div>
                                                                  </c:forEach>
                                                      </div>
                                                                </div>
                                                      </div>
                                                    
                                                    </div>
                                                  </div>
                                                      </div>
                                                   
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                 
                                </div>

                            </div>
                            <div class="row  ">
                                <div class="col-md-12 col-12   mb-3 ">
                                    <div class="accordion accordion-flush" id="accordionExample ">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingOne">
                                                <button class="accordion-button alert-info collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#Studentfind" aria-expanded="true"
                                                    aria-controls="StudentData">
                                                    FindStudetnt
                                                </button>
                                            </h2>
                                            <div id="Studentfind" class="accordion-collapse collapse "
                                                aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <article>
                                                        <form action="/PowerOfEducation/Admin/userId" method="GET">
                                            <input type="text" name="id"class="studentid" placeholder="enter the UserName">
                                            <input type="submit" value="submit">
                                          </form>
                                             userName: ${userId }
                                                        
                                                        </article>
                                                       
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="row  ">
                                <div class="col-md-12  mb-3 ">
                                    <div class="accordion accordion-flush" id="accordionExample ">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingOne">
                                                <button class="accordion-button alert-info collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#StudentCourse" aria-expanded="true"
                                                    aria-controls="StudentData">
                                                    AssginCourses
                                                </button>
                                            </h2>
                                            <div id="StudentCourse" class="accordion-collapse collapse "
                                                aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <form method="post" action="assginCourse" class="row g-3" >
                
                
                                                        <div class="col-6">
                                                          <select class="form-select" id="studentDataId" aria-label="Default select example">
                                                            <option selected>Select ID </option>
                                                            <option value="1" id="updateCourse" class="btn btn-outline-success"></option>
                                      
                                                          </select>
                                                          <input type="text"  class="form-control" name="St_id"  name="courseDuration" placeholder=" StudentID">
                                                        </div>
                                                        <div class="col-md-6">
                                                          <select class="form-select" id="courseDataId" aria-label="Default select example">
                                                            <option selected>Select ID </option>
                                                            <option value="1" id="updateCourse"  class="btn btn-outline-success"></option>
                                      
                                                          </select>
                                                          
                                                          <input type="text" class="form-control" name="Co_id"  placeholder=" CourseId">
                                                            ${course }
                                                        </div>
                                                        <div class="col-12 ">
                                                          <div class="row">
                                                            <div class="col-3">
                                                              <input type="submit" class="btn btn-outline-primary" value="Assgin Courses">
                                        
                                                              </button>
                                                            </div></form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="row  ">
                                <div class="col-md-12  mb-3 ">
                                    <div class="accordion accordion-flush" id="accordionExample ">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingOne">
                                                <button class="accordion-button alert-info collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#StudentNotes" aria-expanded="true"
                                                    aria-controls="StudentData">
                                                    AssginNotes
                                                </button>
                                            </h2>
                                            <div id="StudentNotes" class="accordion-collapse collapse "
                                                aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <form method="post" action="assginNote" class="row g-3">
                  
                                                        <div class="col-6">
                                                          <select class="form-select" id="studentId2" aria-label="Default select example">
                                                            <option selected>Select ID </option>
                                                            <option value="1"  class="btn btn-outline-success"></option>
                                      
                                                          </select>
                                                          <input type="text" class="form-control" name="St_id"  placeholder=" StudentId">
                                                        </div>
                                                        <div class="col-6">
                                                          <select class="form-select" id="notesDataId" aria-label="Default select example">
                                                            <option selected>Select ID </option>
                                                            <option value="1" id="updateCourse" class="btn btn-outline-success"></option>
                                      
                                                          </select>
                                                          <input type="text" class="form-control" name="No_id" placeholder=" Notes ID">
                                                        </div>
                                                        <div class="col-12">
                                                          <select class="form-select" id="courseDataId1" aria-label="Default select example">
                                                            <option selected>Select ID </option>
                                      
                                                          </select>
                                                          <input type="text" class="form-control" name="Co_id" placeholder=" CourseID">
                                                          <h1> ${notes }</h1>
                                                        </div>
                                                        <div class="col-12 ">
                                                          <div class="row">
                                                            <div class="col-3">
                                                              <input type="submit" class="btn btn-outline-primary" value="Assgin Notes">
                                        
                                                              </button>
                                                            </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="row  ">
                                <div class="col-md-12   mb-3 ">
                                    <div class="accordion accordion-flush" id="accordionExample ">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingOne">
                                                <button class="accordion-button alert-info collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#AssginCourseToTeacher" aria-expanded="true"
                                                    aria-controls="StudentData">
                                                    AssginCoursesToTeacher
                                                </button>
                                            </h2>
                                            <div id="AssginCourseToTeacher" class="accordion-collapse collapse "
                                                aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <div class="container">
                                                        <div class="row">
                                                          <div class="col-md-12">
                                                            <form method="post" action="assginCourseToTeacher" class="row g-3">
                                                              ${teacher }
                                    
                                                              <div class="col-10 m-5">
                                                                <input type="text" class="form-control" name="Te_id" placeholder=" TeacherID">
                                                                <select class="form-select" id="teacherDataId4" aria-label="Default select example">
                                                                  <option selected>Select ID </option>
                                                                  <option value="1" id="updateCourse" class="btn btn-outline-success"></option>
                                    
                                                                </select>
                                                              </div>
                                                              <div class="col-md-10">
                                                                <input type="text" class="form-control" name="Co_id" placeholder=" CourseId">
                                                                <select class="form-select" id="courseDataId4" aria-label="Default select example">
                                                                  <option selected>Select ID </option>
                                                                  <option value="1" id="updateCourse" class="btn btn-outline-success"></option>
                                    
                                                                </select>
                                                              </div>
                                                              <div class="col-12 ">
                                                                <div class="row">
                                                                  <div class="col-3">
                                                                    <input type="submit" class="btn btn-outline-primary" value="Assgin Courses to teacher">
                                    
                                                                    </button>
                                                                  </div>
                                                            </form>
                                                          </div>
                                                          <div class="col-md-6"></div>
                                                        </div>
                                                      </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="row  ">
                                <div class="col-md-12 col-sm-12    mb-3 ">
                                    <div class="accordion accordion-flush" id="accordionExample ">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingOne">
                                                <button class="accordion-button alert-info collapsed" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#AssginLogin" aria-expanded="true"
                                                    aria-controls="StudentData">
                                                    AssginLogin
                                                </button>
                                            </h2>
                                            <div id="AssginLogin" class="accordion-collapse collapse "
                                                aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <select class="form-select col-md-12" id="studentDataId3" aria-label="Default select example">
                                                        <option selected>Select ID </option>
                                                        <option value="1" class="btn btn-outline-success"></option>
                            
                                                      </select>
                                                    <div class="col-md-6">
                                                        <div class="col-6">
                                                          <h1>${assginLogin}</h1>
                                                    
                                                          <input type="text" class="form-control" name="St_id" placeholder=" StudentId">
                                                        </div>
                                                        <form class="row g-3" method="Post" action="assginLogin">
                                                          <div class="col-md-4">
                                                            <label for="validationDefault01" class="form-label">User name</label>
                                                            <input type="text" class="form-control" name="userName" id="validationDefault01"
                                                              value="Mark" required>
                                                          </div>
                                                          <div class="col-md-4">
                                                            <label for="validationDefault02" class="form-label">Password</label>
                                                            <input type="password" class="form-control" name="userPassword" id="validationDefault02"
                                                              value="" required>
                                                          </div>
                                                          <div class="col-md-4">
                                                            <label for="validationDefault02" class="form-label">Active</label>
                                                            <input type="number" class="form-control" name="userAccount" id="validationDefault02"
                                                              required>
                                                          </div>
                                
                                
                                
                                                          <div class="col-12">
                                                            <button class="btn btn-primary" type="submit">Submit form</button>
                                                          </div>
                                                        </form>
                                                      </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12 col-12">
                                        <div class="accordion accordion-flush" id="accordionExample ">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header" id="headingOne">
                                                    <button class="accordion-button alert-info collapsed" type="button"
                                                        data-bs-toggle="collapse" data-bs-target="#AssginRole"
                                                        aria-expanded="true" aria-controls="StudentData">
                                                        AssginRole
                                                    </button>
                                                </h2>
                                                <div id="AssginRole" class="accordion-collapse collapse "
                                                    aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                    <div class="accordion-body">
                                                        <select class="form-select" id="loginData" aria-label="Default select example">
                                                            <option selected>Select ID </option>
                                                            <option value="1" class="btn btn-outline-success"></option>
                                
                                                          </select>
                                                        <div class="col-md-6">
                                                            <div class="col-6">
                                                              <h1>${assginRole}</h1>
                                                    
                                                              <input type="text" class="form-control" name="St_id" placeholder=" name">
                                                            </div>
                                                            <form class="row g-3" method="Post" action="assginRole">
                                                              <div class="col-md-4">
                                                                <label for="validationDefault01" class="form-label">User name</label>
                                                                <input type="text" class="form-control" name="userName" id="validationDefault01"
                                                                  value="Mark" required>
                                                              </div>
                                                              <div class="col-md-4">
                                                                <label for="validationDefault02" class="form-label">Password</label>
                                                                <input type="password" class="form-control" name="userPassword" id="validationDefault02"
                                                                  value="" required>
                                                              </div>
                                    
                                    
                                    
                                    
                                                              <div class="col-12">
                                                                <button class="btn btn-primary" type="submit">Submit form</button>
                                                              </div>
                                                            </form>
                                                          </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container col-md-2 col-sm-4 offset-5">
            <div class="row flex-row">
                <div class="col-md-12 "> <button class="rounded" id="blackBackgroundColor">Black</button>
                    <button class="rounded" id="blueBackgroundColor">light</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script src="/PowerOfEducation/StaticFile/js/dashBroad.js"></script>

        <script src="/PowerOfEducation/StaticFile/js/adminpanel.js"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--     
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>