<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Example</title>
</head>

<body style="background-color:#83BDD6">
    <div style = "margin-left:1in;margin-top: 1in">
<table class="table" BORDER=5 ALIGN="CENTER">
<TR><TH CLASS="TITLE"> Haberler </TABLE>


<ol>
<li><jsp:include page="/WEB-INF/Item1.jsp" />
<li><jsp:include page="/WEB-INF/Item2.jsp" />
<li><jsp:include page="/WEB-INF/Item3.jsp" />
</ol>
</div>
   

</body>
</html>