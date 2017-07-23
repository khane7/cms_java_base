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
			<h2>비상연락처</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관소개</a></li>
				<li class="active"><a href="#">비상연락처</a></li>
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
			<h3>1. 학생생활관 행정팀 (제2학생생활관 1층)</h3>
				<p class="fb"> 가. 행정팀  ☎ 02-2220-1471,1488, 팩스 02-2290-3404 </p>
				<table class="table-cen">
					<colgroup>
						<col width="20%" />
						<col width="" />
						<col width="" />
						<col width="20%" />
					</colgroup>
				  <tbody>
					<tr>
					  <th rowspan="2"><p>근무일</p></th>
					  <th colspan="2"><p>업무시간</p></th>
					  <th rowspan="2"><p>점심시간</p></th>
					</tr>
					<tr>
					  <th><p>오전</p></th>
					  <th><p>오후</p></th>
					</tr>
					<tr>
					  <td style="padding:20px 0;"><p>월～금</p></td>
					  <td><p>08:30 ~ 12:00</p></td>
					  <td><p>13:00 ~ 17:30</p></td>
					  <td><p>12:00 ~ 13:00</p></td>
					</tr>
				  </tbody>
				</table>
				<br/><br/>

				<p class="fb">  나. 생활지도조교  ☎ 02-2290-3403, 02-2220-1471,1488</p>
				<table class="table-cen">
					<colgroup>
						<col width="20%" />
						<col width="" />
						<col width="" />
						<col width="20%" />
					</colgroup>
				  <tbody>
					<tr>
					  <th rowspan="2"><p>근무일</p></th>
					  <th colspan="2"><p>업무시간</p></th>
					  <th rowspan="2"><p>저녁 식사시간</p></th>
					</tr>
					<tr>
					  <th><p>오후</p></th>
					  <th><p>야간</p></th>
					</tr>
					<tr>
					  <td style="padding:20px 0;"><p>월～금</p></td>
					  <td><p>17:30 ~ 18:00</p></td>
					  <td><p>19:00 ~ 24:00</p></td>
					  <td><p>18:00 ~ 19:00</p></td>
					</tr>
				  </tbody>
				</table>
				<br/>
				<table class="table-cen">
					<colgroup>
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
					</colgroup>
				  <tbody>
					<tr>
					  <th rowspan="2"><p>근무일</p></th>
					  <th colspan="3"><p>업무시간</p></th>
					  <th rowspan="2"><p>점심 및 저녁 식사시간</p></th>
					</tr>
					<tr>
					  <th><p>오전</p></th>
					  <th><p>오후</p></th>
					  <th><p>야간</p></th>
					</tr>
					<tr>
					  <td style="padding:20px 0;">주말 및 공휴일</td>
					  <td>10:00 ~ 12:00</td>
					  <td>13:00 ~ 18:00</td>
					  <td>19:00 ~ 24:00</td>
					  <td>12:00 ~ 13:00<br/>18:00 ~ 19:00</td>
					</tr>
				  </tbody>
				</table>
				<br/><br/>
			<h3>2. 게스트하우스 : 사근동 게스트하우스 2층 사무실 (☎ 2290-3461)</h3>
				<table class="table-cen">
					<colgroup>
						<col width="20%" />
						<col width="20%" />
						<col width="" />
					</colgroup>
				  <tr>
					<th>근무일</th>
					<th>근무일</th>
					<th>저녁 식사시간</th>
				  </tr>
				  <tr>
					<td>월～금</td>
					<td>16:00 ~ 24:00</td>
					<td>당일 입/퇴사업무에 따라 유동적 운영</td>
				  </tr>
				</table>
				<br/><br/>
				<table class="table-cen">
					<colgroup>
						<col width="20%" />
						<col width="20%" />
						<col width="" />
					</colgroup>
				  <tr>
					<th>근무일</th>
					<th>근무일</th>
					<th>점심 및 저녁 식사시간</th>
				  </tr>
				  <tr>
					<td>주말 및 공휴일</td>
					<td>09:00 ~ 24:00</td>
					<td>당일 입/퇴사업무에 따라 유동적 운영</td>
				  </tr>
				</table>
				<br/><br/>
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
