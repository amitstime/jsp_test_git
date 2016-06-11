<%-- 
    Document   : form1_get
    Created on : May 15, 2016, 10:47:18 PM
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
        <h1>Read Form Submitted Data</h1>
        First Name is <%= request.getParameter("txtFirstName") %><br>
        Last Name is <%= request.getParameter("txtLastName")  %><br>
        Gender <%= request.getParameter("rdoGender")%>
        <%
            String hobbies = "";
            if(request.getParameter("chkTravelling") !=  "")
                hobbies += request.getParameter("chkTravelling") + ",";
            if(request.getParameter("chkSports") !=  "")
                hobbies += request.getParameter("chkSports") + ",";
        %>
        
        Hobbies : <%=hobbies %>s
    </body>
</html>
