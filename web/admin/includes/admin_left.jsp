<%-- 
    Document   : admin_left
    Created on : May 23, 2016, 7:34:01 AM
    Author     : AM
--%>

<% 
    String BASE_URL = "http://localhost:8080/jsp_test/admin";
     
%>		
<div id="left">
    <h1>Dashboard</h1>
        <div class="menu"><a href="<%=BASE_URL%>/dashboard "> Dashboard </a> </div>

    <h1>User</h1>
    <div class="menu"><a href="<%=BASE_URL%>/user/add.jsp"> Add User </a> </div>
    <div class="menu"><a href="<%=BASE_URL%>/user/index.jsp"> List User </a></div>    

    <h1>Menu Page</h1>
    <div class="menu"><a href="<%=BASE_URL%>/menupage/add.jsp"> Add Menu Page </a></div> 
    <div class="menu"><a href="<%=BASE_URL%>/menupage/index.jsp"> List Menu Page </a></div>

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