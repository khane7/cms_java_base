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
			<h2>생활지도조교</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활안내</a></li>
				<li class="active"><a href="#">생활지도조교</a></li>
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

				<h3>1. 생활지도조교(Dormitory Assistant)</h3>
				<div class="boxtype1">
					<p class="pointclr2">생활지도조교는 한양대학교 일반대학원에 재학 중인 석사 및 박사과정의 대학원생으로 관생들과       함께 교내 생활관에 거주하며 관생과 학생생활관 행정팀의 입장을 조율하는 역할을 수행합니다.</p>
					<ol>
					  <li>① 관생 입장에서의 건의사항 및 불편한 사항을 학생생활관 행정팀에 전달하고 관생들의 편의와 편안한 휴식을 취할 수 있도록 도와주는 역할을 수행합니다. </li>
					  <li>② 학생생활관 행정팀의 입장에서 관생들이 학생생활관 규정을 준수하도록 학생생활을 지도하고 행정팀의 입장을 관생들에게 대변하기도 합니다. </li>
					</ol>
				</div>
				<br/><br/>
					
				<h3>2. 생활지도조교 인원구성 및 담당업무</h3>
				<table class="table-cen">
					<colgroup>
					  <col>
					  <col>
					  <col>
					  <col>
					  <col>
					</colgroup>
					<thead>
					  <tr>
						<th>제2학생생활관</th>
						<th>테크노숙사</th>
						<th>개나리관</th>
						<th>국제관</th>
						<th>제1학생생활관</th>
					  </tr>
					</thead>
					<tbody>
					  <tr>
						<td>4명</td>
						<td>2명</td>
						<td>2명</td>
						<td>3명</td>
						<td>2명</td>
					  </tr>
					</tbody>
				</table>
				<br/><br/>
				<table class="table-cen">
					<colgroup>
					  <col>
					  <col>
					</colgroup>
					<thead>
					  <tr>
						<th>담당업무</th>
						<th>업무 내용</th>
					  </tr>
					</thead>
					<tbody>
					  <tr>
						<th>관생 생활지도 및 관리</th>
						<td class="alf">
						  <ul>
							<li>∎ 생활관규정위반 행위 적발 및 벌점 부과 (외부인 출입, 음주, 흡연, 음식물 섭취 등)</li>
							<li>
							  ∎ 호실점검 
							  <ol>
								<li>&nbsp;&nbsp;&nbsp;&nbsp;① 관생 신분 확인 </li>
								<li>&nbsp;&nbsp;&nbsp;&nbsp;② 호실 내 흡연, 화기사용, 음주, 청소상태, 취사 등 전반적인 내부상태 점검</li>
								<li>&nbsp;&nbsp;&nbsp;&nbsp;③ 허가되지 않은 호실 반입금지 물품 수거 <span class="pointclr">(음식물의 경우 반환 불가)</span></li>
							  </ol>                     
							</li>
							<li>∎ 야간순찰 : 각 건물 전체 및 생활관 외곽 순찰 (매일 22:00 ~ 24:00)</li>
							<li>∎ 응급환자 발생 시 대처</li>
							<li>∎ 관생 민원 상담 등</li>
						  </ul>
						</td>
					  </tr>
					  <tr>
						<th>입·퇴사 업무</th>
						<td class="alf">
						  <ul>
							<li>∎ 입사등록(입사)업무 : 입사원서 및 결핵검진결과표 접수, 호실 열쇠 반출</li>
							<li>∎ 퇴사 업무 : 호실점검 및 호실 열쇠 수령</li>
						  </ul>
						</td>
					  </tr>
					  <tr>
						<th>학생생활관 행정팀 행정 보조</th>
						<td class="alf">
						  <ul>
							<li>∎ 학생생활관 행정팀 야간근무 및 주말근무 (평일 : 17:30 ~ 25:00 / 주말 및 공휴일 : 10:00 ~ 25:00)</li>
							<li>∎ 우편물 정리 및 등기 관련 </li>
							<li>∎ 전화 응대 및 고장, 수리접수</li>
							<li>∎ 정기소독 시 소독자 동행</li>
						  </ul>
						</td>
					  </tr>
					  <tr>
						<th>기타</th>
						<td class="alf">
						  <ul>
							<li>∎ 안전교육, 화재대피훈련 등 학생생활관 행사 및 프로그램 지원</li>
						  </ul>
						</td>
					  </tr>
					</tbody>
				</table>
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
