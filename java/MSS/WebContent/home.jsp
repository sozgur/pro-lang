<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:include page="header.jsp"></jsp:include>

<!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="img/slide-01.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Estetik</h1>
              <p class="lead">Kayıtlı kullanıcılara yapılan indirimlerden yararlanmak ve kampanyalardan haberdar olmak için siteye üye olun</p>
              
            </div>
          </div>
        </div>
        <div class="item">
          <img src="img/slide-02.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Dayanıklı</h1>
              <p class="lead">Kayıtlı kullanıcılara yapılan indirimlerden yararlanmak ve kampanyalardan haberdar olmak için siteye üye olun</p>
              
            </div>
          </div>
        </div>
        <div class="item">
          <img src="img/slide-03.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Kullanışlı</h1>
              <p class="lead">Kayıtlı kullanıcılara yapılan indirimlerden yararlanmak ve kampanyalardan haberdar olmak için siteye üye olun</p>
              
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div><!-- /.carousel -->


        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sipariş Ürünleri</li>
            <li><a href="YemekOdasi.jsp">Yemek Odası</a></li>
                  <li><a href="YatakOdasi.jsp">Yatak Odası</a></li>
				  <li><a href="CocukOdasi.jsp">Çocuk Odası</a></li>
				  <li><a href="MutfakDolabi.jsp">Mutfak Dolabı</a></li>
                  <li><a href="BanyoTakimi.jsp">Banyo Takımı</a></li></li>
            </ul>
			
          </div><!--/.well -->
		  
		  <div class="well sidebar-nav">
            
             <li class="nav-header">Sipariş Formu</li>
             
             <p class="text-left">Ürün ön siparişi vermek için lütfen tıklayınız.</p>
			 <a href="siparisform.jsp"> <img src="img/sepet.jpg" alt=""></a>
            
			</div>
			
			<div class="well sidebar-nav">
            
             <li class="nav-header">Biz Sizi Arayalım</li>
             
			 <a href="beniara.jsp"> Sizi Müşteri Temsilcimiz Arasın </a>

			</div>
        </div><!--/span-->

    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="span4">
          <img src="img/efes_yemek_odasi01.jpg" class="img-rounded" width="300" height="300">
          <h5>Efes Yemek Odası Takımı </h5>
          <p><a class="btn" href="efes_yemek_odasi.jsp">İncele &raquo;</a></p>	  
        </div><!-- /.span4 -->
		
	  
	  <div class="span4">
          <img src="img/pirlanta_yemek_odasi01.jpg" class="img-rounded" width="300" height="300">
          <h5>Pırlanta Yemek Odası Takımı</h5>
          <p><a class="btn" href="pirlanta_yemek_odasi.jsp">İncele &raquo;</a></p>
	    </div><!-- /.span4 -->

		
     <div class="span4">
          <img src="img/efes_yemek_odasi01.jpg" class="img-rounded" width="300" height="300">
          <h5>Odak Yemek Odası Takımı</h5>
          <p><a class="btn" href="odak_yemek_odasi.jsp">İncele &raquo;</a></p>
        </div><!-- /.span4 --> 
		
		<div class="span4">
          <img src="img/serah_yemek_odasi.jpg" class="img-rounded" width="300" height="300">
          <h5>Serah Yemek Odası Takımı</h5>
          <p><a class="btn" href="serah_yemek_odasi.jsp">İncele &raquo;</a></p>
        </div><!-- /.span4 -->
		
	
      </div><!-- /.row -->



<jsp:include page="footer.jsp"></jsp:include>