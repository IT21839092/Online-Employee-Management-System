<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="css/estyle.css">
</head>

<body>
    <!-- =============== Navigation ================ -->
    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="index.jsp">
                        <span class="icon">
                            <ion-icon name="man-outline"></ion-icon>
                        </span>
                        <span class="title">Employee Management</span>    
                    </a>
                </li>

                <li>
                    <a href="index.jsp">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="profile.jsp">
                        <span class="icon">
                            <ion-icon name="people-outline"></ion-icon>
                        </span>
                        <span class="title">Profile</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="list-outline"></ion-icon>
                        </span>
                        <span class="title">Job List</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="Receipt-outline"></ion-icon>
                        </span>
                        <span class="title">Pay Slip</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="settings-outline"></ion-icon>
                        </span>
                        <span class="title">Work Assign</span>
                    </a>
                </li>

                <li>
                    <a href="index.jsp">
                        <span class="icon">
                            <ion-icon name="log-out-outline"></ion-icon>
                        </span>
                        <span class="title">Sign Out</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>

                <div class="search">
                    <label>
                        <input type="text" placeholder="Search here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>

                <div class="user">
                    <img src="imgs/customer01.jpg" alt=""></a> 
                </div>
            </div>


            <!-- ================ Order Details List ================= -->
            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>Hello, Welcome!</h2>
                        <a href="#" class="btn">Report</a>
                        
                    </div>

       <%
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String quali=request.getParameter("quali");
		String Uname=request.getParameter("user");
		String password=request.getParameter("pass");
	%>
	
	<form action="<%=request.getContextPath()%>/UpdateEmployeeServlet" method="post">
		<label for="empID">Employee ID</label>
		<input type="text" name="id" value="<%=id%>" readonly><br><br>
		
		<label for="empName">Name</label>
		<input type="text" name="empname" value="<%=name%>"><br><br>
		 
		 <label >Mobile Number</label>
		 <input type="tel"  name="empnumber" value="<%=phone%>" maxlength="10" placeholder="0812387059"   pattern="[0-9]{10}" required><br><br>
		 <label for="email">Email</label>
		 <input type="email" name="empEmail" value="<%=email%>" pattern="[a-z0-9._%+-]+@[a-z0-9._%+-]+\.[a-z]{2-3}" required><br><br>
		
		<label>Choose Highest Qualification</label>
		<select name="empQualifications">
		<option value="<%=quali%>">Select one</option>
      <option value="<%=quali%>">Only Diploma</option>
      <option value="<%=quali%>">Degree</option>
      <option value="<%=quali%>">Degree with Bsc hons</option>
      <option value="<%=quali%>">Degree with Msc hons</option>
      <option value="<%=quali%>">Degree with Phd</option>
		</select><br><br>
		
		 <label for="lName" >User Name</label>
		 <input type="text" name="empUname" value="<%=Uname%>" required><br><br>
		 
		 <label >Password</label>
		 <input type="password"  id="pwd"  name="emppass" value="<%=password%>" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}" required><br><br>
		 
		 <input type="submit" name="submit"  value="Update My Data">
	</form>

                </div>

            </div>
        </div>
    </div>

    <!-- =========== Scripts =========  -->
    <script src="js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>
