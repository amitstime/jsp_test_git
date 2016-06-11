<%-- 
    Document   : add
    Created on : Jun 7, 2016, 10:32:05 AM
    Author     : AM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="../css/admin_style.css"/>
        <script src="../../js/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
        <script src="../../js/tinymce/jscripts/tiny_mce/tinymce.js" type="text/javascript"></script>
        
    </head>
	
    <body>    	
        <div id="container">
            <jsp:include page="../includes/admin_header.jsp"/>
            <jsp:include page="../includes/admin_left.jsp"/>   
            <div id="main">
		<h4 style="padding-left: 200px;"><a href="contact_list.php"> List Menu Page</a></h4> 
		<h3> Add Menu Page </h3>
                    <form name="f1" method="get">
                    <table cellspacing="10px">           
                            <tr>
                                <td width="100px"> Menu Title</td>
                                <td width="200px"> <input type="text" name="txtMenuTitle"> </td>
                            </tr>
                            <tr>				
                                <td> Menu Article </td>
                                <td> <textarea  name="txtArticle" id="art"> </textarea> </td>
                            </tr>
                            <tr>				
                                <td> Menu Order </td>
                                <td> <input type="text" name="txtOrder"></td>
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