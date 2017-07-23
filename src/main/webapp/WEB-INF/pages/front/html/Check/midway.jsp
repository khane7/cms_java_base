<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- s : header -->
<jsp:include page="../top.jsp"/>
<!-- e : header -->

<!-- s : contents -->
<div id="contents" class="clearfix">
  <div class="inner-layout">
    <!-- s : top nav -->
    <div class="top-sub-nav clearfix">
      <h2>Midway Check Out 중도 퇴사 안내</h2>

      <ul class="nav">
        <li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
        <li><a href="#">Check In/Out</a></li>
        <li class="active"><a href="#">Midway Check Out</a></li>
      </ul>
    </div>
    <!-- e : top nav -->

    <!-- s : top banner -->
    <div class="sub-top-bnr">
      <img src="/images/sub/bnr_top.jpg" alt="">
    </div>
    <!-- e : top banner -->

    <!-- s : sub contents -->
    <div class="sub-contents clearfix">
     
		<h3>On Campus Dormitory 교내 생활관</h3>
		<ul class="chlist-cwd fx">	
			<li><p><span>1</span></p><div><span class="fb2">Visit Residence Hall Administration Team  </span> <br/>- Fill out midway checkout application form<br/><em class="pointclr">- Submit copy of the bank account</em><br><br/>
			<span class="fb">학생생활관 행정팀 방문</span><br/>- 중도퇴사원서 작성<br/><em class="pointclr">- 통장 사본 제출 </em></div></li>
			<li><p><span>2</span></p><div><span class="fb2">Get a refund according to the rate of refund policy</span><br><a href="/html/Check/refund" class="btn btn-default">View Refund Policy for On campus dormitory</a><br>It will take 2~3 weeks to get refund from the day applied<br/><br/>환불기준표에 따라 환불 진행 (2-3주 소요)<a href="/html/Check/refund" class="btn btn-default">교내 기숙사 환불기준표 </a></div></li>
			<li class="end"><p><span>3</span></p><div><span class="fb2">Leave the dorm </span><br>퇴사 </div></li>
		</ul>
		<br/><br/>
		

		<h3>Off Campus Dormitory 외부 임대숙사</h3>
		<ul class="chlist-cwd fx">	
			<li><p><span>1</span></p><div><span class="fb2">Visit Residence Hall Administration Team   </span> <br/>- Fill out midway checkout application form<br/><em class="pointclr">- Submit copy of the bank account</em><br><br/>
			<span class="fb">학생생활관 행정팀 방문</span><br/>- 중도퇴사원서 작성<br/><em class="pointclr">- 통장 사본 제출 </em></div></li>
			<li><p><span>2</span></p><div><span class="fb2">Get a refund according to the rate of refund policy</span><br><a href="/html/Check/refund2" class="btn btn-default">View Refund Policy for Off Campus Dormitory</a><br>It will take 2~3 weeks to get refund from the day applied<br/><br/>환불기준표에 따라 환불 진행 (2-3주 소요)<a href="/html/Check/refund2" class="btn btn-default">외부 임대숙소 환불기준표</a></div></li>
			<li class="end"><p><span>3</span></p><div><span class="fb2">Leave the dorm </span><br>퇴사 </div></li>
		</ul>
		<br/><br/>

      
    </div>
    <!-- e : sub contents -->

  </div>
</div>
<!-- e : contents -->

<!-- s : layer popup -->
<div class="layer dor-gallery-layer hidden">
<div><img src="" id="show-image"></div>

<div class="btn-close tc">CLOSE</div>
</div>
<!-- e : layer popup -->
<!-- s : footer -->

<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


  <script>
  
    $(function() {
      $("body").on("click", ".room-preview img", function() {
        var _img = $(this).attr("src");

        $(".dor-gallery-layer #show-image").attr("src", _img);
        $(".dor-gallery-layer").bPopup();
      });

      $(".btn-close").click(function() {
        $(".dor-gallery-layer").bPopup().close();
      });

      $(".other-site").click(function() {
        $(".link-list").toggle();
      });
    // sub tab
    $("#tab-subBox li a").click(function(e) {
      e.preventDefault();
      var _subLk = $(this).attr("href");
      $("#tab-subBox li a").removeClass("on");
      $("#subBox1, #subBox2, #subBox3, #subBox4").hide();
      $(this).addClass("on");
      $(_subLk).show();
    });
    
    $("#tab-subBoxs li a").click(function(e) {
        e.preventDefault();
        var _subLk = $(this).attr("href");
        $("#tab-subBoxs li a").removeClass("on");
        $("#subBoxs1, #subBoxs2").hide();
        $(this).addClass("on");
        $(_subLk).show();
      });
    
    $("#tab-subBoxss li a").click(function(e) {
        e.preventDefault();
        var _subLk = $(this).attr("href");
        $("#tab-subBoxss li a").removeClass("on");
        $("#subBoxss1, #subBoxss2").hide();
        $(this).addClass("on");
        $(_subLk).show();
      });
    
    // in page
    $("h3 a, .goSubTab3").click(function(e) {
      e.preventDefault();
      var _target = $(this).attr("href");
      $("#tab-subBox li").each(function() {
        var _tab = $("a", this).attr("href");
        if(_target == _tab) {
          $("a", this).trigger("click");
          $('html,body').animate({scrollTop:$("body").offset().top}, 500);
        }
      });
      $("#tab-subBoxs li").each(function() {
          var _tab = $("a", this).attr("href");
          if(_target == _tab) {
            $("a", this).trigger("click");
            $('html,body').animate({scrollTop:$("body").offset().top}, 500);
          }
        });
      $("#tab-subBoxss li").each(function() {
          var _tab = $("a", this).attr("href");
          if(_target == _tab) {
            $("a", this).trigger("click");
            $('html,body').animate({scrollTop:$("body").offset().top}, 500);
          }
        });
    });
    });

  $(window).load(function() {
    var _hash = location.hash;
    if(_hash) {
      var ftab, stab;
      if(_hash.indexOf(",") != -1) {
        var t = _hash.split(",");
        ftab = t[0];
        stab = t[1];
        /* alert( ftab );
        alert( stab ); */
      } else {
        ftab = _hash;
      }

      $(".guide-tab li").each(function() {
        var _target = $("a", this).attr("href");

        if(ftab == _target) {
          $("a", this).trigger("click");
          return;
        }
      });

      if(stab) {
        $("#tab-subBox li").each(function() {
          var _target = $("a", this).attr("href");
          if(stab == _target) {
            $("a", this).trigger("click");
            return;
          }
        });
        $("#tab-subBoxs li").each(function() {
            var _target = $("a", this).attr("href");
            if(stab == _target) {
              $("a", this).trigger("click");
              return;
            }
          });
        $("#tab-subBoxss li").each(function() {
            var _target = $("a", this).attr("href");
            if(stab == _target) {
              $("a", this).trigger("click");
              return;
            }
          });
      }
    }
  });
  </script>