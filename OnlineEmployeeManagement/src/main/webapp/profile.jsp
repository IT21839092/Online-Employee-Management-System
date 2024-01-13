<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <a href="index.html">
                        <span class="icon">
                            <ion-icon name="man-outline"></ion-icon>
                        </span>
                        <span class="title">Employee Management</span>    
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="people-outline"></ion-icon>
                        </span>
                        <span class="title">Profile</span>
                    </a>
                </li>

                <li>
                    <a href="viewjoblist.jsp">
                        <span class="icon">
                            <ion-icon name="list-outline"></ion-icon>
                        </span>
                        <span class="title">Job List</span>
                    </a>
                </li>


					<li>
                    <a href="viewworksheet.jsp">
                        <span class="icon">
                            <ion-icon name="settings-outline"></ion-icon>
                        </span>
                        <span class="title">Work Assign</span>
                    </a>
                </li>
                
                <li>
                    <a href="viewslip.jsp">
                        <span class="icon">
                            <ion-icon name="Receipt-outline"></ion-icon>
                        </span>
                        <span class="title">Pay Slip</span>
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
                    <img src="imgs/customer01.jpg" alt=""> 
                </div>
            </div>


            <!-- ================ Order Details List ================= -->
            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>Hello, Welcome!</h2>
                        <a href="#" class="btn">Report</a>
                        
                    </div>

                    <c:forEach var="emp" items="${empDetails}">
	
	<c:set var="id" value="${emp.pid}"/>
	<c:set var="name" value="${emp.name}"/>
	<c:set var="gen" value="${emp.gender}"/>
	<c:set var="mob" value="${emp.mobile}"/>
	<c:set var="mail" value="${emp.email}"/>
	<c:set var="age" value="${emp.age}"/>
	<c:set var="qua" value="${emp.quali}"/>
	<c:set var="ot" value="${emp.other}"/>
	<c:set var="uname" value="${emp.userName}"/>
	<c:set var="pasw" value="${emp.passsword}"/>
	
	<table border="5px">
	
	<tr>
	<td>Employee ID</td>
	<td>${emp.pid}</td>
	</tr>
	
	<tr>
	<td>Employee Name</td>
	<td>${emp.name}</td>
	</tr>
	
	<tr>
	<td>Gender</td>
	<td>${emp.gender}</td>
	</tr>
	
	<tr>
	<td>Mobile Number</td>
	<td>${emp.mobile}</td>
	</tr>
	
	<tr>
	<td>Email</td>
	<td>${emp.email}</td>
	</tr>
	
	<tr>
	<td>Age</td>
	<td>${emp.age}</td>
	</tr>
	
	<tr>
	<td>Qualifications</td>
	<td>${emp.quali}</td>
	</tr>
	
	<tr>
	<td>Other Qualifications</td>
	<td>${emp.other}</td>
	</tr>
	
	<tr>
	<td>User Name</td>
	<td>${emp.userName}</td>
	</tr>
	
	<tr>
	<td>Password</td>
	<td>${emp.passsword}</td>
	</tr>
	
	</table>
	</c:forEach>
	
	<c:url value="updateEmployee.jsp" var="empUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${mob}"/>
		<c:param name="email" value="${mail}"/>
		<c:param name="quali" value="${qua}"/>
		<c:param name="user" value="${uname}"/>
		<c:param name="pass" value="${pasw}"/>
	</c:url>
	
	<a href="${empUpdate}">
	<input type="submit" name="update" value="Update My Data">
	</a>
	
	<br>
	
	<c:url value="deleteEmployee.jsp" var="empDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${mob}"/>
		<c:param name="email" value="${mail}"/>
		<c:param name="quali" value="${qua}"/>
		<c:param name="user" value="${uname}"/>
		<c:param name="pass" value="${pasw}"/>
	</c:url>
	
	<a href="${empDelete}">
	<input type="submit" name="delete" value="Delete my Profile">
	</a>
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