<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Baked Bean Values: session-based Sharing</title>
<link rel=STYLESHEET href="JSP-Styles.css" type="text/css">
</head>
<body style="background-color:#FF7878">
<div style = "margin-left: 0.5in;">
<H1>Baked Bean Values: session-based Sharing</H1>
<jsp:useBean id="sessionBean" class="odev.BakedBean" scope="session" />
<jsp:setProperty name="sessionBean" property="*" />
<H2 style = "color: purple">Bean level:
<jsp:getProperty name="sessionBean" property="level" /></H2>
<H2 style = "color: purple">Dish bean goes with:
<jsp:getProperty name="sessionBean" property="goesWith" /></H2>
<jsp:include page="BakedBeanDisplay-request.jsp" />
</div>
</body>
</html>