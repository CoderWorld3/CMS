
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
@charset "UTF-8";

body {
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	font-family: 'Jost', sans-serif;
	background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
}

.main {
	width: 350px;
	height: 55vh;
	background: red;
	overflow: hidden;
	background:
		url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38")
		no-repeat center/cover;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
}

#chk {
	display: none;
}

.signup {
	position: relative;
	width: 100%;
	height: 63vh;
}

label {
	color: #fff;
	font-size: 2.3em;
	justify-content: center;
	display: flex;
	margin: 60px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

input {
	width: 60%;
	height: 5vh;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}

button {
	width: 60%;
	height: 40px;
	margin: 10px auto;
	justify-content: center;
	display: block;
	color: #fff;
	background: #573b8a;
	font-size: 1em;
	font-weight: bold;
	margin-top: 20px;
	outline: none;
	border: none;
	border-radius: 5px;
	transition: .2s ease-in;
	cursor: pointer;
}

button:hover {
	background: #6d44b8;
}

.login {
	height: 460px;
	background: #eee;
	border-radius: 60%/10%;
	transform: translateY(-180px);
	transition: .8s ease-in-out;
}

.login label {
	color: #573b8a;
	transform: scale(.6);
}

#chk:checked ~ .login {
	transform: translateY(-500px);
}

#chk:checked ~ .login label {
	transform: scale(1);
}

#chk:checked ~ .signup label {
	transform: scale(.6);
}

marquee {
	color: red;
}

a {
	text-decoration: none;
}
</style>


</head>
<body>
	<div class="main">
		<input type="checkbox" id="chk" aria-hidden="true">

		<div class="signup" >
			<form action="normalluseradd" method="POST">
				<label for="chk" aria-hidden="true">Sign Up</label> <input
					type="text" name="userName" placeholder="User name" required="">
				<input type="email" name="userEmail" placeholder="Email" required="">
				<input type="password" name="password" placeholder="Password"
					required="">
				<input type="submit">
				<marquee>
					<a href="/">Home</a>Click on Sign Label
				</marquee>



			</form>
		</div>

		<div class="login">
			<form action="/signNormallUser" method="post">
				<label for="chk" aria-hidden="true">Sign In</label> <input
					type="email" name="email" placeholder="Email" required="">
				<input type="password" name="pswd" placeholder="Password"
					required="">
						<input type="submit">
				<button>SignUp</button>

				<marquee>
					<a href="/">Home</a>Click on SignIn Label
				</marquee>
			</form>
		</div>
	</div>



	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>
