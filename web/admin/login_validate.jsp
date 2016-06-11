<%@page import="DB_Package.DBHelper, java.sql.*;" %> 
<%
    String username = request.getParameter("txtUsername");
    String password = request.getParameter("txtPassword"); 
    String sql = "Select * from user Where Username='" + username +
             "' AND Password='" + password + "'";
   
        DBHelper dHelper = new DBHelper();
        ResultSet rs = dHelper.executeQuery(sql);
        
       /* Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydbweek10",
                "root", "");
        Statement st = con.createStatement(); 
        ResultSet rs;
        rs = st.executeQuery(sql);*/

        if (rs.next()) {
            session.setAttribute("user", username);   
            response.sendRedirect("dashboard/index.jsp");
        } 
        else {
            out.println("Invalid password <a href='index.jsp'>try again</a>");
        }    
    
%>
