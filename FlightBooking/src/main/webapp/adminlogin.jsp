<!DOCTYPE html>
<html>
<head>
<title>Welcome To Airline Booking</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="js/userlogin.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link rel="icon" href="image/logo.jpg">
<link rel="stylesheet" href="css/adminlogin.css">
</head>
<body>
	<!-- Nav Bar Begin -->
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<!-- Brand/logo -->
		<img src="image/logo.jpg" alt="Logo"
			style="width: 40px; border: 2px solid transparent; border-radius: 10px;">
		<!-- Links -->
		<ul class="nav  font-weight-bold">
			<li class="nav-item  "><a class="nav-link" href="adminlogin.jsp">Home
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Book
					Flight </a></li>
			<li class="nav-item"><a class="nav-link" href="#">Search
					Flight </a></li>
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#myModal"
				style="width: 100px; border: 2px solid rgb(255, 255, 255); border-radius: 10px; font-weight: bold;">Login</button>
			<button type="button" class="btn btn-light text-primary"
				style="width: 100px; margin-left: 10px; border: 2px solid rgb(73, 119, 245); border-radius: 10px; font-weight: bold;">
				<a href="signup.jsp">Sign Up</a>
			</button>
		</ul>
	</nav>
	<!--Nav Bar End-->
	<!-- Home section Begin -->
	<div class="home-section">
		<div class="media shadow-lg p-3 mt-5 ">
			<img src="image/img1.jpg" alt="Image of page" style="width: 60%;">
			<div class="media-body">
				<h1 class="text-primary" style="font-family: cursive;">Welcome
					To Airline Booking</h1>
				<h4 class=""
					style="font-family: cursive; word-spacing: 15px; font-weight: lighter;">
					<i class="fas fa-search"></i>Search <i class="fas fa-book"></i>Book
					<i class="fas fa-plane"></i>Travel
				</h4>
				<p class="">Online flight booking with Airline. Book your
					domestic & international flight tickets at the lowest airfare with
					best offers at airline.com.</p>
				<button type="button" class="btn btn-light  text-primary"
					style="width: 150px; border: 2px solid rgb(73, 119, 245); border-radius: 10px; font-weight: bold;">
					Explore more <i class="fas fa-angle-double-right"></i>
				</button>
			</div>
		</div>
	</div>
	<!--Home section End-->
	<!-- The Modal -->
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
					<form role="form" name="f1" onsubmit="return senddata()" >

						<div class="form-group">
							<label for="email">Email:</label> <input type="email"
								class="form-control" id="email" placeholder="Enter email"
								name="email" required>
						</div>
						<div class="form-group">
							<label for="pwd">Password:</label> <input type="password"
								class="form-control" id="pwd" placeholder="Enter password"
								name="pswd" required>
						</div>
						<div id="op" style="color:red;"></div>
						<div class="form-group form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox" name="remember">
								Remember me
							</label> <a name="forgotpass" href="#"> Forgot Password?</a>
						</div>
						<button type="button" value="Login"  id="login" onclick="senddata()" class="btn btn-primary mb-4"
							style="width: 100px; border: 2px solid rgb(255, 255, 255); border-radius: 10px; font-weight: bold;">Login</button>
						<button type="button" class="btn btn-light text-primary mb-4"
							style="width: 100px; border: 2px solid rgb(73, 119, 245); border-radius: 10px; font-weight: bold;">
							<a href="signup.jsp">Sign Up</a>
						</button>
					</form>
				</div>
			</div>
		</div>
</body>
</html>
