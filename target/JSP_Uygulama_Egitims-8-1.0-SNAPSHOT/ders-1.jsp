<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
  
    <jsp:text> mokoko baby</jsp:text> <br/>
  
    <c:set var="duman" value="1245.9846" />
    
    <fmt:formatNumber  type="percent" value="${duman}" /> <br/>
    <fmt:formatNumber  type="number" value="${duman}" maxIntegerDigits="2" /> <br/>
    <fmt:formatNumber  type="number" value="${duman}" minFractionDigits="4" /> <br/>
    
    <fmt:parseNumber var="a1" type="number" value="${duman}"  integerOnly="true" /> <br/>
    <c:out value="${a1}" /> <br/><br/>
    
    <c:set var="odalar" value="<%= new Date()%>" />
    <fmt:formatDate type="time" value="${odalar}"  dateStyle="short" /> <br/>
    <fmt:formatDate type="date" value="${odalar}"  timeStyle="medium" /> <br/>
    <fmt:formatDate type="both" value="${odalar}"  pattern="yyyy-dd-mm" /> <br/>
    
    <fmt:setTimeZone  value="GMT-5" />
    <fmt:formatDate type="time" value="${odalar}" timeStyle="long"   /> <br/>
    
    
    
    <fmt:requestEncoding  value="UTF-8" />
    <fmt:setLocale  value="tr_TR" />
    
    <fmt:setTimeZone  value="GMT-6" />
    <c:set   var="derle" value="22-1992-09" />
    <fmt:parseDate pattern="dd-yyyy-mm"  value="${derle}" /> <br/>
    
    <br/>
    ${fn:toUpperCase("kendime cevapsız")}
    <br/>
    ${fn:toLowerCase("FARKETMEDEN SENIN OLMUSUM")}
    <br/>
    
    <c:set var="aci" value="     kalbini sikeyim senin oh nasıl bir koku o        " />
    
    <b> <c:out  value="${aci}" /> <br/></b>
    
    <c:out value="uzunlugu ${fn:length(aci)}" /> <br />
    <c:out  value="uzunlugu trim = ${fn:length(fn:trim(aci))}" /> <br/>
    
   
    ${fn:replace(fn:trim(aci),"sikeyim","geberteyim")}
    <br/> <br/>
    
    ${fn:substring(aci, 20, 30)} <br/>
    ${fn:substringBefore(aci, 'oh')} <br/>
    ${fn:substringAfter(aci,"oh")} <br/>
    
    ${fn:startsWith(fn:trim(aci), "kalbini")} <br/>
    ${fn:endsWith(fn:trim(aci), 'o')} <br/>
    
    ${fn:contains(fn:trim(aci), "koku")} <br/>
    ${fn:containsIgnoreCase(fn:trim(aci), "KOku")} <br/>
    
    
    
</body>
</html>
