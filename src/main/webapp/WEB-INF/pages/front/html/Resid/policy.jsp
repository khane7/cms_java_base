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
			<h2>Regulation of Residence Hall 숙소 규정</h2>

			<ul class="nav">
				<li><img src="/images/sub/icon_home.gif" alt="홈"></li>
				<li>Residential Life</li>
				<li>Regulation of Residence Hall </a></li>
				<li class="active"><a href="#">On Campus Dormitory  </a></li>
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
				<li class="active"><a href="policy">On Campus Dormitory 교내 기숙사</a></li>
				<li><a href="policy2">Off Campus Dormitory 외부 임대숙소</a></li>
			</ul>

			<table class="table-cen">
				<thead>
					<tr>
						<th>벌점<br />Penalty Points </th>
						<th>위반행위종류<br />Various Types of Violation</th>
						<th colspan="2">조치사항<br />Measures for Cumulative Penalties </th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="6">20</td>
						<td class="alf">① 누적벌점이 20점 이상인 자<br />Accommulative Penalty 20 Points</td>
						<td rowspan="10">20</td>
						<td rowspan="10">
							① 강제퇴사<br>
							Checkout (IMMEDIATELY)<br>
							强行退舍（无退换）<br>
							 +<br>
							 ② 방학중 거주 불가<br>
							 Impossible to stay during Vacation<br>
							 无法在假期居住<br>
							 +<br>
							 ③	재학중 거주 불가<br>
							 Disapproval of Residence during the period of attendance at school<br>
							 在校期间不可居住　
						</td>
					</tr>
					<tr>
						<td class="alf">② 호실양도/명의도용<br>Transferring rooms and using other students' name or ID illegally</td>
					</tr>
					<tr>
						<td class="alf">③ 외부인 출입/동반 (관생 및 외부인 모두 벌점 부과)<br>Trespassing and companion with outsiders<br>(Both students living in the building and the outsiders will get penalty)</td>
					</tr>
					<tr>
						<td class="alf">④ 흡연<br>Smoking (both in the room and building)</td>
					</tr>
					<tr>
						<td class="alf">⑤ 비도덕적 행위 (절도, 폭행, 도박 등)<br>Doing immoral acts (e.g. Theft, Assault, Gambling etc)</td>
					</tr>
					<tr>
						<td class="alf">⑥ 이성 간의 생활관 출입 행위<br>Entering the opposite gender's rooms</td>
					</tr>

					<tr>
						<td rowspan="3">15</td>
						<td class="alf">① 누적벌점이 15점 이상인 자<br>Accommultive Penalty 15 Points</td>
					</tr>
					<tr>
						<td class="alf"> ② 인화물질 및 취사도구 보관 (휴대용 가스렌지, 전자레인지, 전기밥솥, 후라이팬 등)<br>Possessing flammable items and any cooking materials<br>(e.g. portable cooking stove, microwave, rice cooker, frying pan)</td>
					</tr>
					<tr>
						<td class="alf">③ 생활관 업무 관련 지시불이행 (배정 호실 무단 변경, 무단퇴사, 퇴사일정 미준수, 경고조치 행위 반복 등) 및 불손 행위 또는 폭언<br>Failing to comply with the rule or after the warning (related to Residence Hall's directions)  (e.g. changing the room without permission, checking-out without notifying the dormitory office, showing negative attitude, using assulting and offensive  words)</td>
					</tr>
					<tr>
						<td rowspan="2">10</td>
						<td class="alf">① 생활관 전체 공간 (호실/식당/벤치/주차장) 에서 음주 및 주류보관 (빈병 포함)<br>Drinking and storing liquors (Included empty bottles) in rooms or building area </td>
					</tr>
					<tr>
						<td class="alf">② 애완동물을 키우는 행위 (개, 고양이, 햄스터 등)<br>Having pets (e.g. dogs, cats, hamster etc.)     </td>
						<td rowspan="23">19 ~ 15</td>
						<td rowspan="23">
							① 강제퇴사<br>
							Checkout (IMMEDIATELY)<br>
							强行退舍（无退换）<br>
							 +  <br>
							② 방학중 거주 불가<br>
							Impossible to stay during Vacation <br>
							无法在假期居住<br>
							 +  <br>
							③ 다음학기 입사 불허<br>Disapproval of Residence on next semester <br>
							下学期不可居住
						</td>
					</tr>

					<tr>
						<td rowspan="4">5</td>
						<td class="alf">① 입사등록안내문에 명시된 호실반입 가능 품목이 아닌 전기제품 보관/사용 : 다리미, 전기장판 등<br>Having and using the prohibited electrical items in the room (e.g. iron, elecrical blanket) </td>
					</tr>
					<tr>
						<td class="alf">② 호실 내에서 음식물 취식 (소량의 과일, 음료, 견과류, 과자를 제외한 모든 음식)<br>Eating large amount of food items in the room (small amount of food items are allowed) </td>
					</tr>
					<tr>
						<td class="alf">③ 음주 후 생활관 전체 공간에서 소란 및 타인에게 피해를 주는 행위<br>Causing disturbance after drinking </td>
					</tr>
					<tr>
						<td class="alf">④ 공공기물 파손 및 낙서, 호실 비품 외부 반출<br>Doing an act of vandalism, scribbles and carrying out things which are already equipped in the rooms.</td>
					</tr>

					<tr>
						<td rowspan="15">3</td>
						<td class="alf">① 호실 내에서 음식물 보관 : 라면류(컵라면 등), 햇반, 죽 등 인스턴트 음식, 반찬, 배달음식, 조리 전 음식재료 등<br>Keeping foods in the room : Ramen(e.g. Cup-Ramen), Noodles, Instant foods, Side dishes, Delivery foods, all other foods ingredients etc.</td>
					</tr>
					<tr>
						<td class="alf">② 소량의 과일/음료/견과류/과자 등의 취식 후 처리 부주의<br>Untreated small quantity of fruits, beverages, nuts, snacks after eating. (e.g. you must clean after eating)</td>
					</tr>
					<tr>
						<td class="alf">③ 평소 청소 상태 불량 (호실 내에서 신발 착용 등)<br>Failing to keep the room clean (e.g. walking around in shoes in the room)</td>
					</tr>
					<tr>
						<td class="alf">④ 복도에 건조대 설치, 복도에 신발을 꺼내 놓는 행위<br>Putting the portable clothes drying rack and shoe rack in the corridor</td>
					</tr>
					<tr>
						<td class="alf">⑤ 생활관 내외 소란,  소음 등을 일으키는 행위<br>Making noise and disturbance </td>
					</tr>
					<tr>
						<td class="alf">⑥ 입/퇴사 기간 절차 및 지시사항 불이행<br>Failing to comply with check-in/out date as per the Residence Hall's directions <br>(e.g. late check-out/in, late sumission of required document)</td>
					</tr>
					<tr>
						<td class="alf">⑦ 경비실 비상 열쇠 혹은 임시 출입카드를 사용하고 3일 이내에 반납하지 않은 경우<br>Failing to return the borrowed room key from the security guard within 3 days.</td>
					</tr>
					<tr>
						<td class="alf">⑧ 도서실내 지정석을 두고 독점으로 이용하는 행위<br>Monopolizing the seats in the study room</td>
					</tr>
					<tr>
						<td class="alf">⑨ 관내 게시판에 불허된 부착물 임의 게시, 공고물 무단 훼손<br>Posting unauthorized materials on bulletin boards, Vandalizing building's announcement notice.</td>
					</tr>
					<tr>
						<td class="alf">⑩ 관내 랜 시설을 통한 불법 다운로드 및 저작권 침해<br>Downloading illegal materials or causing infringement of copy rights via building's facilities.</td>
					</tr>
					<tr>
						<td class="alf">⑪ 온라인, 오프라인 상의 게시판을 통해 타인에게 불쾌감이나 도덕적으로 지탄받을 만한 글 게시<br>Posting comments through Online and Offline which can cause displeasure to others.</td>
					</tr>
					<tr>
						<td class="alf">⑫ 무인택배함을 개인사물함으로 이용하는 경우<br>Using electric parcel dropbox as personal usage.</td>
					</tr>
					<tr>
						<td class="alf">⑬ 스피드게이트를 학생증 태그없이 통과하는 경우<br>Passing through the speed gate without card.</td>
					</tr>
					<tr>
						<td class="alf">⑭ 공용냉장고에 보관 중인 음식물이 상하거나 악취 발생 등 관리 소홀시<br>Failing to comply with the rule of using common fridges</td>
					</tr>
					<tr>
						<td class="alf">⑮ 도서관 내 음식물 반입 및 섭취 행위<br>Eating and entering the study room</td>
					</tr>
					<tr>
						<td>2</td>
						<td class="alf">① IP 도용<br>Usage of illegal IP address</td>
					</tr>
					<tr>
						<td rowspan="2">1</td>
						<td class="alf">① 열쇠 분실<br>Losing room keys</td>
					</tr>
					<tr>
						<td class="alf">② 공용 냉장고 음식물 보관기간 30일 초과시 (포장백에 기재된 보관시작일 기준)<br>Storing a bag of food in the fridge more than 30 days starting from the date of storage. </td>
					</tr>
				</tbody>
			</table>

		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
