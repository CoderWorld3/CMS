$(document).ready(function() {

	$("#btnSubmit").click(function(event) {

		//stop submit the form, we will post it manually.
		event.preventDefault();



	});


});
let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
	sidebar.classList.toggle("active");
	if (sidebar.classList.contains("active")) {
		sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
	} else
		sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
$(function() {
	// Open Popup
	$('[popup-open]').on('click', function() {
		var popup_name = $(this).attr('popup-open');
		$('[popup-name="' + popup_name + '"]').fadeIn(300);
	});

	// Close Popup
	$('[popup-close]').on('click', function() {
		var popup_name = $(this).attr('popup-close');
		$('[popup-name="' + popup_name + '"]').fadeOut(300);
	});

	// Close Popup When Click Outside
	$('.popup').on(
		'click',
		function() {
			var popup_name = $(this).find('[popup-close]').attr(
				'popup-close');
			$('[popup-name="' + popup_name + '"]').fadeOut(300);
		}).children().click(function() {
			return false;
		});

});

$('#problem').click(function() {
			/* 	const args = [$('#solutionValueToSave').val(),$('#solutionKeyToSave').val()];
			 */var data = {
		'problemName': $('#problemToSave').val(),
		'solutionValueToSave': $('#solutionValueToSave').val(),
		'solutionKeyToSave': $('#solutionKeyToSave').val()

	}
	/* 	$('#solutionKeyToSave').val($('#problemToSave').val()) */

	/* console.log($('#solutionKeyToSave').val()); */

	$.ajax('/saveProblem', {
		//dataType: 'json', // type of response data
		method: 'Post',
		data: data,
		timeout: 500, // timeout milliseconds
		success: function(data, status, xhr) { // success callback function

			$('#problemToSave').val(" ");
			$('#solutionToSave').val(" ")
			$('#solutionValueToSave').val(" ")
			$('#response').text("Done");

		},
		error: function(jqXhr, textStatus, errorMessage) { // error callback 
			$('p').append('Error: ' + errorMessage);
		}
	});
});
$('#update').click(function() {
	var data = {
		'problemName': $('#problemToSave').val(),
		'problemKeySolution': $('#solutionKeyToSave').val(),
		'problemValueSolution': $('#solutionValueToSave').val()

	}

	$.ajax('/saveProblem', {
		//dataType: 'json', // type of response data
		method: 'Post',
		data: data,
		timeout: 500, // timeout milliseconds
		success: function(data, status, xhr) { // success callback function

			$('#problemToSave').val(" ");
			$('#solutionToSave').val(" ")
			$('#solutionValueToSave').val(" ")
			$('#response').text("Done");

		},
		error: function(jqXhr, textStatus, errorMessage) { // error callback 
			$('p').append('Error: ' + errorMessage);
		}
	});
});
$.get("/roles", function(data, status) {


	$.each(data, function(key, value) {

		$('#roleid').append(
			'<option id=' + value.role + '>' + value.role + '</option>');
	});


});
$.get("/getuserDetailWithRole", function(data, status) {


	$.each(data, function(key, value) {

		$('#deleteuser').append(
			'<option id=' + value.userid + '>' + value.userid + '</option>');
				$('#updateuser').append(
			'<option id=' + value.userid + '>' + value.userid  + '</option>');
	});


});


$.post("/getlistofuser", {
	'usertype': 'student'
}, function(data, status) {
	/* console.log(data); *//*  */

	$.each(data, function(key, value) {
		$('#whatnew').append(
			"<tr>\
					<td>" + value.userName.toUpperCase()
			+ "</td>\
					<td>" + " ---> "
			+ value.userType.toUpperCase()
			+ "</td>\
					</tr>");
		$('#adduserid').append(
			'<option id=' + value.userid + '>' + value.userid + " "
			+ value.userType + '</option>');
	

	})
});
$.post("/getlistofuser", {
	'usertype': 'teacher'
}, function(data, status) {
	/* console.log(data); *//*  */

	$.each(data, function(key, value) {
		$('#whatnew').append(
			"<tr border border-3 m-2 p-5 shadow-lg' >\
					<td>"
			+ value.userName.toUpperCase()
			+ "</td>\
					<td>" + " ---> "
			+ value.userType.toUpperCase()
			+ "</td>\
					</tr> <br/> <hr/>");
		$('#adduserid').append(
			'<option id=' + value.userid + '>' + value.userid + " "
			+ value.userType + '</option>');
//		$('#deleteuser').append(
//			'<option id=' + value.userid + '>' + value.userid + " "
//			+ value.userType + '</option>');
//		$('#updateuser').append(
//			'<option id=' + value.userid + '>' + value.userid + " "
//			+ value.userType + '</option>');
	})

});

