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
			<h2>생활관별 위치</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관소개</a></li>
				<li class="active"><a href="#">생활관별 위치</a></li>
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
			<h3>1. 교내 생활관</h3>
			<table class="table-cen">
				<colgroup>
					<col width="70px">
					<col width="445px">
					<col width="">
				</colgroup>
				<tr>
					<th><p>순번</p></th>
					<th><p>생활관명</p></th>
					<th><p>위치</p></th>
				</tr>
				<tr>
					<td>1</td>
					<td>제2학생생활관<br/>Student Residence Hall 2</td>
					<td rowspan="7"><p><img src="/images/map2.png" alt=""></p><br/>서울특별시 성동구 왕십리로 222번지, 한양대학교<br>
						Hanyang University, 222, Wangsimni-ro, Seongdong-gu, Seoul, Korea
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>개나리관<br/> Gaenari Residence Hall</td>
				</tr>
				<tr>
					<td>3</td>
					<td>한양테크노숙사<br/> Hanyang Techno Residence Hall</td>
				</tr>
				<tr>
					<td>4</td>
					<td>한누리관<br/> Hannuri Residence Hall</td>
				</tr>
				<tr>
					<td>5</td>
					<td>제1학생생활관<br/> Student Residence Hall 1</td>
				</tr>
				<tr>
					<td>6</td>
					<td>제3학생생활관<br/> Student Residence Hall 3</td>
				</tr>
				<tr>
					<td>7</td>
					<td>제5학생생활관 (3생활관 옆에 위치)<br/> Student Residence Hall 5</td>
				</tr>
			</table>
			<br/><br/>

			<h3>2. 외부 임대기숙사</h3>
			<table class="table-cen">
				<tbody>
				<tr>
					<th><p>순번</p></th>
					<th><p>생활관명</p></th>
					<th>위치</th>
					<th><p>지도</p></th>
				</tr>
				<tr>
					<td>1</td>
					<td>효성빌 <br/>Hyosung-ville</td>
					<td class="alf">서울특별시 성동구 사근동 204-3번지 <br/>204-3, Sageun-dong, Seongdong-gu, Seoul, Korea
						222, Wangsimni-ro, Seongdong-gu, Seoul, Korea
					</td>
					<td>
						<a href="http://map.naver.com/?menu=location&mapMode=0&lat=37.5610626&lng=127.0475206&dlevel=12&searchCoord=126.7898247%3B37.6557974&query=7ISc7Jq47Yq567OE7IucIOyEseuPmeq1rCDsgqzqt7zrj5kgMjA0LTPrsojsp4A%3D&mpx=02285560%3A37.6557974%2C126.7898247%3AZ11%3A0.0345383%2C0.0149344&tab=1&enc=b64"
						   target="_balnk" class="btn btn-default">지도</a></td>
				</tr>
				<tr>
					<td>2</td>
					<td>스마트빌 <br/>Smart-ville</td>
					<td class="alf">서울특별시 성동구 행당동 16-55번지 <br/>16-55, Haengdang-dong, Seongdong-gu, Seoul, Korea</td>
					<td>
						<a href="http://map.naver.com/?menu=location&mapMode=0&lat=37.560101&lng=127.0424144&dlevel=12&searchCoord=127.0475206%3B37.5610626&query=7ISc7Jq47Yq567OE7IucIOyEseuPmeq1rCDtlonri7nrj5kgMTYtNTXrsojsp4A%3D&mpx=09200106%3A37.5610626%2C127.0475206%3AZ12%3A0.0172219%2C0.0075054&tab=1&enc=b64"
						   target="_balnk" class="btn btn-default">지도</a></td>
				</tr>
				<tr>
					<td>3</td>
					<td>마장빌 <br/>Majang-ville</td>
					<td class="alf">서울특별시 성동구 마장동 777-3번지<br/>777-3, Majang-dong, Seongdong-gu, Seoul, Korea</td>
					<td>
						<a href="http://map.naver.com/?menu=location&mapMode=0&lat=37.5674085&lng=127.0457532&dlevel=12&searchCoord=127.0424144%3B37.560101&query=7ISc7Jq47Yq567OE7IucIOyEseuPmeq1rCDrp4jsnqXrj5kgNzc3LTPrsojsp4A%3D&mpx=09200107%3A37.560101%2C127.0424144%3AZ12%3A0.0172221%2C0.0075046&tab=1&enc=b64"
						   target="_balnk" class="btn btn-default">지도</a></td>
				</tr>
				<tr>
					<td>4</td>
					<td>이튼하우스 <br/>Eton House</td>
					<td class="alf">서울특별시 성동구 사근동 189번지<br/>189, Sageun-dong, Seongdong-gu, Seoul, Korea</td>
					<td>
						<a href="http://map.naver.com/?menu=location&mapMode=0&lat=37.5608463&lng=127.0484606&dlevel=12&searchCoord=127.0457532%3B37.5674085&query=7ISc7Jq47Yq567OE7IucIOyEseuPmeq1rCDsgqzqt7zrj5kgMTg567KI7KeA&mpx=09200105%3A37.5674085%2C127.0457532%3AZ12%3A0.0172235%2C0.0075051&tab=1&enc=b64"
						   target="_balnk" class="btn btn-default">지도</a></td>
				</tr>
				<tr>
					<td>5</td>
					<td>로즈빌 <br/>Rose-ville</td>
					<td class="alf">서울특별시 성동구 행당동 16-15번지<br/>16-15, Haengdang-dong, Seongdong-gu, Seoul, Korea</td>
					<td>
						<a href="http://map.naver.com/?menu=location&mapMode=0&lat=37.5602085&lng=127.0422292&dlevel=12&searchCoord=127.0484606%3B37.5608463&query=7ISc7Jq47Yq567OE7IucIOyEseuPmeq1rCDtlonri7nrj5kgMTYtMTXrsojsp4A%3D&mpx=09200106%3A37.5608463%2C127.0484606%3AZ12%3A0.0172216%2C0.0075054&tab=1&enc=b64"
						   target="_balnk" class="btn btn-default">지도</a></td>
				</tr>
				<tr>
					<td>6</td>
					<td>비전빌 <br/>Vision</td>
					<td class="alf">서울특별시 성동구 도선동 105번지<br/>105, Doseon-dong, Seongdong-gu, Seoul, Korea</td>
					<td>
						<a href="http://map.naver.com/?menu=location&mapMode=0&lat=37.5639421&lng=127.0349075&dlevel=12&searchCoord=127.0422292%3B37.5602085&query=7ISc7Jq47Yq567OE7IucIOyEseuPmeq1rCDrj4TshKDrj5kgMTA167KI7KeA&mpx=09200107%3A37.5602085%2C127.0422292%3AZ12%3A0.0172221%2C0.0075046&tab=1&enc=b64"
						   target="_balnk" class="btn btn-default">지도</a></td>
				</tr>
				</tbody>
			</table>
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
	$(function () {
		$("body").on("click", ".room-preview img", function () {
			var _img = $(this).attr("src");

			$(".dor-gallery-layer #show-image").attr("src", _img);
			$(".dor-gallery-layer").bPopup();
		});

		$(".btn-close").click(function () {
			$(".dor-gallery-layer").bPopup().close();
		});

		$(".other-site").click(function () {
			$(".link-list").toggle();
		});
	});
</script>