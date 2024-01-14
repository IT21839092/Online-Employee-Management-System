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
    <link rel="stylesheet" href="css/salaryStyle.css">
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
                    <a href="admin.jsp">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="jobinsert.jsp">
                        <span class="icon">
                            <ion-icon name="list-outline"></ion-icon>
                        </span>
                        <span class="title">Assign Jobs</span>
                    </a>
                </li>

                <li>
                    <a href="worktimeinsert.jsp">
                        <span class="icon">
                            <ion-icon name="time-outline"></ion-icon>
                        </span>
                        <span class="title">Generate work time</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="Receipt-outline"></ion-icon>
                        </span>
                        <span class="title">Generate Pay Slip</span>
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
	
	<c:url value="updateSalary.jsp" var="salUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="basic" value="${bsal}"/>
		<c:param name="etf" value="${etf}"/>
		<c:param name="epf" value="${epf}"/>
		<c:param name="OT" value="${ot}"/>
		<c:param name="special" value="${spcl}"/>
		<c:param name="total" value="${tot}"/>
	</c:url>
	
	<a href="${salUpdate}">
	<input type="submit" name="update" value="Update Salary">
	</a>
	
	<c:url value="deleteSalary.jsp" var="salDelete">
		<c:param name="id" value="${id}"/>
		<c:param name="basic" value="${bsal}"/>
		<c:param name="etf" value="${etf}"/>
		<c:param name="epf" value="${epf}"/>
		<c:param name="OT" value="${ot}"/>
		<c:param name="special" value="${spcl}"/>
		<c:param name="total" value="${tot}"/>
	</c:url>
	
	<a href="${salDelete}">
	<input type="submit" name="delete" value="Delete Salary">
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