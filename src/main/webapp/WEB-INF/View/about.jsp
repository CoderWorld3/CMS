<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" /><style>
@import
	url("https://fonts.googleapis.com/css2?family=Pacifico&display=swap");

body {
	margin: 0;
	box-sizing: border-box;
}

.container {
	line-height: 150%;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 15px;
	background-color: #E5E4E2;
}

.header h1 {
	color: #222222;
	font-size: 30px;
	font-family: "Pacifico", cursive;
}

.header .social a {
	padding: 0 5px;
	color: #488AC7;
}

.left {
	float: left;
	width: 180px;
	margin: 0;
	padding: 1em;
}

.content {
	margin-left: 190px;
	border-left: 1px solid #d4d4d4;
	padding: 1em;
	overflow: hidden;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

li a {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
}

li a.active {
	background-color: #84e4e2;
	color: white;
}

li a:hover:not(.active) {
	background-color: #29292a;
	color: white;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
	margin: 30px 0;
}

td, th {
	border: 1px solid #dddddd;
	padding: 8px;
}

tr:nth-child(1) {
	background-color: #46C7C7;
	color: white;
}

tr td i.fas {
	display: block;
	font-size: 35px;
	text-align: center;
}

.footer {
	padding: 55px 20px;
	background-color: #46C7C7;
	color: white;
	text-align: center;
	width: 100%;
	position:fixed;
	bottom:0px;
}
</style>
</head>
<body>
	<div class="container">
		<header class="header">
			<h1>CMS</h1>
			<div class="social">
				<a href="#"><i class="fab fa-facebook"></i></a> <a href="#"><i
					class="fab fa-instagram"></i></a> <a href="#"><i
					class="fab fa-twitter"></i></a>
			</div>
		</header>
		<aside class="left">
			<img src="/img/CMSlog.jpg" width="160px" />
			<ul>
				<li><a href="/">Home</a></li>
				
				<li><a href="#">Contact</a></li>
				<li><a class="active" href="/about">About</a></li>
			</ul>
			<br>
			<br>
			<p>“When you have a dream, you’ve got to grab it and never let go.
		</aside>
		<main class="content">
			<h2>About CMS</h2>
			<h3>The aim of the entity reflects its long term outcomes while
				its objective indicates the short term target.</h3>
			<h3>The goal CMS is to offer everyone equal opportunities to
				develop their abilities to improve their level of education and to
				retrain for a new career.</h3>
			<h3>They are also the ideal way to become eligible for pursuing
				a typical university degree afterwards.</h3>
			<h3>The more that you read, the more things you will know, the
				more that you learn, the more places youâll go</h3>
			<br>
			<h2>How Can I Help You?</h2>
			<table>
				<tr>
					<th>Best Teacher</th>
					<th>Online Data about CMS</th>
					<th>Testing you in everyTime</th>
				</tr>
				<tr>
					<td><i class="fa-solid fa-person-chalkboard"></i></td>
					<td><i class="fa-solid fa-database"></i></td>
					<td><i class="fa-solid fa-microscope"></i></td>
				</tr>
				<tr>
					<td>Our Teacher are best to explain the single data</td>
					<td>CMS has full data about single concept</td>
					<td>CMS test you every day to make your next day is better then Today</td>
				</tr>
				<tr>
			</table>
			<form>
		</main>
		<footer class="footer">&copy; Copyright CMS</footer>
	</div>
</body>
</html>
