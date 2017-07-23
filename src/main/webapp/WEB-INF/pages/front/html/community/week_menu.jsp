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
      <h2>식당안내</h2>

      <ul class="nav">
        <li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
        <li><a href="#">생활안내</a></li>
        <li class="active"><a href="#">식당안내</a></li>
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
			<li class="active"><a href="#guide1">식당이용</a></li>
			<li><a href="http://www.hanyang.ac.kr/web/www/-2-" target="_blank">제2학생생활관 메뉴</a></li>
			
		</ul>
		<div id="guide1" class="guidebox">
			<h3>1. 식당명 : 제2학생생활관 식당</h3>
			<h3>2. 식당이용 관련 문의처 : 영양사실 ☎ 02-2290-3410</h3>
			<h3>3. 운영시간 <br/></h3>
			<table class="table-cen">
			  <tr>
				<th rowspan="2" valign="center"><p>위치 </p></th>
				<th colspan="4" valign="center"><p>운영시간</p></th>
			  </tr>
			  <tr>
				<th valign="center"><p>요일</p></th>
				<th valign="center"><p>조식</p></th>
				<th valign="center"><p>중식</p></th>
				<th valign="center"><p>석식</p></th>
			  </tr>
			  <tr>
				<td rowspan="2" valign="center"><p>제2학생생활관 1층</p></td>
				<td valign="center"><p>월 ~ 금 </p></td>
				<td valign="center"><p> 07:30 ~ 09:00 </p></td>
				<td valign="center"><p>12:00 ~ 13:30 </p></td>
				<td valign="center"><p>17:30 ~ 19:00 </p></td>
			  </tr>
			  <tr>
				<td valign="center"><p>토 ~ 일</p></td>
				<td valign="center"><p>운영안함</p></td>
				<td valign="center"><p>12:00 ~ 13:30</p></td>
				<td valign="center"><p>17:30 ~ 19:00 </p></td>
			  </tr>
			</table><br/>
			<h3>4. 식권구입</h3>
			<table class="table-cen">
			  <tr>
				<th colspan="3" valign="center"><p>1회권</p></th>
				<th colspan="4" valign="center"><p>정기권 (학기 or 방학) </p></th>
			  </tr>
			  <tr>
				<th rowspan="2" valign="center"><p>이용대상자</p></th>
				<th rowspan="2" valign="center"><p>금액</p></th>
				<th rowspan="2" valign="center"><p>구입방법</p></th>
				<th rowspan="2" valign="center"><p>이용대상자</p></th>
				<th colspan="2" valign="center"><p>단가 / 1회</p></th>
				<th rowspan="2" valign="center"><p>구입방법</p></th>
			  </tr>
			  <tr>
				<th valign="center"><p>1식 기준</p></th>
				<th valign="center"><p>1.5식 기준 </p></th>
			  </tr>
			  <tr>
				<td valign="center"><p>학생</p></td>
				<td valign="center"><p>3,300원</p></td>
				<td rowspan="2" valign="center"><p>식권발매기</p></td>
				<td rowspan="2" valign="center">한양대학교<br/>
				  재학생</td>
				<td rowspan="2" valign="center"><p>2,900원</p></td>
				<td rowspan="2" valign="center"><p>2,700원</p></td>
				<td rowspan="2" valign="center" class="alf"><p>① 지정된 입금(신청)기간에 입금 </p>
				  <p> - 은행 및 ATM기 이용 후 입금증(명세서) 발급</p>
				  <p> - 스마트 &amp; 인터넷 뱅킹 안됨</p>
				  <p>② 지정된 식권발급기간에 영양사실 방문 및 식권 수령</p>
				  <p> - 반드시 입금확인증(명세표)과 학생증 지참 </p>
				  <p class="pointclr">※ 재발급은 1회만 허용됨 </p></td>
			  </tr>
			  <tr>
				<td valign="center"><p>일반인</p></td>
				<td valign="center"><p>3,800원</p></td>
			  </tr>
			</table><br/>
			<h3>5. 정기권 사용 : 학기 or 방학의 지정된 거주기간에만 사용가능하며, <span class="pointclr">미사용분에 대하여 환불 안됨</span></h3>
			<table class="table-cen">
			  <tr>
				<th valign="center"><p>정기권 종류</p></th>
				<th valign="center"><p>발급식권 수</p></th>
				<th valign="center"><p>발급 및 사용 예시</p></th>
			  </tr>
			  <tr>
				<td valign="center"><p>1식 기준</p></td>
				<td valign="center"><p> 학기 or 방학의 지정된 거주기간 일수의 식권 수 </p></td>
				<td valign="center" class="alf"><p>① 거주기간이 100일인 경우 100회 사용분의 식권 발급<br />
				  ② 거주기간인 100일 이내에 100회의 식권을 사용하여야 함- 1일 사용횟수 제한없음</p></td>
			  </tr>
			  <tr>
				<td valign="center"><p>1.5식 기준</p></td>
				<td valign="center"><p> 학기 or 방학의 지정된 거주기간 일수의 1.5배 식권 수 </p></td>
				<td valign="center" class="alf"><p>① 거주기간이 100일인 경우 150회 사용분의 식권 발급 <br />
				  ② 거주기간인 100일 이내에 150회의 식권을 사용하여야 함<br />
				  - 1일 사용횟수 제한없음</p></td>
			  </tr>
			</table><br/>

		</div>	
		
		<!--
		<div id="guide2" class="guidebox hidden">
			<div class="tc">
			<iframe src="http://www.hanyang.ac.kr/upmu/sikdan/sikdan_View.jsp?gb=1&code=7" width="100%" height="1300" frameborder="0" framespacing="0" scrolling="no" style="overflow: hidden;"></iframe>
		  </div>
		</div>   -->
    </div> 
    <!-- e : sub contents -->

  </div>
</div>
<!-- e : contents -->

<!-- s : layer popup -->
<div class="layer dor-gallery-layer hidden">
  <h4>title</h4>

  <div><img src="" id="show-image"></div>
  <p id="image-desc"></p>

  <div class="btn-close tc">CLOSE</div>
</div>
<!-- e : layer popup -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->

<script>
	$(function () {
		$("body").on("click", ".guide-tab li a", function (e) {
			e.preventDefault();
			var target = $(this).attr("href");

			if(target.indexOf("http://") == -1 && target.indexOf("https://") == -1) {
            e.preventDefault();
         } else {
            window.open(target);
            return false;
         }

        <!--  $(".guide-tab li").removeClass("active"); -->

			$(".guide-tab li").removeClass("active");

			$(".guidebox").hide();
			$(this).parent().addClass("active");
			$(target).show();
		});

		$(".other-site").click(function () {
			$(".link-list").toggle();
		});
	});

	$(window).load(function() {
		var _hash = location.hash;
		if(_hash) {
			$(".guide-tab li").each(function() {
				var _target = $("a", this).attr("href");

				if(_hash == _target) {
					$("a", this).trigger("click");
					return;
				}
			});
		}
	});
</script>