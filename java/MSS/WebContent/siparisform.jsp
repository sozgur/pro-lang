<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript">
function ePostaKont(email)
{
    var duzenli = new RegExp(/^[a-z]{1}[\d\w\.-]+@[\d\w-]{3,}\.[\w]{2,3}(\.\w{2})?$/);
    
    return duzenli.test(email);
}

function kontrol()
{
    var giris = document.getElementById('epGiris');
    
    if(ePostaKont(giris.value))
        giris.style.backgroundColor = "white";
    else
        giris.style.backgroundColor = "#F0D0D0";
}
function validateForm()
{
	var x = document.forms["sign_up_form"]["tel"].value;
	 
	if (x == null || x == "")
	{
		alert("Telefon Numarası boş bırakılamaz!");
		return false;
	}
}	


</script>
	
<div class="container">
<jsp:include page="menu.jsp"></jsp:include>
      <form method="post" class="form-signin" onsubmit = "return validateForm()" accept-charset="UTF-8" action="" name="sign_up_form">
        <h2 class="form-signin-heading">Ön Sipariş Formu</h2>
        Ad:<input type="text" name="ad" class="input-block-level" >
        Soyad:<input type="text" name= "soyad" class="input-block-level">
        E-mail:<input type="text" id="epGiris" onKeyUp="kontrol()" name="email" class="input-block-level">
        Telefon: <input type="text" name="telno" class="input-block-level" >
        Mesajınız:<textarea rows="7" name="mesaj" cols="50" class="input-block-level" >
Aşağıda belirtilen üründen ön sipariş vermek istiyorum.

Ürün Adı :

Ürün Kodu : 
        </textarea>
        <button class="btn btn-large btn-primary" type="submit">Gönder</button><br>
        <p class="uyari"><font color="#E80000"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></font></p> 
      </form>

    </div> <!-- /container -->

<jsp:include page="footer.jsp"></jsp:include>