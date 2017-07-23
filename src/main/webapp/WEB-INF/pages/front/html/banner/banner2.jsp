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
			<h2>학생숙소 호실점검</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활안내</a></li>
				<li class="active"><a href="#">학생숙소 호실점검</a></li>
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
			<h3>1. 호실점검 목적 </h3>
			<div class="boxtype1">
				<ol>
				  <li>① 학생생활관 안전관리, 질서유지 및 시설보호 </li>
				  <li>② 일부 부도덕한 입사자에 의한 호실양도 및 명의도용 사례 적발 증가 </li>
				  <li>③ 주요 생활수칙 위반 사례 지속적인 증가
					<div style="padding:4px 10px 10px 15px;">
						- 스피드게이트가 설치/운영됨에도 불구하고 외부인 동반/출입, 학생증 대여 등으로 외부인에게 호실 사용/대여 <br/>
						- 호실 내 흡연, 호실 및 생활관 내 음주 등  <br/>
					</div>
				  </li>
				</ol>
			</div>
			<br/><br/>
			<h3>2. 호실점검</h3>
			<table class="table-cen">
				<colgroup>
				  <col width="20%">
				  <col>
				</colgroup>
				<tbody>
				  <tr>
					<th>점검시기</th>
					<td class="alf pointclr">불시</td>
				  </tr>
				  <tr>
					<th>점검장소</th>
					<td class="alf">학생숙소 전체 호실</td>
				  </tr>
				  <tr>
					<th>점검방법</th>
					<td class="alf">
					  생활지도조교가 각 호실을 직접 방문하여 호실내 모든 물품 확인 및 호실 상태 점검
					  <p class="pointclr">※ 관생이 부재중인 경우에도 생활지도조교가 호실에 출입하여 점검 실시</p>
					</td>
				  </tr>
				  <tr>
					<th>점검내용</th>
					<td class="alf">
					  <ol>
						<li>① 관생 신분 확인 : 호실양도 및 대리입사, 외부인 동반/출입, 임의호실 변경 확인</li>
						<li>② 흡연, 인화물질 및 취사도구 보관, 전열기구 보관 및 사용, 음주, 주류 보관, 청소상태, 호실 내 신발 착용 등 전반적인 호실 내부상태 점검</li>
						<li>③ 허가되지 않은 호실 반입금지 물품 수거 <span class="pointclr">(음식물의 경우 반환 불가)</span></li>
						<li>
						  ④ 이유를 불문하고 벌점 부과 
						  <p><span class="pointclr">※ 생활지도조교 지시사항에 대해 이행하지 않을 시 벌점을 추가로 부과할 수 있음</span><br>(비협조적인 태도, 의도적인 회피 등)</p></li>
					  </ol>
					</td>
				  </tr>
				  <tr>
					<th>조치사항</th>
					<td class="alf">
					  <ol>
						<li><span class="pointclr">① 호실 양도/대리입사, 외부인 동반/출입의 경우 즉시 퇴사하여야 하며, 입사생 및 외부인 모두 재학 중 입사를 불허</span></li>
						<li><span class="pointclr2">② 누적벌점이 15점 이상인 경우 이유를 불문하고 즉시 퇴사하여야 함</span><br/>
							<p style="padding:0 0 0 15px;">㉮ 강제퇴사를 통보받은 날부터 5일 이내 퇴사, 생활관비 환불없음<br/>
							   ㉯ 누적벌점이 15점～19점인 경우 부여받은 벌점 및 시기에 따라 2개 학기까지 생활관 입사신청이 불가함<br/>
							   ㉰ 벌점누적이 20점 이상인 경우 재학 중 입사 불허
							   </p>
						</li>
						</ol>
					</td>
				  </tr>
				</tbody>
			</table>
			<br/><br/>
			<h3>3. 호실양도 및 명의도용자 적발 시 처벌사항</h3>
			<div class="boxtype1">
				벌점기준표에 준하여 아래와 같은 근거로 학칙에 따라 강력하게 대응 
				<ol>
				  <li>&nbsp;&nbsp;&nbsp;① 벌점 20점 부과, 5일 이내 강제퇴사, 생활관비 환불 불가, 재학 중 입사 불가  </li>
				  <li>&nbsp;&nbsp;&nbsp;② 호실 양도자 및 양수자 명단을 소속 단과대학(원) 행정팀에 공문으로 통보 </li>
				  <li class="pointclr">&nbsp;&nbsp;&nbsp;③ 다음 학기 정원 배정 시 적발건수 만큼 소속 단과대학(원)의 배정인원을 감원</li>
				</ol>
			</div>
			<br/><br/>
			<h3>4. 처벌 관련 규정</h3>
			<table class="table-cen">
            <colgroup>
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <th>학생생활관 운영내규</th>
                <td class="alf">
                  제4장 벌점 제24조(벌점부과)<br>
                  제4장 벌점 제25조(제재)<br>
                  제3장 입사자의 권리 및 의무와 책임 제13조(생활관비 환불) ③항
                </td>
              </tr>
              <tr>
                <th>학생 상벌에 관한 규정</th>
                <td class="alf">
                  제3장 제6조(징계의 대상) ②항 4호,5호, 6호, 12호<br>
                  - ②항 학생이 다음 각호에 해당할 때에는 소정의 절차를 거쳐 징계할 수 있다.<br>
                  4. 학사행정업무를 방해하거나 지장을 주는 행위를 한 자<br>
                  5. 학교시설물에 무단 침입하거나 점거 한 자<br>
                  6. 학교재산을 무단 사용하거나 반출한 자<br>
                  12. 기타 학칙 또는 벌률을 위반하거나 학생 본분에 어긋난 행위를 한 자
                </td>
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
	<h4>title</h4>

	<div><img src="" id="show-image"></div>
	<p id="image-desc"></p>

	<div class="btn-close tc">CLOSE</div>
</div>
<!-- e : layer popup -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
