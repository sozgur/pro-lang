<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript">
function validateForm()
{
	var x = document.forms["sign_up_form"]["tel"].value;
	 
	if (x == null || x == "")
	{
		alert("Telefon Numarası boş bırakılamaz!");
		return false;
	}
	

</script>
	
<div class="container">
<jsp:include page="menu.jsp"></jsp:include>
      <form method="post" class="form-signin" onsubmit = "return validateForm()" accept-charset="UTF-8" action="siparis" enctype="text/plain" name="sign_up_form">
        <h2 class="form-signin-heading"></h2>
        Telefon: <input type="text" name="telno" class="input-block-level" >
        Mesajınız:<textarea rows="5" name="mesaj" cols="50" class="input-block-level" > 
        </textarea>
        <button class="btn btn-large btn-primary" type="submit">Gönder</button><br>
        <p class="uyari"><font color="#E80000"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></font></p> 
      </form>

    </div> <!-- /container -->

<jsp:include page="footer.jsp"></jsp:include>