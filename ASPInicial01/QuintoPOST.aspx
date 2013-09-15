<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
<div>
<form action="QuintoPOST.aspx" method="post">
Pon tu nombre:
<input type="text" name="fname"/><br/><br/>
<input type="submit" value="Submit"/>
</form>
</div>
    <div>
    <% 

if (Request.Form["fname"] != null)
{
    Response.Write("Hola " + Request.Form["fname"].ToString());
    Response.Write ("<br/>¿Cómo estás hoy?");
}

    %>
    </div>
</body>
</html>
