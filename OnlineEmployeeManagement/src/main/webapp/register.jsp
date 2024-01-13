<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Employee Management</title>
    <link rel="stylesheet" type="text/css" href="css/estyle.css">
    <script src="js/registerValidate.js"></script>
  </head>
  <body>
  	
    <div class="container_2">
      <h1>Registration Form</h1>
     <br>
     <form onsubmit="return checkPassword()" action="<%=request.getContextPath()%>/RegisterServlet" method="post">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <label for="fName">Name</label>
    <input type="text" name="fname">


   
    <label>Gender</label>

    Male
      <input type="radio" name="gender" value="male">
    Female
      <input type="radio" name="gender" value="female">
    
     
     <label >Mobile Number</label>
     <input type="tel"  name="mnumber" maxlength="10" pattern="[0-9]{10}" required>
     


     <label for="email">Email</label>
     <input type="email" name="femail" pattern="[a-z0-9._%+-]+@[a-z0-9._%+-]+\.[a-z]{2-3}" required>
     


    <label >Enter the age</label>
    <input type="number" name="fage">
    
    
    <br><label>Choose Highest Qualification
    <select name="qualifications">
      <option>Select one</option>
      <option>Only Diploma</option>
      <option>Degree</option>
      <option>Degree with Bsc hons</option>
      <option>Degree with Msc hons</option>
      <option>Degree with Phd</option>
      
    </select>
    </label><br>
    
    <label>Other</label>
    <textarea name="other"></textarea>
    


    
     <label for="lName" >User Name</label>
     <input type="text" name="Uname" required>
     
     
     <label >Password</label>
     <input type="password"  id="pwd"  name="pwd2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}" required><br><br>
     
     
     <label >Re-enter Password</label>
     <input type="password"  id="pwd1" name="pwd3" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}" required>
     
    
    <label for="check">Accept Privacy Policy And Terms
    <input type="checkbox" id="check"  value="accept" onclick="enableButton()" required >
    </label>

    <div class="cardHeader_1">
       <input type="submit" id="subbtn"  value="submit" disabled>
    </div>

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
  
    <script src="js/login.js"></script>
  </body>
</html>