function changeFunc() {
	$.post("/getlistofuserbyid", {
		'usertype': $('#adduserid').val()
	}, function(data, status) {
		/* console.log(data); *//*  */
		$('#firstname').val(JSON.stringify(data.userName))
		$('#lastname').val(JSON.stringify(data.lastName))
		$('#email').val(JSON.stringify(data.email))
		$('#phone').val(JSON.stringify(data.phonenumber))
		/* alert(obj ) */
		/* 	 $.each(data, function(key, value) {
				 
				 alert(key + value)
						
			})  */

	});
}
function changeFuncDelete() {
	$.post("/getuserDetailWithRoleByid", {
		'id': $('#deleteuser').val()
	}, function(data, status) {
		
		 console.log(data); /*  */
		$('#deletefirstname').val(JSON.stringify(data.userName))
		$('#deletelastname').val(JSON.stringify(data.lastName))
		$('#deleteemail').val(JSON.stringify(data.email))
		$('#deletephone').val(JSON.stringify(data.phonenumber))
		/* alert(obj ) */
		/* 	 $.each(data, function(key, value) {
				 
				 alert(key + value)
						
			})  */

	});
}
function changeFuncUpdate() {
	$.post("/getuserDetailWithRoleByid", {
		'id': $('#updateuser').val()
	}, function(data, status) {
		alert(data)
		/* console.log(data); *//*  */
		$('#updatefirstname').val(JSON.stringify(data.userName))
		$('#updatelastname').val(JSON.stringify(data.lastName))
		$('#updateemail').val(JSON.stringify(data.email))
		$('#updatephone').val(JSON.stringify(data.phonenumber))
		/* alert(obj ) */
		/* 	 $.each(data, function(key, value) {
				 
				 alert(key + value)
						
			})  */

	});
}

function saveRole() {

	$.post("/rolessave", {
		'role': $('#rolesave').val()
	}, function(data, status) {
		alert(data + $('#rolesave').val(data));

	});
}
function userDetailWithRole() {
	var formdata ={
		'id': $('#adduserid').val(),
		'role': $('#roleid').val()

		
		
	}

	$.post("/userDetailWithRole",formdata, function(data, status) {
		alert(data + $('#rolesave').val(data));

	});
}
function updateuserDetail() {
	var data1 ={
		'userid': $('#updateuser').val(),
		'userName':$('#updatefirstname').val(),
		'lastName':$('#updatelastname').val(),
		 'email':$('#updateemail').val(),
		'phonenumber':$('#updatephone').val()

		
		
	}

	$.post("/updateuserDetail",data1, function(data, status) {
		alert(data);

	});
}

function onClickDelete(){
	$.post("/deleteuserDetailWithRole",{'id': $('#deleteuser').val()}, function(data, status) {
		alert(data + $('#rolesave').val(data));

	});
	
}
function onClickAddCourses(){
	alert("hello")

   var 	formdata = { 'CourseName' :$('#CourseName').val(),
   'CourseDuration': $('#CourseDuration').val() }
	$.post("/addcourse",formdata, function(data, status) {
		alert("hello")
//		alert(data + $('#rolesave').val(data));

	});
	
}
function onClickDeleteCourse(){
	$.post("/deleteuserDetailWithRole",{'id': $('#deleteuser').val()}, function(data, status) {
		alert(data + $('#rolesave').val(data));

	});
	
}

function onClickUpdate(){
	$.post("/deleteuserDetailWithRole",{'id': $('#deleteuser').val()}, function(data, status) {
		alert(data + $('#rolesave').val(data));

	});
	
}
$.get("/getCourseDetails", function(data, status) {


	$.each(data, function(key, value) {


		$('#deleteCourseId').append(
			'<option id=' + value.userid + '>' + value.courseId + '</option>');
				$('#updateCourseId').append(
			'<option id=' + value.userid + '>' + value.courseId  + '</option>');
	});


});
function changeFuncDeleteCourse() {
	$.post("/deleteCourse", {
		'id': $('#deleteCourseId').val()
	}, function(data, status) {
		alert(data)
		/* console.log(data); *//*  */
		$('#deletecoursename').val(JSON.stringify(data.courseName))
		$('#Courseduration').val(JSON.stringify(data.courseDuration))

		/* alert(obj ) */
		/* 	 $.each(data, function(key, value) {
				 
				 alert(key + value)
						
			})  */

	});
}
function changeFuncUpdateCourse() {
	$.post("/deleteCourse", {
		'id': $('#updateCourseId').val()
	}, function(data, status) {
		alert(data)
		/* console.log(data); *//*  */
		$('#courseupdatename').val(JSON.stringify(data.courseName))
		$('#courseupdateduration').val(JSON.stringify(data.courseDuration))

		/* alert(obj ) */
		/* 	 $.each(data, function(key, value) {
				 
				 alert(key + value)
						
			})  */

	});
}
function updateucourseDetail() {
	var data1 ={
		'courseId': $('#updateCourseId').val(),
		'courseName':$('#courseupdatename').val(),
		'courseDuration':$('#courseupdateduration').val()
	

		
		
	}

	$.post("/updateucourseDetail",data1, function(data, status) {
		alert(data);

	});
}
function deleteCourseByid(){
	$.post("/deleteCourseByid",{'courseId': $('#updateCourseId').val()}, function(data, status) {
		alert(data + $('#rolesave').val(data));

	});
	}