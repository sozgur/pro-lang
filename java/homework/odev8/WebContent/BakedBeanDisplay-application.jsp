<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Baked Bean Values: application-based Sharing</title>
<link rel=STYLESHEET href="JSP-Styles.css" type="text/css">
</head>
<body style="background-color:#FF7878">
<div style = "margin-left: 0.5in;">
<H1>Baked Bean Values: application-based Sharing</H1>
<jsp:useBean id="applicationBean" class="odev.BakedBean"
scope="application" />
<jsp:setProperty name="applicationBean" property="*" />
<H2 style = "color: purple">Bean level:
<jsp:getProperty name="applicationBean" property="level" /></H2>
<H2 style = "color: purple">Dish bean goes with:
<jsp:getProperty name="applicationBean" property="goesWith"/></H2>
<jsp:include page="BakedBeanDisplay-session.jsp" />
</div>
</body>
</html>