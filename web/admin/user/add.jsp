<%-- 
    Document   : add.jsp
    Created on : May 23, 2016, 7:46:57 AM
    Author     : AM
--%>
<%@page import="DB_Package.DBHelper;" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
            <title> Form 1 </title>
            <link rel="stylesheet" type="text/css" href="../css/admin_style.css"/>
    </head>
	
    <body>    	
        <div id="container">
            <jsp:include page="../includes/admin_header.jsp"/>
            <jsp:include page="../includes/admin_left.jsp"/>   
            <div id="main">
                <h4 style="padding-left: 200px;"><a href="user_list.php"> List User </a></h4> 
                <h3> Add User </h3>
                <form name="f1" method="POST">
                    <table cellspacing="10px">           
                            <tr>
                                    <td width="150px"> Full Name </td>
                                    <td> <input type="text" name="txtFullName"> </td>
                            </tr>
                            <tr>				
                                    <td> Username </td>
                                    <td> <input type="text" name="txtUsername">  </td>
                            </tr>
                            <tr>				
                                    <td> Email </td>
                                    <td> <input type="text" name="txtEmail">  </td>
                            </tr>				
        <tr>				
                                    <td> Password </td>
                                    <td> <input type="password" name="txtPassword">  </td>
                            </tr>
        <tr>				
                                    <td> Confirm Password </td>
                                    <td> <input type="password" name="txtConfirmPassword">  </td>
                            </tr>
        <tr>				
                                    <td> Active </td>
                                    <td> <input type="checkbox" name="chkActive">  </td>
                            </tr>
                            <tr>				
                                    <td>&nbsp;  </td>
                                    <td> <input name="btnSave" type="submit" value="Save"> </td>
                            </tr>

                    </table>
                    </form>
                </div>

             <jsp:include page="../includes/admin_footer.jsp"/>                			
        </div>

    </body>

</html>

<%   
    if (request.getParameter("btnSave") != null) 
    {        
        String fullName = request.getParameter("txtFullName");
    	String username = request.getParameter("txtUsername");
    	String email = request.getParameter("txtEmail");
    	String password = request.getParameter("txtPassword");   
        int active = 0;        
        if(request.getParameter("chkActive") != null) 
        {
            active=1;
        }
                	
    	String sql = "INSERT INTO User(FullName, Username, Email, Password, IsActive)" 
               + " VALUES ('" + fullName + "', '" + username + "', '" + email + "', '" + password + "'," + active + ")";
        DBHelper dbHelper = new DBHelper();
        dbHelper.executeUpdate(sql);
        response.sendRedirect("index.jsp");
                           	
    }                          
%>