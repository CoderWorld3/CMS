<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored = "false" %>
<html lang="en">
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
        integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style type="text/css">
body {
        background-color: #8d8d8d;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto;
        height: 100vh;
      }</style>

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>



${name} 

 


<button>fee</button>


 <jsp:include page="/WEB-INF/View/footer.jsp"/>
 <script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script> 
<script type="text/javascript">
  /*var options = {
    "key": "rzp_test_KEY",
    "amount": 2000, // Example: 2000 paise = INR 20
    "name": "MERCHANT name",
    "description": "description",
    "image": "img/logo.png",// COMPANY LOGO
    "handler": function (response) {
        console.log(response);
        // AFTER TRANSACTION IS COMPLETE YOU WILL GET THE RESPONSE HERE.
    },
    "prefill": {
        "name": "ABC", // pass customer name
        "email": 'A@A.COM',// customer email
        "contact": '+919123456780' //customer phone no.
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
propay.open();  */ </script>
</body>
</html>