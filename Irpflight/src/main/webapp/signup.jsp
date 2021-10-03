<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="icon" href="image/logo.jpg">
<link rel="stylesheet" type="text/css" href="css/SignUp.css">
<title>Registration Page</title>
</head>

<body>
	<!-- Nav Bar Begin -->
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<!-- Brand/logo -->
		<img src="image/logo.jpg" alt="Logo"
			style="width: 40px; border: 2px solid transparent; border-radius: 10px;">
		<!-- Links -->
		<ul class="nav  font-weight-bold">
			<li class="nav-item  "><a class="nav-link" href="#">Home </a></li>
			<li class="nav-item"><a class="nav-link" href="#">Book
					Flight </a></li>
			<li class="nav-item"><a class="nav-link" href="#">Search
					Flight </a></li>
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#myModal"
				style="width: 100px; border: 2px solid rgb(255, 255, 255); border-radius: 10px; font-weight: bold;">Login</button>
			<button type="button" class="btn btn-light text-primary"
				style="width: 100px; margin-left: 10px; border: 2px solid rgb(73, 119, 245); border-radius: 10px; font-weight: bold;">Sign
				Up</button>
		</ul>
	</nav>
	<!--Nav Bar End-->
	<!-- Modal Start -->

	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="container">
					<h2 class="text-center text-primary ">LOGIN</h2>
					<form action="" method="post">
						<div class="form-group">
							<label for="email">Email:</label> <input type="email"
								class="form-control" id="email" placeholder="Enter email"
								name="email">
						</div>
						<div class="form-group">
							<label for="pwd">Password:</label> <input type="password"
								class="form-control" id="pwd" placeholder="Enter password"
								name="pswd">
						</div>
						<div class="form-group form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox" name="remember">
								Remember me
							</label> <a name="forgotpass" href="#"> Forgot Password?</a>
						</div>
						<button type="submit" class="btn btn-primary mb-4"
							style="width: 100px; border: 2px solid rgb(255, 255, 255); border-radius: 10px; font-weight: bold;">Submit</button>
						<button type="button" class="btn btn-light text-primary mb-4"
							style="width: 100px; border: 2px solid rgb(73, 119, 245); border-radius: 10px; font-weight: bold;">Sign
							Up</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Ends -->
	<!-- Form Start -->
	<section class="form">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 img">
					<img src="image/travel2.jpg" class="img-fluid"
						style="height: 100%;">

					<div class="text-block">
						<h2>Ready to fly</h2>
					</div>
				</div>
				<div class="col-lg-5">
					<form action="CustomerSignUpServlet" method="post">
						<h1 style="text-align: center;" class="text-primary">Sign Up</h1>
						<label for="Email">User Name</label> <input
							class="form-control form-control-lg" type="email"
							placeholder="Email" required="" name="email"><br> <label
							for="Password">Password</label> <input
							class="form-control form-control-lg" type="password"
							placeholder="Password" required="" name="password"><br>
						<label for="Password">Confirm Password</label> <input
							class="form-control form-control-lg" type="password"
							placeholder="Password" required="" name="password"><br>

						<input class="btn btn-outline-primary" type="submit"
							value="Register">
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Form Ends -->


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


</body>
</html>