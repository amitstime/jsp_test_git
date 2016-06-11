<%-- 
    Document   : index.jsp
    Created on : May 15, 2016, 11:20:59 PM
    Author     : AM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("user") != null) {
        %>        
        Welcome <%=session.getAttribute("user")%>
        <a href='../logout.jsp'>Log out</a>   
        <%  }
            else
            {
                response.sendRedirect("../index.jsp");
            }
        
        
        %>
        
        
        
<%        
            String BASE_URL = "http://localhost:8080/jsp_test/admin";
     
%>		
<div id="left">
    <h1>Dashboard</h1>
        <div class="menu"><a href="<%=BASE_URL%>/dashboard "> Dashboard </a> </div>

    <h1>User</h1>
    <div class="menu"><a href="<%=BASE_URL%>/user/add.jsp"> Add User </a> </div>
    <div class="menu"><a href="<%=BASE_URL%>/user/index.php"> List User </a></div>    

    <h1>Menu Page</h1>
    <div class="menu"><a href="<%=BASE_URL%>/menu/add.jsp"> Add Menu Page </a></div> 
    <div class="menu"><a href="<%=BASE_URL%>/menu/index.php"> List Menu Page </a></div>

    <h1>Contact</h1>
    <div class="menu"><a href="<%=BASE_URL%>/contact/add.jsp"> Add Contact </a> </div>
    <div class="menu"><a href="<%=BASE_URL%>/contact/index.jsp"> List Contact </a></div>

    <h1>Banner</h1>
    <div class="menu"><a href="<%=BASE_URL%>/banner/add.jsp"> Add Banner </a> </div>
    <div class="menu"><a href="<%=BASE_URL%>/banner/index.jsp"> List Banner </a></div>  

     <h1>Product</h1>
    <div class="menu"><a href="<%=BASE_URL%>/category/add.jsp"> Add Category </a> </div>
    <div class="menu"><a href="<%=BASE_URL%>/category/index.jsp"> List Category</a></div>
     <div class="menu"><a href="<%=BASE_URL%>/product/add.jsp"> Add  Product </a></div>  
     <div class="menu"><a href="<%=BASE_URL%>/product/index.jsp"> List  Product </a></div>                        
                   
</div>
        
    </body>
</html>
