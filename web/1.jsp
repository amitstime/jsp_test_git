<%-- 
    Document   : 1.jsp
    Created on : May 15, 2016, 10:25:28 PM
    Author     : AM
--%>

<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.javaIdentifierType"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%! int i=1, sum1 = 0; %>
            
        <%
            out.println("<hr> line above");
            for(i=1; i<=10; i++)
            {
                out.println("<br>value of i is: " + i);  
                sum1 = sum1 + i;
            }
        
        %>
        
        
        <!--  Simple Declarations -->
        <%! int a=10, b = 20; %>  
        <hr>The sum is <%= sum1 %><br>
        <%= (new java.util.Date().toString())%>
        
        <%
            int sum = a + b;
            //out.println("<br> The sum is : " + sum);            
        %>        

        
    </body>
</html>
