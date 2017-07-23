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
        <h2>찾아오는길</h2>

        <ul class="nav">
          <li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
          <li><a href="#">생활관소개</a></li>
          <li class="active"><a href="#">찾아오는길</a></li>
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
        <li class="active"><a href="map">교내생활관</a></li>
        <li><a href="map_2">외부 임대기숙사</a></li>
        <!-- <li><a href="checkin5">호실배정</a></li>
		<li><a href="checkin6">입사등록(입사)</a></li>
		<li><a href="checkin7">입사포기</a></li>
        <li><a href="checkin">선발일정</a></li> -->
      </ul>

      <div class="sub-contents clearfix">
		<div class="tc"><img src="/images/map0.png" style="border:2px solid #333;"></div>
		<div  class="station-bx2">
			<ul class="viewbox"><!-- <li><a href="http://www.hanyang.ac.kr/code_html/visual/data/index_2d.html" target="_blank"><img src="/images/ico_view1.png" ></a></li> -->
			<li><a href="http://www.hanyang.ac.kr/documents/20182/73809/mapview_white.png/4995b7ee-6b00-4618-ac88-86210f911979/?t=1479276972341" target="_blank"><img src="/images/ico_view2.png"></a></li></ul>
		</div>
		<div  class="station-bx2">
			<h4 class="d-title2">주소</h4> 
			<p>서울특별시 성동구 왕십리로 222, 한양대학교</p>
			   (Hanyang University, 222, Wangsimni-ro, Seongdong-gu, Seoul, Korea)</br>
		</div>
		<div  class="station-bx2">
			<h4 class="d-title2">전화번호</h4> 
			<ul class="contact"><li><strong>대학직영기숙사</strong> 학생생활관 행정팀  02-2220-1471  / 팩스 : 02-2290-3404</li>
			<li><strong>행복기숙사</strong> 제5학생생활관(행복기숙사) 행정팀  02-6216-1991</li>
			</ul>
			
		</div>
		<div class="station-bx">
			<div class="bus">
			<h4 class="d-title2">주변 정류장</h4>

			<p class="place"><a href="http://map.naver.com/?dlevel=13&amp;x=127.0433461&amp;y=37.5567721&amp;stationId=106924&amp;enc=b64" target="_blank" title="새창으로 열기">한양대 정문앞</a></p>
			<p class="place"><a href="http://map.naver.com/index.nhn?stationId=107292" target="_blank" title="새창으로 열기">한양여대 앞(한양대 동문앞 방향) </a></p>

			<ul class="route">
				<li><strong>간선</strong><a href="http://me2.do/FMUYIdBE" target="_blank" title="새창으로 열기">121번</a> , <a href="http://me2.do/FYDjlXKn" target="_blank" title="새창으로 열기">302번</a>, <a href="http://me2.do/FG0qb8pI" target="_blank" title="새창으로 열기">N62(심야)</a></li>
				<li><strong>지선</strong><a href="http://me2.do/GnupF6mx" target="_blank" title="새창으로 열기">2012번</a>, <a href="http://me2.do/xArIbgqB" target="_blank" title="새창으로 열기">2014번</a>, <a href="http://me2.do/5ctgaxFf" target="_blank" title="새창으로 열기">2016번</a>, <a href="http://me2.do/5wKBwOHT" target="_blank" title="새창으로 열기">2222번</a></li>
			</ul>
			</div>

			<div class="subway">
			<h4 class="d-title2">주변 지하철</h4>

			<ul class="station">
				<li><img alt="2호선 한양대, 이전역 왕십리, 다음역 뚝섬" src="http://www.hanyang.ac.kr/html-repositories/images/custom/campus/subway1.png"><span><a href="http://me2.do/5U8fpBcV" target="_blank" title="새창으로 열기">지하철 2호선 한양대역 2번 출구</a></span></li>
				<li><img alt="2호선 용답역, 이전역 성수, 다음역 신답" src="http://www.hanyang.ac.kr/html-repositories/images/custom/campus/subway2.png"><span><a href="http://me2.do/x5j6abWL" target="_blank" title="새창으로 열기">지하철 2호선 용답역</a></span></li>
				<li><img alt="분당 왕십리역, 다음역 서울숲" src="http://www.hanyang.ac.kr/html-repositories/images/custom/campus/subway3.png"><span><a href="http://me2.do/GoJxNcS3" target="_blank" title="새창으로 열기">분당선 왕십리역</a></span></li>
				<li><img alt="경의중앙 왕십리역, 이전역 응봉, 다음역 청량리" src="http://www.hanyang.ac.kr/html-repositories/images/custom/campus/subway4.png"><span><a href="http://me2.do/xsxomk7O" target="_blank" title="새창으로 열기">경의선 왕십리역</a></span></li>
			</ul>
			</div>
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
    });
  </script>