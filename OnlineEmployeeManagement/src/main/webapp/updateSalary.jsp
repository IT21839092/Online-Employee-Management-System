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
    <link rel="stylesheet" href="css/salaryStyle.css">
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
                    <a href="salary.jsp">
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

        <%String id=request.getParameter("id");
		String bsal=request.getParameter("basic");
		String etf=request.getParameter("etf");
		String epf=request.getParameter("epf");
		String ot=request.getParameter("OT");
		String special=request.getParameter("special");
		String total=request.getParameter("total");%>
	
	<form method="post" action="<%=request.getContextPath()%>/UpdateSalaryServlet">
		<label for="salID">Salary ID</label>
		<input type="text" name="sid" value="<%=id%>" readonly><br><br>
	
		<label>Basic Salary</label>
		<input type="text" name="b_sal" value="<%=bsal%>"><br><br>
	
		<label>ETF</label>
		<input type="text" name="Etf" value="<%=etf%>"><br><br>
		
		<label>EPF</label>
		<input type="text" name="Epf" value="<%=epf%>"><br><br>
	
		<label>Over Time Bonus</label>
		<input type="text" name="OT" value="<%=ot%>"><br><br>
	
		<label>Special Bonus</label>
		<input type="text" name="Sbonus" value="<%=special%>"><br><br>
		
		<label>Total Salary</label>
		<input type="text" name="tot" value="<%=total%>"><br><br>
	
		<input type="submit" name="salary" value="Update Salary">
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