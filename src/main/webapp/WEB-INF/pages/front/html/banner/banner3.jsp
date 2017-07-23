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
			<h2>생활수칙위반 벌점기준표</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활안내</a></li>
				<li class="active"><a href="#">생활수칙위반 벌점기준표</a></li>
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
			<table class="table-cen">
				<colgroup>
				  <col>
				  <col>
				  <col>
				</colgroup>
				<thead>
				  <tr>
					<th>생활수칙 위반 행위 종류</th>
					<th>벌점 </th>
					<th>조치사항</th>
				  </tr>
				</thead>
				<tbody>
				  <tr>
					<td class="alf">
					  <ol>
						<li>① <span class="pointclr2">누적벌점이 20점 이상인 자</span></li>
						<li>② <span class="pointclr2">호실 양도/명의도용</span></li>
						<li>③ <span class="pointclr2">외부인 출입/동반</span>(제2학생생활관 식당, 카페, 로비 제외)<span class="pointclr">→ 관생및외부인모두벌점부과</span></li>
						<li>④ 학생생활관 내 흡연 및 절도, 폭행, 도박 등 비도덕적인 행위</li>
						<li>⑤ 남/여 이성(異性)간의 생활관 출입 행위 </li>
					  </ol>
					</td>
					<td class="pointclr"><b>20점</b></td>
					<td class="alf">
					  <span class="pointclr">강제퇴사</span>
					  <ol>
						<li>① 5일 이내 퇴사 </li>
						<li>② 재학 중 입사 불허</li>
					  </ol>
					</td>
				  </tr>
				  <tr>
					<td class="alf">
					  <ol>
						<li>① <span class="pointclr2">누적벌점이 15점 이상인 자</span></li>
						<li>② 인화물질 및 취사도구 보관(휴대용 가스렌지, 전기밥솥, 후라이팬 등)</li>
						<li>③ 생활관 업무 관련 지시불이행 및 불손행위 또는 폭언, 폭행&rarr; 배정호실 무단 변경, 무단퇴사, 퇴사일정 미준수, 경고조치행위 반복 등</li>
					  </ol>
					</td>
					<td class="pointclr">15점</td>
					<td class="alf">
					  <span class="pointclr">강제퇴사</span>
					  <ol>
						<li>① 5일 이내 퇴사 </li>
						<li>② 다음학기 입사 불허</li>
					  </ol>
					</td>
				  </tr>
				  <tr>
					<td class="alf">
					  <ol>
						<li>① <span class="pointclr2">생활관 전체 공간 음주 및 주류 보관 (호실, 식당, 벤치, 주차장 포함)</span> </li>
						<li>② 애완동물을 키우는 행위 (개, 고양이, 햄스터 등)</li>
					  </ol>
					</td>
					<td class="pointclr">10점</td>
					<td></td>
				  </tr>
				  <tr>
					<td class="alf">
					  <ol>
						<li>① 전열기구 보관 및 사용 (토스트기,계란찜기,커피포트,전기장판,다리미,냉장고 등)</li>
						<li>② <span class="pointclr2">호실 내에서 음식물 취식</span> (소량의 과일/음료/견과류/과자를 제외한 모든 음식)</li>
						<li>③ <span class="pointclr2">음주 후 생활관 전체 공간에서 소란 및 타인에게 피해를 주는 행위</span><br> <span class="pointclr" style="padding-left:15px;">(고성방가, 출입문을 발로 차는 행위, 다른 학생 호실 침입, 휴게실/식당/복도 취침 등)</span></li>
						<li>④ 공공기물 파손 및 낙서, 호실 비품 외부 반출 </li>
						<li>⑤ <span class="pointclr">입사허가기간에 화재대피훈련 미이수 (2015-2학기 입사자부터 필수)</span></li>
					  </ol>
					</td>
					<td class="pointclr">5점</td>
					<td></td>
				  </tr>
				  <tr>
					<td class="alf">
					  <ol>
						<li>① <span class="pointclr2">호실 내에서 음식물 보관</span><br><span  style="padding-left:15px;">(라면, 컵라면, 햇반, 죽 등 인스턴트 음식, 반찬, 배달음식, 조리 전 음식재료 등) </span></li>
						<li>② 소량의 과일/음료/견과류/과자 등의 취식 후 처리부주의</li>
						<li>③ <span class="pointclr2">열쇠 분실</span></li>
						<li>④ <span class="pointclr">평소 청소 상태 불량 (호실 내에서 신발 착용, 청결상태 등)</span></li>
						<li>⑤ <span class="pointclr2">복도에 건조대 설치, 복도에 신발을 꺼내놓는 행위</span> </li>
						<li>⑥ <span class="pointclr2">생활관 전체 공간에서 소란, 소음 등을 일으키는 행위 (벤치, 주차장 포함)</span></li>
						<li>⑦ <span class="pointclr2">입사등록 연기 신청없이 입사등록 기간 이후에 입사하는 경우</span></li>
						<li>⑧ 경비실 비상 열쇠를 사용하고 3일 이내에 반납하지 않는 경우 </li>
						<li>⑨ 도서실 내 지정석을 두고 독점으로 이용하는 행위</li>
						<li>⑩ 관내 게시판에 불허된 부착물 임의 게시, 공고물 무단 훼손 등</li>
						<li>⑪ 관내 랜 시설을 통한 불법 다운로드 및 저작권 침해 </li>
						<li>⑫ 온라인, 오프라인 상의 게시판을 통해 타인에게 불쾌감이나 도덕적으로 지탄받을 만한 글 게시</li>
						<li>⑬ <span class="pointclr2">제2학생생활관 로비에 비치된 택배함을 개인사물함으로 이용하는 행위</span></li>
					  </ol>
					</td>
					<td class="pointclr">3점</td>
					<td></td>
				  </tr>
				  <tr>
					<td class="alf">① IP 도용</td>
					<td class="pointclr">2점</td>
					<td></td>
				  </tr>
				  <tr>
					<td class="alf">① 생활관 출입통제 시간 위반</td>
					<td class="pointclr">1점</td>
					<td></td>
				  </tr>
				</tbody>
			</table><br/><br/>
			<div class="boxtype1">
				<p class="pointclr2">※ 생활지도조교는 생활수칙 위반 사항에 대하여 벌점기준표에 따라 벌점을 부과할 수 있다.</p>
				<p class="pointclr2">※ 벌점누적기간</p>
				<ol>
				  <li>&nbsp;&nbsp;&nbsp;&nbsp;ⓛ 누적벌점이 20점 이상인 경우 : 벌점 누적기간은 재학기간 임  </li>
				  <li>&nbsp;&nbsp;&nbsp;&nbsp;② 벌점이 15점∼19점인 경우 : 부여받은 벌점 및 시기에 따라 2개 학기까지 입사신청이 불가한 경우 발생됨  </li>
				</ol>
			</div>
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
