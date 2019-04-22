<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Task MGR - Welcome</title>
<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Business Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- //Meta-Tags -->

<!-- css files -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/loginstyle.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //css files -->

<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- //google fonts -->

</head>
<body>

	<div class="signupform">
		<div class="container">
			<!-- main content -->
			<div class="agile_info">
				<div class="w3l_form">
					<div class="left_grid_info">
						<h1>Task Management</h1>
						<p>A platform to manage tasks, for Developers, Project
							managers and Team Leaders</p>
						<img src="images/login.png" alt="" height="90%" />
					</div>
				</div>
				<div class="w3_info">
					<h2>Login to your Account</h2>
					<p>Enter your details to login.</p>
					<form action="dashboard" method="post">
						<label>Email Address</label>
						<div class="input-group">
							<span class="fa fa-envelope" aria-hidden="true"></span> <input
								id="uname" type="text" name="uname"
								placeholder="Enter Your Email" required>
						</div>
						<label>Password</label>
						<div class="input-group">
							<span class="fa fa-lock" aria-hidden="true"></span> <input
								id="psw" type="Password" name="psw" placeholder="Enter Password"
								required>
						</div>
						<button id="loginbtn" class="btn btn-danger btn-block"
							type="submit">Login</button>
					</form>
					<p class="account1">
						Dont have an account? <a href="#">Register here</a>
					</p>
				</div>
			</div>
			<!-- //main content -->
		</div>
		<!-- footer -->
		<div class="footer"></div>
		<!-- footer -->
	</div>

</body>

<script src="js/login.js">
	
</script>
</html>