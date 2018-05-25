<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    
    
    
    <c:import var="XMLBelge1" url="Silver.xml" />
   
    <x:parse  var="BelgeCoz1" doc="${XMLBelge1}" />
    
    <x:forEach var="sis" select="$BelgeCoz1/Kelle/manita">
        <x:if select="$sis/ad = 'Eda'">
            <h2><c:out  value="Hala aklımda = " /> </h2>
        </x:if>
        <x:choose>
            <x:when select="$sis/bolum = 'Lojistik-2'">
                <b><c:out value="Bodrumlu ulan bukadar kahpe olmaz bi insan be = " /></b>
            </x:when>
        </x:choose>
        
            <x:out  select="$sis/ad" /> -
            <x:out  select="$sis/soyad"/> -
            <x:out  select="$sis/bolum" /> -
            <x:out  select="$sis/yas" /> <br/>       
    </x:forEach>
    
             <br/><br/><br/>
             
            ${applicationScope.Tinaztepe} <br/>
            ${applicationScope.Kerim} <br/>,
            ${applicationScope.Allame} <br/>
</body>
</html>
