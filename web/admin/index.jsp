<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>    
        <link rel="stylesheet" type="text/css" href="css/admin_style.css"/>
        <style>
            .errormsg{
                    display: block;
                    width: 250px;
                    height: 22px;
                    line-height: 22px;
                    font-size : 13px;
                    color: white;
                    font-weight: bold;
                    background: #FF9D9D url(images/stop.gif) no-repeat 10px center; 
                    padding: 3px 10px 3px 40px;
                    margin: 10px 0;
                    border: 1px solid #FF0000;
                    /* border-bottom: 2px solid #FF0000; */
            }

        </style>
    </head>
	
    <body> 
            <form name="f1" action="login_validate.jsp" method="POST">   	        
    <div style="padding-top:200px;"> 
            <div style="border:1px solid gray; width:330px; margin:0 auto;">		        		        
            <table width="330px" align="center" style="border-collapse: collapse; font-size:14px" cellpadding="10px">
                <tr bgcolor="#4F8ECB">				
                    <td colspan=2"">  <b> Login </b></td>						
                </tr>
                <tr>				
                    <td width="130"> Username </td>
                    <td width="200"> <input type="text" name="txtUsername">  </td>
                </tr>							 	
                <tr>				
                    <td> Password </td>
                    <td> <input type="password" name="txtPassword">  </td>
                </tr>	
                <tr>				
                    <td>&nbsp;  </td>
                    <td> <input name="btnLogin" type="submit" value="Login"> </td>
                </tr>
                <tr>				
                    <td colspan="2"> <% %> </td>
                </tr>
            </table>
            </div>          	        		
            </div>	
            </form>
    </body>
</html>
