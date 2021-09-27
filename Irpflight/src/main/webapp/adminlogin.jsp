<!DOCTYPE html>
<html>
<head>
<title>Welcome To Airline Booking</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link rel="icon" href="image/logo.jpg">
<link rel="stylesheet" href="css/adminlogin.css">
<script>
	var x = 12;
	var y =0;

	document.getElementById('output-area').innerHTML = x;
	document.getElementById('output-area-child').innerHTML = y;

	function button1() {
		document.getElementById('output-area').innerHTML = ++x;
		
		
	}

	function button2() {
		document.getElementById('output-area').innerHTML = --x;
		
	}
	function button3(){
		document.getElementById('output-area-child').innerHTML = ++y;
	}
	function button4(){
		document.getElementById('output-area-child').innerHTML = --y;
	}
</script>

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

	<!-- Search Section Begin -->
	<!-- Tabs -->
	<div id="Flight"
		class="container-sm border  p-3 my-3 bg-white text-primary">
		<h3 class="text-center">Travel the world with us</h3>
		<br>
		<h4 class="bg-primary text-white text-center p-2 my-2">ONE-WAY</h4>
		<div class="row">
			<div class="col-sm-3 ">
				<label style="font-weight: bold;">From</label><br> <input
					class="" type="text" placeholder="Departing from">
			</div>
			<div class="col-sm-3"></div>
			<div class="col-sm-3"></div>
			<div class="col-sm-3">
				<label style="font-weight: bold;">To</label><br> <input
					class="w3-input w3-border" type="text" placeholder="Arriving at">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-2 ">
				<label style="font-weight: bold;">Depart</label><br> <input
					class="" type="date">
			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<label style="font-weight: bold;">Return</label><br> <input
					class="w3-input w3-border" type="date">
			</div>
			<div class="col-sm-2"></div>

			<div class="col-sm-2">
				<label style="font-weight: bold;">Class</label><br>
				<div class="dropdown">
					<select id="cars" name="cars">
						<option value="select">Select the Class</option>
						<option value="economy">Economy</option>
						<option value="business">Business</option>
						<option value="fistclass">First Class</option>
					</select>
				</div>
			</div>

		</div>
		<br>

		<div class="row">


			<div class="col-sm-2">
				<label style="font-weight: bold">Adult:(12+yrs)</label><br> 
				<input type=button value="+" onclick="button1()" style="font-weight:bold;font-size:100%; border:2px solid black;" />
				 <span id="output-area" style="font-weight:bold;font-size:100%; ">12</span>
				 <input type=button value="-" onclick="button2()" style="font-weight:bold;font-size:100%; border:2px solid black;" />

			</div>
			<br>
			<div class="col-sm-2"></div>
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<label style="font-weight: bold">Child:(infant-11yrs)</label><br>
				<input type=button value="+" onclick="button3()" style="font-weight:bold;font-size:100%; border:2px solid black;"/>
				 <span id="output-area-child" style="font-weight:bold;font-size:100%; ">0</span>
					<input type=button value="-" onclick="button4()" style="font-weight:bold;font-size:100%; border:2px solid black;"/>
			</div>
			<div class="col-sm-2"></div>

			<div class="col-sm-2">
				<div
					style="display: flex; justify-content: center; align-items: center;">
					<button type="button" class="btn btn-primary">Search for
						flight</button>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>


	</div>
	</div>


	<!-- Search Section End -->
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
					<form action="CustomerLoginServlet" method="post">
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
						<div id="op" style="color: red;"></div>
						<div class="form-group form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox" name="remember">
								Remember me
							</label> <a name="forgotpass" href="#"> Forgot Password?</a>
						</div>
						<button type="submit" value="login" class="btn btn-primary mb-4"
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
