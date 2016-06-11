<%-- 
    Document   : logout.jsp
    Created on : May 15, 2016, 11:21:24 PM
    Author     : AM
--%>

<%
    session.setAttribute("user", null);
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
