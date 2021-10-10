<%@page contentType="text/html" pageEncoding="UTF-8"  %>

<html>
<head>
<style>

@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

*{
	box-sizing: border-box;
}

body {
     background-image: url("https://image.winudf.com/v2/image/Y29tLnN1bW1lcmFwcHMudHJ1Y2t3YWxscGFwZXJzX3NjcmVlbl82XzE1MDg5MzE3ODRfMDg1/screen-6.jpg?h=800&fakeurl=1&type=.jpg");
	 min-height: 100%;
  
   background-size: cover;
   background-repeat: no-repeat;
   background-position: center center;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
}

h1 {
	font-weight: bold;
	margin: 0;
}

h2 {
	text-align: center;

  
}

p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

a {
	color: #333;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
	
}
pre{
color: #333;
font-family: 'Montserrat', sans-serif;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
	
}

button {
	border-radius: 20px;
	border: 1px solid black;
	background-color:grey;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

button:active {
	transform: scale(0.95);
}

button:focus {
	outline: none;
}

button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.container {
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 700px;
	max-width: 90%;
	min-height: 480px;
	margin-left: 570px;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.sign-up-container {
	left: 0;
	width: 50%;
	opacity: 0;
	z-index: 1;
}

.container.right-panel-active .sign-up-container {
	transform: translateX(100%);
	opacity: 1;
	z-index: 5;
	animation: show 0.6s;
}



.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
}

.container.right-panel-active .overlay-container{
	transform: translateX(-100%);
}

.overlay {
	background-color: #000000;
background-image: linear-gradient(315deg, #000000 0%, #414141 74%);
	
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
  	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
  	transform: translateX(50%);
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.overlay-left {
	transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
	transform: translateX(0);
}

.overlay-right {
	right: 0;
	transform: translateX(0);
}

.container.right-panel-active .overlay-right {
	transform: translateX(20%);
}

.social-container {
	margin: 20px 0;
}

.social-container a {
	border: 1px solid #DDDDDD;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}

footer {
    background-color: #222;
    color: #fff;
    font-size: 14px;
    bottom: 0;
    position: fixed;
    left: 0;
    right: 0;
    text-align: center;
    z-index: 999;
}

footer p {
    margin: 10px 0;
}

footer i {
    color: red;
}

footer a {
    color: #3c97bf;
    text-decoration: none;
}
</style>
</head>
<body  >

<h1>Transport Company </h1>
<pre> 
</pre>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="/signUp" method="post">
			<h1>Create Account</h1>
			
			<input type="text" placeholder="Name" name="name"/>
			<input type="text" placeholder="UserName" name="UserName" />
			<input type="email" placeholder="Email" name="email"/>
			<input type="password" placeholder="Password" name="password"/>
			<input type="hidden" value="ADMIN" name="role"/>
			<input list="loc type" name="loc type" placeholder="Location" name="branch" />
<datalist id="loc type">
  <option value="Chennai">
  <option value="Madurai">
  <option value="Coimbatore">
  <option value="Trichy">
</datalist>
			





			<button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="/authenticate" method="post">
		
			<h1>Log in</h1>
			
			
		
			<input type="text" placeholder="username" name="userName" />
			<input type="password" placeholder="Password" name="password" />
		<!-- 	<input list="Acc type1" name="Acc type1" placeholder="Login As" />
<datalist id="Acc type1">
  <option value="User">
  <option value="Owner">
  <option value="Admin">
  <option value="Manager">
  
</datalist> -->
			<a href="#">Forgot your password?</a>
		<button >Login</button>
			<pre> 
			
<!-- <a href="#">Login as Admin</a>              <a href="#"> Login as Manager</a>
			</pre> -->
				
					
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome !!!</h1>
				<p>To keep connected with us please login with your personal info</p>
				
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<h1>Welcome!!!</h1>
				<pre>
				
				</pre>
				
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>



<script>

const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
</script>
</body>
</html>