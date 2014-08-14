<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<jsp:include page="menu.jsp"></jsp:include>
      <form method="post" class="form-signin" action="loginservelt">
        <h2 class="form-signin-heading">Lütfen Giriş Yapın</h2>
        <input type="text" name="kullaniciadi" class="input-block-level" placeholder="Kullanıcı Adı ya da Email">
        <input type="password" name= "parola" class="input-block-level" placeholder="Parola">
        <button class="btn btn-large btn-primary" type="submit">Giriş</button><br>
        <p class="uyari"><font color="#E80000"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></font></p> 
      </form>

    </div> <!-- /container -->

<jsp:include page="footer.jsp"></jsp:include>