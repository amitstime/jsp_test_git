<%-- 
    Document   : form1_submit
    Created on : May 15, 2016, 10:44:29 PM
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
        <form action="form1_get.jsp" method="post">
            <table cellpadding="10px">
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="txtFirstName"></td>                    
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="txtLastName"></td>
                </tr>
                
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="rdoGender" value = "Male" checked="checked"> Male
                        <input type="radio" name="rdoGender" value="Female"> Female                    
                    </td>
                </tr>
                
                <tr>
                    <td>Hobbies</td>
                    <td>
                        <input type="checkbox" name="chkMovies" value = "Movies" checked="checked"> Movies
                        <input type="checkbox" name="chkTravelling" value="Travelling"> Traveling
                        <input type="checkbox" name="chksports" value="Sports"> Sports
                    </td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>
             
            
            
        </form>
    </body>
</html>
