<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Page</title>
</head>
<body style="background-color:#F70E0E">
<%@ page isErrorPage="true" %>

<div style = "margin-left:1in;margin-top: 1in; width:10in;">
	<table border=5 align="center" class="table table-bordered" >
	<tr><th> HIZ HESAPLAMA HATASI </table>
	<h3> ComputeSpeed.jsp reported the following error: 
    <I><%= exception %></I>. This problem occurred in the following place:
    <PRE>
<%@ page import="java.io.*" %>
<% exception.printStackTrace(new PrintWriter(out)); %>
</PRE>

</body>
</html>