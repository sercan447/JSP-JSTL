<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
 
    <%
        application.setAttribute("Allame", "Manifesto");
        application.setAttribute("Tinaztepe", "Aydın");
        application.setAttribute("Kerim", "Fırat");

    %>
    
    <jsp:include page="sansar.jsp">
        <jsp:param name="yurek" value="KALK"  />
    </jsp:include>
    <jsp:include page="allame.jsp">
        <jsp:param name="kalk" value="GENE" />
    </jsp:include>
    <a href="ders-2.jsp"> ders-2.jsp git</a>
    
</body>
</html>
