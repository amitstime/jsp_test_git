<%-- 
    Document   : index_wo_inc
    Created on : May 23, 2016, 8:04:18 AM
    Author     : AM
--%>
<%
    if (session.getAttribute("user") == null) 
    {
        response.sendRedirect("../index.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dashboard W/O Includes</title>
<link rel="stylesheet" type="text/css" href="../css/admin_style.css"/>
</head>

<body>
    <div id="container">
        <div id="header">
            <div class="logo"> 
            </div>
            <div class="company-name">
                <h2>Company Name</h2>
            </div>
            <div class="user-login-info">
                Welcome, 
                <% 
                   // out.println("User"); 
                    out.println(session.getAttribute("user"));

                %> | <a href="../logout.jsp">Logout</a>
            </div>
        </div>
        <% 
            String BASE_URL = "http://localhost:8080/jsp_test/admin";

        %>
        <div id="left">
            <div class="menu"><a href="<%=BASE_URL%>/dashboard/index.jsp"> Dashboard </a> </div>
            <h1>User</h1>
            <div class="menu"><a href="<%=BASE_URL%>/user/add.jsp"> Add User </a> </div>
            <div class="menu"><a href="<%=BASE_URL%>/user/index.jsp"> List User </a></div>    

        </div>

        <div id="main">
                <h3> Dashboard </h3>
            <p> Dashboard content here ..... </p>
        </div>

        <div class="clear_float"></div>
        <div id="footer">
                Footer Section
        </div>
    
    </div>

</body>
</html>


