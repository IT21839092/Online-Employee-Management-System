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
                    <a href="#">
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

                   <c:forEach var="cus" items="${jobDetails}">
	
	<c:set var="jid" value="${cus.jid}"/>
	<c:set var="title" value="${cus.title}"/>
	<c:set var="description" value="${cus.description}"/>
	<c:set var="startDate" value="${cus.start_date}"/>
	<c:set var="endDate" value="${cus.end_date}"/>

	<table>
	<tr>
		<td>job ID</td>
		<td>${cus.jid}</td>
	</tr>
	<tr>
		<td>title</td>
		<td>${cus.title}</td>
	</tr>
	<tr>
		<td>Description</td>
		<td>${cus.description}</td>
	</tr>
	<tr>
		<td>StartDate</td>
		<td>${cus.start_date}</td>
	</tr>
	<tr>
		<td>endDate</td>
		<td>${cus.end_date}</td>
		
	</tr>
	</table>
	
	
	</c:forEach>
	
	
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