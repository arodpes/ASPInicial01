<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <div>
    <% 
    DateTime h=DateTime.Now;
    Response.Write(h.Hour.ToString() + " horas </br>" + h.Minute.ToString() + " minutos </br>"); 
    if (h.Hour<12) {
    Response.Write("Buenos días");
    }
    else if (h.Hour < 19)
    {
        Response.Write("Buenas tardes");
    }
    else
    {
        Response.Write("Buenas noches");       
    }
    %>
    </div>
</body>
</html>
