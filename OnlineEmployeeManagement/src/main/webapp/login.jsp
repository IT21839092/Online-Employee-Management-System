<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/estyle.css">
    <script src="js/login.js"></script>
</head>
<body>
	<div class="container_1">
     <h1>Login</h1>
     
	<form action="<%=request.getContextPath()%>/LoginServlet" method="post">
		
		<label>User Name</label>
		<input type="text" name="uid"><br><br>
		<label>Password</label>
		<input type="password" name="pass"><br><br>
		
		<input type="submit" name="submit" value="login">
		
		<br><br>
		
		<button name="subbtn">
		<a href="register.jsp" style="text-decoration:none;margin-top: 20px;
  		padding: 10px 20px;
  		background-color: #333;
  		color: #fff;
  		border: none;
  		border-radius: 10px;
  		font-size: 18px;
  		cursor: pointer;">
		Sign Up</a></button>
		
	</form>
	</div>
	
	<div class="background">

    	<div class="navigation_1">
                    
                        <span class="title_1">
                            <ion-icon name="man-outline"></ion-icon>
                        </span>
                        <span class="title_1">Employee Management System</span>

                    <div class="cardHeader_1">
                        <a href="Login.html" class="btn_1">Login</a>
                    </div>


         </div>
	
	
	<div class="user_1">
                    <img src="imgs/home.jpeg"  class="user_2">
                </div>
                </div>
	
</body>
</html>