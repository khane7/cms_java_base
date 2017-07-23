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
			<h2>생활안내</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">대학직영기숙사</a></li>
				<li class="active"><a href="#">생활안내</a></li>
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

			<ul class="guide-tab lifeguide-tab">
				<li class="active"><a href="/html/info/guidebook">생활관출입</a></li>	
				<li><a href="/html/info/guidebook2">옷장</a></li>
				<li><a href="/html/info/guidebook3">유무선인터넷</a></li>
				<li><a href="/html/info/guidebook4">공용냉장고</a></li>
				<li><a href="/html/info/guidebook5">세탁실/다리미</a></li>
				<li><a href="/html/info/guidebook6">독서실/체력단련실</a></li>
				<li><a href="/html/info/guidebook7">우편물/택배</a></li>
				<li><a href="/html/info/guidebook8">자전거/기타사항</a></li>
			</ul>

			<!-- s : 입사기간
			<div id="guide1" class="guidebox tc">
				<img src="/images/sub/guide_book1_01.jpg" alt="">
				<img src="/images/sub/guide_book1_02.jpg" alt="">
				<img src="/images/sub/guide_book1_03.jpg" alt="">
			</div>
			<!-- e : 입사기간 -->

			<!-- s : 입사신고/퇴사신고
			<div id="guide2" class="guidebox hidden tc">
				<p>▣ 입사신고 / 퇴사신고 </p>
				<img src="/images/sub/guide_book2_img1.jpg" alt="">
			</div>
			<!-- e : 입사신고/퇴사신고 -->

			<!-- s : 입사신고/퇴사신고 -->
			<div id="guide1" class="guidebox">
				<h3>1. 생활관 현관 출입문</h3>
				<h4>가. 출입시간</h4>
				<table class="table-cen">
				  <tr>
					<th valign="center"><p>문 여는 시간</p></th>
					<th valign="center"><p>문 닫는 시간</p></th>
					<th valign="center">통금시간
					  (통금시간에 생활관 현관 출입 시 벌점 1점 부과)</th>
					<th valign="center"><p>외박 체크</p></th>
				  </tr>
				  <tr>
					<td valign="center"><p>아침 5시</p>
					  <p>(05:00)</p></td>
					<td valign="center"><p>새벽 1시</p>
					  <p>(01:00)</p></td>
					<td valign="center"><p>01:00～05:00</p></td>
					<td valign="center"><p>안함</p></td>
				  </tr>
				</table><br/>
				<h4>나. 출입방법 : 학생증 태그 (모바일 학생증 불가능)</h4>
				<table class="table-cen">
					<colgroup>
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
                    <col width="14%" />
                    <col width="" />
					</colgroup>
				  <tr>
					<th colspan="2" valign="center">제2학생생활관 ․ 테크노숙사</th>
					<th colspan="2" valign="center">개나리관 ․ 한누리관 </th>
                    <th colspan="2" valign="center"><p>제<SPAN lang="EN-US">1</SPAN>학생생활관</p></th>
					<th rowspan="2" valign="center">비고</th>
				  </tr>
				  <tr>
					<th valign="center">출입시간
					  (05:00～01:00)</th>
					<th valign="center">통금시간
					  (01:00～05:00)</th>
					<th valign="center">출입시간
					  (05:00～01:00)</th>
					<th valign="center">통금시간
					  (01:00～05:00)</th>
                     <th valign="center">출입시간
					  (05:00～01:00)</th>
					<th valign="center">통금시간
					  (01:00～05:00)</th>
				  </tr>
				  <tr>
					<td valign="center">현관 출입문 개방</td>
					<td valign="center">학생증 태그</td>
					<td valign="center">학생증 태그</td>
					<td valign="center">제2학생생활관 경비실에 
					  개나리관 및 한누리관 출입 요청
					  (학생증 태그)</td>
                    <td valign="center">학생증 태그</td>
					<td valign="center"><p>학생증 태그</p></td>
					<td valign="center">신입생의 경우 학생증이 발급되기 전까지 출입 시 경비실에 출입 요청</td>
				  </tr>
				</table><br/>
				<h4 class="pointclr">다. 통금시간 위반에 대한 조치사항</h4>
				     ① 생활관별 조치사항 
				<table class="table-cen">
				  <tr>
					<th colspan="2" valign="center"><p>학부생</p></th>
					<th rowspan="2" valign="center"><p>대학원(이공계)</p></th>
					<th rowspan="2" valign="center"><p>대학원(비이공계)</p></th>
				  </tr>
				  <tr>
				    <th valign="center">제2학생생활관, 개나리관</th>
				    <th valign="center">제1학생생활관</th>
  </tr>
				  <tr>
					<td valign="center"><p>벌점 1점 부과</p></td>
					<td valign="center"><p>벌점부과 안함</p></td>
					<td valign="center"><p>벌점부과 안함</p></td>
					<td valign="center"><p>벌점부과 안함</p></td>
				  </tr>
				</table>
				<span class="pointclr2"> ※ 단, 테크노숙사 및 한누리관에 외국인학생 미등록 TO로 거주하는 학부생이 통금시간을 위반한 경우 벌점 1점 부과  </span>
				<br/>
				 ② 통금시간 벌점 부과는 각 생활관 현관 출입문에 학생증을 태그한 시간을 기준으로 함(1일 1점만 부과됨)<br/>
				 ③ 통금시간에도 생활관 출입이 불가능한 것은 아님. <br/>&nbsp;&nbsp;&nbsp;&nbsp;단, 생활관이 노후하여 방음이 잘되지 않으므로 수면 중인 룸메이트 및 다른 학생들을 위하여 생활관 전체 공간에서 정숙해야 함<br/>
				 ④ 통금시간 벌점은 스피드게이트에 학생증 태그한 것과는 무관함<br/>
				 ⑤ 중간/기말 시험기간에 약 2주정도 통금시간 1시간 연장함 <br/> <br/>
				<h3>2. 스피드게이트  </h3>
				<table class="table-cen">
				  <tr>
					<th valign="center"><p>구분</p></th>
					<th valign="center"><p>내용</p></th>
					<th valign="center"><p> 비고</p></th>
				  </tr>
				  <tr>
					<td valign="center"><p>스피드게이트 설치장소</p></td>
					<td style="text-align:left;"><p>① 제2학생생활관 로비 </p>
					  <p>② 테크노숙사 로비 </p></td>
					<td valign="center"><p>
					  <![if !supportEmptyParas]>
					  &nbsp;
					  <![endif]>
					</p></td>
				  </tr>
				  <tr>
					<td valign="center"><p> 스피드게이트 통과방법</p></td>
					<td valign="center"><p>학생증 태그</p>
					  <p> </p></td>
					<td valign="center" class="alf"><p>￭ 스피드게이트 통과 시 입사생들은 항상 학생증을 소지하여야 함 </p>
					  <p>￭ 통금시간(01:00-05:00)벌점은 각 생활관 현관출입문에 학생증을 태그한 것을 기준으로 하므로 스피드게이트 통과와는</p> <p>무관함</p></td>
				  </tr>
				  <tr>
					<td valign="center"><p>수화물게이트 이용방법</p></td>
					<td valign="center"><p>경비실 또는 행정팀에 이용 요청</p></td>
					<td valign="center"  class="alf"><p>입사 및 퇴사 기간은 별도 운영</p></td>
				  </tr>
				</table><br/>
				


			</div>
			<!-- e : 입사신고/퇴사신고 -->

			<!-- s : 입사기간 -->
			<div id="guide2" class="guidebox hidden">
				<h3>1. 시설물 고장 신고 : 학생생활관 홈페이지 → 학생생활관 QUICK 링크 →  【고장수리 및 접수】 에 신청</h3>
				<h3>2. 공용화장실 및 샤워실 : 공동의 사용시설이니 타인들의 사용 시 불편함이 없도록 항상 청결을 유지</h3>
				<h3>3. 세탁실</h3>
					<h4>가. 드럼세탁기 및 건조기 유료로 사용</h4>
					<table class="table-cen">
					  <tr>
						<th rowspan="2">생활관명</th>
						<th rowspan="2"> 설치장소</th>
						<th colspan="2">설치 수량</th>
						<th colspan="2">사용료</th>
						<th rowspan="2">비고 </th>
					  </tr>
					  <tr>
						<th>드럼세탁기</th>
						<th>건조기</th>
						<th>드럼세탁기</th>
						<th>건조기</th>
					  </tr>
					  <tr>
						<td>제2학생생활관</td>
						<td>각 층</td>
						<td>3대 / 층</td>
						<td>1대 / 층</td>
						<td rowspan="3">500원</td>
						<td rowspan="3">1,000원</td>
						<td rowspan="3">세제 및 섬유유연제 등 세탁에 필요한 용품은 개인적으로 준비 </td>
					  </tr>
					  <tr>
						<td>개나리관</td>
						<td>지하 1층</td>
						<td>8대</td>
						<td>4대</td>
					  </tr>
					  <tr>
						<td>국제관</td>
						<td>지하 1층</td>
						<td>8대</td>
						<td>4대</td>
					  </tr>
					</table>
					<br/>
					<h4>나. 세탁실 이용방법 및 주의사항 <span class="pointclr" style="font-size:12px;">*아래 이미지를 클릭하시면 크게 보실 수 있습니다.</span></h4>
					<table class="table-cen">
					  <tr>
						<th><p>세탁실 이용방법</p></th>
						<th><p>세탁기 주의사항</p></th>
						<th><p>건조기 주의사항</p></th>
					  </tr>
					  <tr>
						<td><p>
						  <div class="room-preview"><img height="450" src="/images/sub/warning03.jpg" width="370"/></div>
						</p></td>
						<td><p>
						  <div class="room-preview"><img height="450" src="/images/sub/warning02.jpg" width="370"/></div>
						</p></td>
						<td><p>
						  <div class="room-preview"><img height="450" src="/images/sub/warning01.jpg" width="370"/></div>
						</p></td>
					  </tr>
					</table><br/>
				<h3>4. 다리미</h3>
					<table class="table-cen">
						<colgroup>
						<col width="25%" />
						<col width="" />
						</colgroup>
					  <tr>
						<th ><p>다리미 대여방법</p></th>
						<td class="alf"><p>다리미는 각 건물 경비실에서 학생증을 맡기고 대여하여 사용</p></td>
					  </tr>
					  <tr>
						<th ><p>다리미 사용장소</p></th>
						<td class="alf"><p>각 생활관 지하 1층 </p></td>
					  </tr>
					  <tr>
						<th ><p>유의사항</p></th>
						<td class="alf"><p>① 다리미대가 젖어 있으면 다음 사용자에게 불쾌감을 줄 수 있으니 젖은 빨래는 다리미대 위에 올려놓지 마세요</p>
						  <p>② 화재위험이 큰 다리미는 생활관에서 대여하는 다리미 외 개인적으로 소지 하여 사용할 수 없으며 개인적으로 소지하여     사용도중 적발이 되는 경우에는 압수 및 벌점이 부과되오니 사용하지 마세요</p></td>
					  </tr>
					</table><br/>
				<h3>5. PC Zone  </h3>
				<table class="table-cen">
				  <tr>
					<th><p>위치</p></th>
					<th><p>컴퓨터</p></th>
					<th><p>프린터기 </p></th>
					<th><p>컬러복합기</p></th>
				  </tr>
				  <tr>
					<td><p>제2학생생활관 1층 식당 안쪽</p></td>
					<td><p>3대</p></td>
					<td><p>3대</p></td>
					<td><p>1대</p></td>
				  </tr>
				</table><br/>
				<h3>6. 자건거·오토바이 네임텍 부착  </h3>
				<table class="table-cen">
					<colgroup>
					<col width="25%" />
					<col width="" />
					</colgroup>
				  <tr>
					<th ><p>네임택 수령</p></th>
					<td  class="alf"><p>① 해당 생활관 건물 1층 경비실 </p>
					  <p>② 학생생활관 행정팀 (제2학생생활관 1층)</p></td>
				  </tr>
				  <tr>
					<th ><p>거치장소</p></th>
					<td  class="alf"><p> 네임택을 부착하여 지정된 주차구역 및 자전거 거치대에 보관</p>
					  <p  class="pointclr">※ 자전거 및 이륜차(오토바이) 도난 시, 생활관에서는 책임지지 않으니 도난 등의 피해가 발생되지 않도록 각별히 주의하여  야 함</p></td>
				  </tr>
				  <tr>
					<th><p>유의사항</p></th>
					<td  class="alf"><p>① 네임텍이 부착되어 있지 않은 자전거 or 오토바이는 일정기간 이후에 잠금장치를 절단하여 임의 처분함 </p>
					  <p>② 생활관에 거주하지 않는 학생의 자전거 or 오토바이는 일정기간 이후에 잠금장치를 절단하여 임의 처분함</p></td>
				  </tr>
				</table><br/>
				<h3>7. 매점 및 커피전문점 </h3>
				<table class="table-cen">
				  <tr>
					<th ><p>매점</p></th>
					<th ><p>커피전문점</p></th>
				  </tr>
				  <tr>
					<td ><p>제2학생생활관 1층 식당 내에 위치</p></td>
					<td ><p>제2학생생활관 1층 식당 앞에 위치</p></td>
				  </tr>
				</table><br/>
				<h3>8. 기타 주의사항</h3>
				<table class="table-cen">
					<colgroup>
					<col width="25%" />
					<col width="" />
					</colgroup>
				  <tr>
					<th >호실점검·					  정기소독</th>
					<td class="alf">모든 관생들의 보다 나은 편익과 위생, 관리를 위해 소독 및 수시 점검 실시<br/>
					   <span class="pointclr2">※ 호실 내에 관생이 없을 경우에도 소독 및 수시 호실 점검이 실시됨 </span></td>
				  </tr>
				  <tr>
					<th >도난 주의</th>
					<td  class="alf">도난 방지를 위하여 외출 시 호실 문을 꼭 잠궈야 함<br/>
					   <span class="pointclr">※ 학생의 부주의로 인한 도난은 생활관에서 절대 책임지지 않음 </span></td>
				  </tr>
				  <tr>
					<th >음주 금지</th>
					<td  class="alf">생활관 전체 공간 내에서의 음주 및 주류 보관 금지 (빈병 포함)</td>
				  </tr>
				  <tr>
					<th >호실 청소</th>
					<td  class="alf">관생들은 자기 방을 직접 청소해야 하며, 항상 청결을 유지해야 함</td>
				  </tr>
				  <tr>
					<th >빨래건조대 
					  복도 설치 금지</th>
					<td  class="alf">생활관의 복도에 적치물을 금지하는 소방법 준수와 도난예방 목적에 따라 <span class="pointclr2">생활관 복도에 빨래건조대 설치 절대 금지</span> </td>
				  </tr>
				  <tr>
					<th>전열기 사용 금지</th>
					<td  class="alf"><span class="pointclr2">생활관의 호실 내에서는 전열기의 사용 절대 금지</span> </td>
				  </tr>
				  <tr>
					<th >화기단속</th>
					<td  class="alf">① 모두가 자기 방 및 공동 시설에 대한 화기단속의 책임이 있으며, 화재 예방에 적극 협조해야 함<br/>
					  ② 생활관은 건물전체가 금연구역으로 지정되어 있으므로 흡연구역으로 지정된 장소에서만 흡연 가능</td>
				  </tr>
				  <tr>
					<th >비상약품 비치</th>
					<td  class="alf">반창고 등 간단한 비상 의약품은 학생생활관 행정팀에 비치되어 있음</td>
				  </tr>
				</table>
			</div>
			<!-- e : 입사기간 -->

			<!-- s : 유무선인터넷사용방법-->
			<div id="guide3" class="guidebox hidden">
				<div class="tc" style="padding:0 50px;"><img src="/images/sub/htu_internet.jpg" alt="유무선인터넷사용방법" /></div>
			</div>
			<!-- s : 유무선인터넷사용방법-->

			<!-- s : 유무선인터넷사용방법-- 
			<div id="guide3" class="guidebox hidden">
				<h3>1. 유선랜 사용방법 (문의처 : 정보통신처 정보인프라팀  ☎ 02-2220-1427)</h3>
				<table class="table-cen">
				  <tr>
					<th valign="center"><p>구분</p></th>
					<th valign="center"><p>안내문 바로가기</p></th>
				  </tr>
				  <tr>
					<td valign="center"><p>유선랜 사용방법</p></td>
					<td valign="center"><p>
					   <img src="/images/sub/HYU_Lan_Info.jpg" alt="" width="900px" />
				   </td>
				  </tr>
				  <tr>
					<td valign="center"><p>무선공유기 사용방법</p></td>
					<td valign="center"><p><img src="/images/sub/HYU_Lan_Info2.jpg" alt="" width="900px" />
				   </td>
				  </tr>
				</table>
				<div>
					<ul>
						<li> ■ 개인적으로 보유하고 있는 유무선 공유기, 허브 사용 가능함</li>
						<li> ■ IP주소가 필요한 경우 게시판에 부착되어있는 각 호실 별 IP주소를 확인</li>
					</ul>
				</div>
				<br/>
				<h3> 2. 전산망 장애 신고절차 안내</h3>
				<div style="padding-left:20px;">
					① 한양인 포털 로그인 -> [신청] -> [전산망 고장신고] 메뉴 선택
					<div><img src="/images/sub/home1.jpg" alt="" style="border:2px solid #ddd;"></div><br/>
					② 고장신고 내역 신규 추가 : [추가] 버튼 클릭하여 신규 목록 추가
					<div><img src="/images/sub/home2.jpg" alt="" style="border:2px solid #ddd;"></div><br/>
					③ 고장신고 세부내용 입력
					<ul style="padding-left:20px;">
						<li>㉮ 신고장소 입력
							<p style="padding-left:20px;">ⓐ 전산망 고장신고 상세 창에서 검색[<img src="/images/btn_search.jpg" alt="" />] 버튼 클릭 <br/>
							   ⓑ 시설물 검색 창에서 신고할 공간정보 선택</p>
						</li>
						<li>㉯ 신고자 상세사항 입력 : 기본 정보는 자동입력 됨 (전화번호 및 연락처 변경가능)</li>
						<li>㉰ 장애내역 입력 : 가능하면 자세히 입력</li>
						<li>㉱ 개인정보 수집 동의 체크<br/>
						<img src="/images/sub/home3.jpg" alt="" style="border:2px solid #ddd;"></li>
						<li>㉲ [확인] 버튼 클릭 </li>
					</ul>
				</div><br/>
				<h3>3. 통신사 와이파이 사용방법</h3>
				<table class="table-cen">
				  <tr>
					<th><p>구분</p></th>
					<th><p>안내문 바로가기</p></th>
				  </tr>
				  <tr>
					<td><p>Wi-Fi Free_U+Zone 사용방법</p></td>
					<td><p> 
					 
					  <img src="/images/sub/Free_U+Zone_Info.jpg" alt="" width="900" />
					
					</p></td>
				  </tr>
				  <tr>
					<td><p>Wi-Fi T wifi Zone 사용방법</p></td>
					<td><p>
					 
					  <img src="/images/sub/T_wifi_zone_Info.jpg" alt="" width="900" />
					 
					</p></td>
				  </tr>
				</table>

			</div>
			 e : 유무선인터넷사용방법-- -->

			<!-- s : 우편물 수령 -->
			<div id="guide4" class="guidebox hidden">
				<h3>1. 우편물 수령</h3>
				<table class="table-cen">
					<colgroup>
						<col width="200" />
						<col />
					</colgroup>
				  <tr>
					<th colspan="2" valign="center"><p>우편물 배달 시간 </p></th>
					<td valign="center" class="alf"><p>(월～금) 오후 3시 </p></td>
				  </tr>
				  <tr>
					<th rowspan="3" valign="center"><p>우편물 </p>
					  <p>수령 방법</p></th>
					<th valign="center"><p>일반우편물</p></th>
					<td valign="center" class="alf"><p>각 생활관 로비에 비치된 우편함에 꽂아두니 우편함에서 확인</p></td>
				  </tr>
				  <tr>
					<th valign="center"><p>등기우편물</p></th>
					<td valign="center" class="alf"><p>① 학생생활관 행정팀에서 등기우편물 도착 문자 발송 또는 전화 연락</p>
					  <p>② 학생생활관 행정팀을 방문하여 수령 및 수령확인 날인 <span class="pointclr">(반드시, 학생증 지참)</span></p></td>
				  </tr>
				  <tr>
					<th valign="center"><p>택배</p></th>
					<td valign="center" class="alf"><p>① <span class="pointclr">경비실 (경비실에서 수령 시 학생증 지참 및 수령확인 날인)</span></p>
					  <p>② 제2학생생활관 1층에 비치된 무인택배함에서 수령 (택배도착 시 도착문자 및 비밀번호 자동 전송됨)</p></td>
				  </tr>
				  <tr>
					<th colspan="2" valign="center"><p> 우편물 수령 주소</p></th>
					<td valign="center" class="alf"><p class="pointclr">(04763) 서울시 성동구 왕십리로 222번지 한양대학교 (거주생활관명, 배정호실, 성명 기재) </p>
					  <p>예) (04763) 서울시 성동구 왕십리로 222번지 한양대학교 제2학생생활관 201호, 김한양 </p></td>
				  </tr>
				</table><br/>
				<h3>2. 택배 발송</h3>
				<table class="table-cen">
					<colgroup>
						<col width="120" />
						<col />
					</colgroup> 
				  <tr>
					<th rowspan="8" valign="center"><p>발송</p>
					  <p>절차</p></th>
					<th colspan="2" valign="center"><p>박스 구입</p></th>
					<td valign="center" class="alf"><p>각 생활관 경비실에서 박스 구입</p></td>
				  </tr>
				  <tr>
					<th colspan="2" valign="center"><p>송장 수령</p></th>
					<td valign="center" class="alf"><p>각 생활관 경비실에 구비된 송장 수령</p></td>
				  </tr>
				  <tr>
					<th colspan="2" valign="center"><p>송장 작성</p></th>
					<td valign="center" class="alf"><p>송장을 볼펜으로 꾹꾹 눌러 작성</p></td>
				  </tr>
				  <tr>
					<th colspan="2" valign="center"><p>박스 포장</p></th>
					<td valign="center" class="alf"><p>파손위험을 최소화시킬 수 있도록 박스 포장</p></td>
				  </tr>
				  <tr>
					<th colspan="2" valign="center"><p>송장 부착</p></th>
					<td valign="center" class="alf"><p>박스 윗부분에 기입한 송장을 풀로 잘 안떨어지게 부착</p></td>
				  </tr>
				  <tr>
					<th rowspan="3" valign="center">택배
					 접수</th>
					<th valign="center"><p>접수 장소</p></th>
					<td valign="center" class="alf"><p>각 생활관 경비실로 접수</p></td>
				  </tr>
				  <tr>
					<th valign="center"><p>접수 시간</p></th>
					<td valign="center" class="alf"><p>09:00～12:00, 13:00～18:00 (공휴일 제외)</p></td>
				  </tr>
				  <tr>
					<th valign="center"><p>접수기간 외</p></th>
					<td valign="center" class="alf"><p>직접 전달 또는 익일 접수</p></td>
				  </tr>
				  <tr>
					<th colspan="3" valign="center"><p>택배 이용 시 유의사항</p></th>
					<td valign="center" class="alf"><p>① 초중량물(20kg이상)은 취급이 어려우니 분산하여 포장 (책 등은 다른 가벼운 물건과 함께 분산 포장)</p>
					  <p>② 컴퓨터, 모니터, 유리제품등 파손이 우려되는 제품은 취급 불가</p>
					  <p>③ 받는 곳 주소는 정확하게 기재하고, 꼭 볼펜으로 작성하여 택배용지 뒷장에도 선명하게 나타날 수 있도록 작성</p></td>
				  </tr>
				</table>
			</div>
			<!-- e : 우편물 수령 -->

			<!-- s : 열람실/체력단련실 -->
			<div id="guide5" class="guidebox hidden">
				<h3>1. 도서관</h3>
				<h4>가. 위치 : 제2학생생활관 지하1층   </h4>
				<table class="table-cen">
				  <tr>
					<th valign="center">구분</th>
					<th valign="center">좌석수</th>
					<th valign="center"><p>운영시간</p></th>
				  </tr>
				  <tr>
					<td valign="center">일반 열람실</td>
					<td valign="center">86석</td>
					<td valign="center">24시간 운영</td>
				  </tr>
				  <tr>
				    <td valign="center">노트북 열람실</td>
				    <td valign="center">42석</td>
				    <td valign="center">24시간 운영</td> </tr>
				  <tr>
				    <td valign="center">시험기간 개방 열람실</td>
				    <td valign="center">80석</td>
				    <td valign="center">[중간/기말 시험]대비 통금시간 연장 기간에 24시간 운영</td>
				  </tr>
				  <tr>
				    <td valign="center">합계</td>
				    <td valign="center">208석</td>
				    <td valign="center">&nbsp;</td>
				  </tr>
				</table><br/>
				<h4>나. 출입방법 : <span class="pointclr">각 출입구에 CCTV 작동</span></h4>
				<table class="table-cen">
				  <tr>
					<th valign="center"><p>학생구분</p></th>
					<th valign="center"><p>출입방법</p></th>
					<th valign="center"><p>비고</p></th>
				  </tr>
				  <tr>
					<td valign="center"><p>남학생</p></td>
					<td valign="center"  class="alf"><p>제2학생생활관 방향(남학생전용출입구)에서만 도서관으로 출입가능 </p>
					  <p class="pointclr">※ 반드시 학생증을 소지하여야만 출입가능함</p></td>
					<td valign="center"><p>남학생전용출입구 출입권한 부여됨</p></td>
				  </tr>
				  <tr>
					<td valign="center"><p>여학생</p></td>
					<td valign="center" class="alf"><p>한누리관 방향(여학생전용출입구)에서만 도서관으로 출입가능 </p>
					  <p class="pointclr">※ 반드시 학생증을 소지하여야만 출입가능함</p></td>
					<td valign="center"><p>여학생전용출입구 출입권한 부여됨</p></td>
				  </tr>
				</table><br/>
				<h3>2. 체력단련실 </h3>
				<table class="table-cen">
				  <tr>
					<th valign="center"><p>위치</p></th>
					<th valign="center"><p>운영시간</p></th>
					<th valign="center"><p>여학생 출입방법 </p></th>
				  </tr>
				  <tr>
					<td valign="center"><p>제2학생생활관 지하1층 </p></td>
					<td valign="center"><p>07:00～23:00</p></td>
					<td valign="center" class="alf"><p>제2학생생활관 경비실에 체력단련실 출입 요청</p>
					  <p class="pointclr">※ 반드시 경비실에 학생증 보관하여야만 체력단련실 사용 가능</p>
					  <p class="pointclr2">※ 여학생들은 남학생 생활관의 스피드게이트 통과권한이 부여되지 않음 </p></td>
				  </tr>
				</table>
			</div>
			<!-- e : 열람실/체력단련실 -->


		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->


<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->

<div class="dor-gallery-layer" style="padding:10px; display:none">
	<div class="fr btn-close" style="border:1px solid #ccc; padding:0 10px;">X</div>
	<img src="" id="show-image">
</div>

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