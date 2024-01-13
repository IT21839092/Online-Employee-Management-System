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
                    <a href="profile.jsp">
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
                    <a href="#">
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

                    <c:forEach var="sal" items="${salDetails}">
	
	<c:set var="id" value="${sal.sid}" />
	<c:set var="bsal" value="${sal.basic_sal}"/>
	<c:set var="etf" value="${sal.ETF}"/>
	<c:set var="epf" value="${sal.EPF}"/>
	<c:set var="ot" value="${sal.OT_bonus}"/>
	<c:set var="spcl" value="${sal.other_bonus}"/>
	<c:set var="tot" value="${sal.total_salary}"/>
	
	<table border="5px">
	
	<tr>
	<td>Salary ID</td>
	<td>${sal.sid}</td>
	</tr>
	
	<tr>
	<td>Basic Salary</td>
	<td>${sal.basic_sal}</td>
	</tr>
	
	<tr>
	<td>ETF</td>
	<td>${sal.ETF}</td>
	</tr>
	
	<tr>
	<td>EPF</td>
	<td>${sal.EPF}</td>
	</tr>
	
	<tr>
	<td>Over Time Bonus</td>
	<td>${sal.OT_bonus}</td>
	</tr>
	
	<tr>
	<td>Special Bonuses</td>
	<td>${sal.other_bonus}</td>
	</tr>
	
	<tr>
	<td>Total Salary</td>
	<td>${sal.total_salary}</td>
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