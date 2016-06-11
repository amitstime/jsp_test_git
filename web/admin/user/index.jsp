<%-- 
    Document   : index
    Created on : May 23, 2016, 7:47:21 AM
    Author     : AM
--%>

<%@page import="DB_Package.DBHelper, java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../css/admin_style.css"/>
    <script language="javascript">
        function ConfirmDelete()
        {
            return confirm("Are you sure to delete this data?") ;	
        }
    </script>
</head>
	
<body>    	
    <div id="container">
    	<jsp:include page="../includes/admin_header.jsp" />
    	<jsp:include page="../includes/admin_left.jsp" />
    	
    	<div id="main">
		    <h4 style="padding-left: 200px;"><a href="add.jsp"> Add User </a></h4> 
		    <h3> List User </h3>
		    <table style="border-collapse: collapse; font-size:14px" border="1px" cellpadding="10px">
		        <tr>
		            <th>S.N.</th>
		            <th>Full Name</th>
		            <th>Username</th>
		            <th>Email</th>                    
                            <th>Active</th>
		            <th>Edit</th>
		            <th>Delete</th>
		        </tr>
		       
                    <%
		            String sql = "Select * from user";  
                            DBHelper dbHelper = new DBHelper();
                            ResultSet rs= dbHelper.executeQuery(sql);	
                            int rowCount = 1;	
                            while(rs.next())		            
		            {						
		                int idValue = rs.getInt("UserID");
                                if(rowCount%2 != 0)
                                        out.println("<tr bgcolor='white'>");
                                else
                                    out.println("<tr>");
		                out.println("<td>" + rowCount + "</td>");
		                out.println("<td>" + rs.getString("FullName") + "</td>");
		                out.println("<td>" + rs.getString("Username") + "</td>");
		                out.println("<td>" + rs.getString("Email") + "</td>");                       
                        
                                String active = "";
                                if(rs.getInt("IsActive") == 1)
                                    active = "YES";
                                else
                                    active = "NO";

                                out.println("<td>" + active + "</td>");
                                out.println("<td><a href='user_edit.php?id=String idValue'> Edit </a></td>");                
                                out.println("<td><a href='user_delete.php?id=String idValue' onclick='return ConfirmDelete()'> Delete </a></td>");
                                out.println("</tr>");
				rowCount++;
		            }                
		        %>        
		    </table> 
		</div>
		<jsp:include page="../includes/admin_footer.jsp" />
	</div>	  
</body>
</html>