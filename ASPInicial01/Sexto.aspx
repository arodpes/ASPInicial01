<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
<div>
<form action="Sexto.aspx" method="post">
Número de días:
<input type="text" name="nveces"/><br/><br/>
<input type="submit" value="Submit"/>
</form>
</div>
    <div>
    <% 

    if (Request.Form["nveces"] != null)
    {
        int nd= int.Parse(Request.Form["nveces"].ToString());
        DateTime h = DateTime.Now;
        Response.Write("Nº de días " + nd.ToString());
        Response.Write("<table BORDER='1'>");
        Response.Write("<tr>");
        Response.Write("<th>Día</th>");
        Response.Write("<th>Mes</th>");
        Response.Write("<th>Año</th>");
        Response.Write("</tr>");  
        for (int i = 0; i < nd; i++)
        {
            h=h.AddDays(1);
            Response.Write("<tr>");
            Response.Write("<td>"+h.Day.ToString() +"</td>");
            Response.Write("<td>" + h.Month.ToString() + "</td>");
            Response.Write("<td>" + h.Year.ToString() + "</td>");
            Response.Write("</tr>");   
        }
        Response.Write("</table>");
    }

    %>
    </div>
</body>
</html>
