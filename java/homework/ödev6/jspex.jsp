<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Expressions</title>
<meta name="keywords" content="JSP, expression, javaserver,Pages">
<meta name="desciription" content="jsp ile bir ornek">
<link rel=stylesheet href="css/styles.css" type="text/css">
</head>
<body>
<h2>JSP Expressions</h2>
<ul>
 <lı>Current time: <%= new java.util.Date() %>
 <lı>Server:<%= application.getServerInfo() %>
 <lı>Session ID: <%= session.getId() %>
 <lı>The <CODE>testParam</CODE> form parameter: <%= request.getParameter("testParam") %>
</ul>
</body>
</html>