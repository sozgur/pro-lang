<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" language="JavaScript">

function test1(form) {
  if (form.text1.value == "" )
    alert("Lütfen bir değer girin!");
  if (form.text2.value.indexOf('@', 0) == -1 || form.text2.value == "" )
	  alert("Geçersiz e-mail adresi!");
  else { 
   alert("Merhaba "+form.text1.value+" Form Girisin Tamamlandi!");
  }
}

</script>
</head>

<body bgcolor="#C4ABE9">
Adiniz:<br>
<input type="text" name="text1"><br>
E-mail adresiniz:<br>
<input type="text" name="text2"><br>
<input type="button" name="button2" value="Gonder" onClick="test1(this.form)">
</body>
</html>



