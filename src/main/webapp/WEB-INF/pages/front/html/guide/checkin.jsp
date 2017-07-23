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
      <h2>입사안내</h2>

      <ul class="nav">
        <li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
        <li><a href="#">입퇴사안내</a></li>
        <li class="active"><a href="#">입사안내</a></li>
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
      <ul class="guide-tab">
        <li class="active"><a href="checkin2">입사자선발</a></li>
        <li><a href="checkin4">호실안내</a></li>
        <li><a href="checkin5">호실배정</a></li>
		<li><a href="checkin6">입사등록(입사)</a></li>
		<li><a href="checkin7">입사포기</a></li>
        <!-- <li><a href="checkin">선발일정</a></li> -->
      </ul>

      <div id="guide1" class="guidebox">
         <h3>1. 학기 단위 입사자 모집 및 선발 </h3>
         <table class="table-cen">
        <colgroup>
          <col>
          <col>
          <col>
          <col>
        </colgroup>
        <thead>
          <tr>
          <th>학기</th>
          <th>입사구분</th>
          <th>입사자 선발여부</th>
          <th>비고</th>
          </tr>
        </thead>
        <tbody>
          <tr>
          <td class="pointclr2">1학기</td>
          <td class="pointclr2">정규입사</td>
          <td class="pointclr2">모집 및 선발</td>
          <td></td>
          </tr>
          <tr>
          <td>여름학기</td>
          <td>방학연장</td>
          <td>신규입사자 모집안함</td>
          <td>정규입사자에 한하여 방학연장 허가</td>
          </tr>
          <tr>
          <td class="pointclr2">2학기</td>
          <td class="pointclr2">정규입사</td>
          <td class="pointclr2">모집 및 선발</td>
          <td></td>
          </tr>
          <tr>
          <td>겨울학기</td>
          <td>방학연장</td>
          <td>신규입사자 모집안함</td>
          <td>정규입사자에 한하여 방학연장 허가</td>
          </tr>
        </tbody>
         </table>
         <br/><br/>
         <h3>2. 입사기간</h3>
         <table class="table-cen">
        <colgroup>
          <col>
          <col>
          <col>
          <col>
        </colgroup>
        <thead>
          <tr>
          <th>입사기간</th>
          <th>1학기</th>
          <th>2학기</th>
          <th>비고</th>
          </tr>
        </thead>
        <tbody>
          <tr>
          <td>학기</td>
          <td>입사개시일 ～ 6월 학기 종강일</td>
          <td>입사개시일 ～ 12월 학기 종강일</td>
          <td>약 4개월</td>
          </tr>
          <tr>
          <td>학기+방학</td>
          <td>입사개시일 ～ 8월 중순</td>
          <td>입사개시일 ～ 다음년도 2월 중순</td>
          <td>약 6개월</td>
          </tr>
        </tbody>
         </table>
         <br/><br/>
         <h3>3. 선발일정</h3>
        <table class="table-cen">
          <colgroup>
            <col width="20%">
            <col width="33%">
            <col>
            <col>
            <col>
          </colgroup>
          <thead>
            <tr>
            <th rowspan="2">선발구분</th>
            <th rowspan="2">내용</th>
            <th colspan="2">선발일정</th>
            </tr>
            <tr>
            <th>1학기</th>
            <th>2학기</th>
            </tr>
          </thead>
          <tbody>
            <tr>
            <td rowspan="7">학부 재학생<br>대학원 신입생․재학생 </td>
            <td>모집요강 공지</td>
            <td>12월 중순</td>
            <td>6월 중순</td>
            </tr>
            <tr>
            <td>입사신청</td>
            <td>1월 초</td>
            <td>7월 초</td>
            </tr>
            <tr>
            <td>합격자 발표</td>
            <td>1월 말</td>
            <td>7월 말</td>
            </tr>
            <tr>
            <td>생활관비 납부</td>
            <td>1월 말</td>
            <td>7월 말</td>
            </tr>
            <tr>
            <td>호실배정 신청</td>
            <td>2월 초～중순</td>
            <td>8월 초～중순</td>
            </tr>
            <tr>
            <td>입사개시일</td>
            <td>2월 말</td>
            <td>8월 말</td>
            </tr>
            <tr>
            <td>입사등록(입사)</td>
            <td>2월 말 (4일간)</td>
            <td>8월 말(4일간)</td>
            </tr>
          </tbody>
        </table>
        <br/>
        <table class="table-cen">
          <colgroup>
            <col width="20%">
            <col width="33%">
            <col>
            <col>
          </colgroup>
          <thead>
            <tr>
            <th>선발구분</th>
            <th>내용</th>
            <th>선발일정</th>
            </tr>
          </thead>
          <tbody>
            <tr>
            <td rowspan="7">학부 신입생</td>
            <td>모집요강 공지</td>
            <td>12월 말</td>
            </tr>
            <tr>
            <td>입사신청</td>
            <td>1월 말</td>
            </tr>
            <tr>
            <td>합격자 발표</td>
            <td>2월 초</td>
            </tr>
            <tr>
            <td>생활관비 납부</td>
            <td>2월 초</td>
            </tr>
            <tr>
            <td>호실배정 신청</td>
            <td>2월 초～중순</td>
            </tr>
            <tr>
            <td>입사개시일</td>
            <td>2월 말</td>
            </tr>
            <tr>
            <td>입사등록(입사)</td>
            <td>2월 말 (4일간)</td>
            </tr>
          </tbody>
        </table>
      </div>    

      
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