<%-- 
    Document   : admin_header
    Created on : May 23, 2016, 7:26:47 AM
    Author     : AM
--%>

<%
    if (session.getAttribute("user") == null) 
    {
        response.sendRedirect("../index.jsp");
    } 
%>

<div id="header">
        <div class="logo"> Web Admin Panel</div>

    <div class="user-login-info">
        Welcome, 
        <% 
           // out.println("User"); 
            out.println(session.getAttribute("user"));
        
        %> | <a href="../logout.jsp">Logout</a>
    </div>
</div>
<div class="clear_float"></div>