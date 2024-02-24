
$(document).ready(function() {

	$("#Register").hide();

	$("#btnSubmit").click(function(event) {

		//stop submit the form, we will post it manually.
		event.preventDefault();



		fire_ajax_submit();

	});


});

function fire_ajax_submit() {

	// Get form
	var form = $('#fileUploadForm')[0];

	var data = new FormData(form);

	data.append("CustomField", "This is some extra data, testing");

	$("#btnSubmit").prop("disabled", true);

	$.ajax({
		type: "POST",
		enctype: 'multipart/form-data',
		url: "/registrationImage",
		data: data,
		//http://api.jquery.com/jQuery.ajax/
		//https://developer.mozilla.org/en-US/docs/Web/API/FormData/Using_FormData_Objects
		processData: false, //prevent jQuery from automatically transforming the data into a query string
		contentType: false,
		cache: false,
		timeout: 600000,
		success: function(data) {

			$("#response").text(data);
			console.log("SUCCESS : ", data);
			$("#btnSubmit").hide();

			$("#imageUpload").hide();
			$("#Register").show();


		},
		error: function(e) {

			$("#result").text(e.responseText);
			console.log("ERROR : ", e);
			$("#btnSubmit").prop("disabled", false);

		}
	});

}
function ageCount() {
	var date1 = new Date();
	var dob = $('#dob').val();
	var date2 = new Date(dob);
	var pattern = /^\d{0,2}\/\d{0,2}\/\d{4}$/; //Regex to validate date format (dd/mm/yyyy)
	if (pattern.test(dob)) {
		var y1 = date1.getFullYear(); //getting current year
		var y2 = date2.getFullYear(); //getting dob year
		var age = y1 - y2;           //calculating age
		$('#dob').val(age);
		return true;
	} else {
		alert("Invalid date format. Please Input in (dd/mm/yyyy) format!");
		return false;
	}

}
function confirm() {
	Swal.fire({
		position: 'center',
		icon: 'success',
		title: 'Your work has been saved',
		showConfirmButton: false,
		timer: 1500
	})
	


}

function confirmteacher() {
	Swal.fire({
		position: 'center',
		icon: 'success',
		title: 'Your Data has been saved we soon contact you',
		showConfirmButton: false,
		timer: 1500
	})
	window.location.replace = '/';


}

function feeOrder() {

	$.ajax({
		type: "POST",
		url: "/ordercreate",
		//http://api.jquery.com/jQuery.ajax/
		//https://developer.mozilla.org/en-US/docs/Web/API/FormData/Using_FormData_Objects
		processData: false, //prevent jQuery from automatically transforming the data into a query string
		contentType: false,
		cache: false,
		timeout: 600000,
		success: function(data) {
			Swal.fire({
				position: 'center',
				icon: 'success',
				title: 'wait for a while',
				showConfirmButton: false,
				timer: 1500
			})
			
			let options = {
				"key": "rzp_test_zMx8FOEf804F7e",
				"amount": 200000, // Example: 2000 paise = INR 20
				"name": "CMS @HS",
				"description": "Cousrse Fee",
				"image": "/img/CMSLog.jpg",// COMPANY LOGO
				"currency": "INR",
				"order_id": data.id,
				"handler": function(response) {
					console.log(response);


					// AFTER TRANSACTION IS COMPLETE YOU WILL GET THE RESPONSE HERE.
					Swal.fire({
						position: 'center',
						icon: 'success',
						title: response.razorpay_payment_id,
						showConfirmButton: false,
						timer: 1500
					})
					if (response.razorpay_payment_id != null) {

						$.post("/sexfullyRedirect", function(data, status) {
						
							Swal.fire({
								position: 'center',
								icon: 'success',
								title:  status + 'very soon you will get mail about next process, with your credentials',
								showConfirmButton: false,
								timer: 2500,
								
								
							})
						});
						setTimeout(() => {
							
							alert("helo")
 history.pushState({}, null, "/logout");
}, "1000")
					
							
					

					}


				},
				"prefill": {
					"name": "Arvin", // pass customer name
					"email": 'arvinmishraji@gmail.com',// customer email
					"contact": '+918851402921' //customer phone no.
				},
				"notes": {
					"address": "address" //customer address 
				},
				"theme": {
					"color": "#15b8f3" // screen color
				}
			};
			console.log(options);
			var propay = new Razorpay(options);
			propay.open();

			console.log("SUCCESS : ", data);
			
		},
		error: function(e) {

			$("#result").text(e.responseText);
			console.log("ERROR : ", e);

		}
	});


}


