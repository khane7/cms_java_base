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
			<h2>환불기준</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">입퇴사안내</a></li>
				<li class="active"><a href="#">환불기준</a></li>
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
			<br><br><br>
			<p align="center"><img src="/images/update.jpg" alt=""></p>
			<!-- <div id="guide1" class="guidebox">
				  <h3>1. 환불기준 : 교내생활관</h3>
				  <div class="boxtype1">
				  <ul>
					<li>
					  <ol>
						<li>① 정규입사 입사포기 및 중도퇴사 신청자에 대하여 생활관에서 지정한 개관(입사개시일)을 기준으로 한          환불기준에 따라 생활관비를 환불할 수 있으며, 기물파손 및 분실이 있을 때 해당금액을 공제한다.</li>
						<li>② 신입생의 경우 개관 1일 전까지는 납부금액의 100%를 환불한다.</li>
						<li>③ 방학연장 연장포기 및 중도퇴사 신청자에 대하여 연장시작일을 기준으로 한 환불기준에 따라 생활관비를        환불할 수 있으며, 기물파손 및 분실이 있을 때 해당금액을 공제한다.</li>
						<li class="pointclr">④ 벌점초과로 인한 강제퇴사인 경우 생활관비를 환불하지 아니한다.</li>
						<li><B>⑤ 개관(입사개시일) 이후에 중도퇴사하는 경우 다음학기 입사신청이 제한됨</B></li>
					  </ol>
					</li>
				  </ul>
				  </div>
				  <br><br>

				  <div style="padding:0 0 0 20px;">
				   <ul>
						<li>
						  <h4>가. 정규입사</h4>
						  <table class="table-cen">
							  <tr>
								<th rowspan="2" valign="center"><p>환불구분</p></th>
								<th colspan="2" valign="center"><p>환불기준일</p></th>
								<th rowspan="2" valign="center"><p>환불기준</p>
								  <p><span lang="EN-US" xml:lang="EN-US">(1,000</span>원 이하는 절사<span lang="EN-US" xml:lang="EN-US">)</span></p></th>
								<th rowspan="2" valign="center"><p>다음학기 </p>
								  <p>입사제한여부 </p></th>
							  </tr>
							  <tr>
								<th valign="center"><p>학기</p></th>
								<th valign="center"><p>학기<span lang="EN-US" xml:lang="EN-US">+</span>방학</p></th>
							  </tr>
							  <tr>
								<td rowspan="2" valign="center"><p>입사포기<span lang="EN-US" xml:lang="EN-US">(</span>신청일 기준<span lang="EN-US" xml:lang="EN-US">)</span></p></td>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">10</span>일 전</p></td>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">10</span>일 전</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">100% </span></p></td>
								<td rowspan="2" valign="center"><p>해당사항 없음</p>
								  <p><span lang="EN-US" xml:lang="EN-US">(</span>입사신청 가능<span lang="EN-US" xml:lang="EN-US">)</span></p></td>
							  </tr>
							  <tr>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">9</span>일 전 ∼ <span lang="EN-US" xml:lang="EN-US">1</span>일 전 </p></td>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">9</span>일 전 ∼ <span lang="EN-US" xml:lang="EN-US">1</span>일 전</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">90% </span></p></td>
							  </tr>
							  <tr>
								<td rowspan="5" valign="center"><p>중도퇴사<span lang="EN-US" xml:lang="EN-US">(</span>퇴사일 기준<span lang="EN-US" xml:lang="EN-US">)</span></p></td>
								<td valign="center"><p>개관 ∼ <span lang="EN-US" xml:lang="EN-US">20</span>일 까지</p></td>
								<td valign="center"><p>개관 ∼ <span lang="EN-US" xml:lang="EN-US">30</span>일 까지</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">80% </span></p></td>
								<td rowspan="5" valign="center" class="pointclr"><p>다음학기 </p>
								  <p>입사신청 </p>
								  <p>불가능</p></td>
							  </tr>
							  <tr>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">21</span>일 ∼ <span lang="EN-US" xml:lang="EN-US">40</span>일 까지</p></td>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">31</span>일 ∼ <span lang="EN-US" xml:lang="EN-US">60</span>일 까지</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">65% </span></p></td>
							  </tr>
							  <tr>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">41</span>일 ∼ <span lang="EN-US" xml:lang="EN-US">60</span>일 까지</p></td>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">61</span>일 ∼ <span lang="EN-US" xml:lang="EN-US">90</span>일 까지</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">50% </span></p></td>
							  </tr>
							  <tr>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US">×</span></p></td>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">91</span>일 ∼ <span lang="EN-US" xml:lang="EN-US">115</span>일 까지</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">25% </span></p></td>
							  </tr>
							  <tr>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">61</span>일 부터 </p></td>
								<td valign="center"><p>개관 <span lang="EN-US" xml:lang="EN-US">116</span>일 부터 </p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>환불금 없음</p></td>
							  </tr>
							</table>
						  <br>
						</li>
						<li>
						  <h4>나. 방학연장</h4>
						  <table class="table-cen">
							  <tr>
								<th rowspan="2" valign="center"><p>환불구분</p></th>
								<th colspan="2" valign="center"><p>환불기준일</p></th>
								<th rowspan="2" valign="center"><p>환불기준</p>
								  <p><span lang="EN-US" xml:lang="EN-US">(1,000</span>원 이하는 절사<span lang="EN-US" xml:lang="EN-US">)</span></p></th>
							  </tr>
							  <tr>
								<th valign="center"><p>방학<span lang="EN-US" xml:lang="EN-US">(1</span>개월<span lang="EN-US" xml:lang="EN-US">)</span></p></th>
								<th valign="center"><p>방학<span lang="EN-US" xml:lang="EN-US">(2</span>개월<span lang="EN-US" xml:lang="EN-US">)</span></p></th>
							  </tr>
							  <tr>
								<td rowspan="3" valign="center"><p>연장포기</p>
								  <p><span lang="EN-US" xml:lang="EN-US">(</span>신청일기준<span lang="EN-US" xml:lang="EN-US">)</span></p></td>
								<td valign="center"><p>연장시작일 <span lang="EN-US" xml:lang="EN-US">10</span>일 전</p></td>
								<td valign="center"><p>연장시작일 <span lang="EN-US" xml:lang="EN-US">10</span>일 전</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">100%</span></p></td>
							  </tr>
							  <tr>
								<td valign="center"><p>연장시작일 <span lang="EN-US" xml:lang="EN-US">9</span>일 전∼<span lang="EN-US" xml:lang="EN-US">5</span>일 전 </p></td>
								<td valign="center"><p>연장시작일 <span lang="EN-US" xml:lang="EN-US">9</span>일 전∼<span lang="EN-US" xml:lang="EN-US">5</span>일전 </p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">85%</span></p></td>
							  </tr>
							  <tr>
								<td valign="center"><p>연장시작일 <span lang="EN-US" xml:lang="EN-US">4</span>일 전∼<span lang="EN-US" xml:lang="EN-US">1</span>일 전</p></td>
								<td valign="center"><p>연장시작일 <span lang="EN-US" xml:lang="EN-US">4</span>일 전∼<span lang="EN-US" xml:lang="EN-US">1</span>일 전</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">65%</span></p></td>
							  </tr>
							  <tr>
								<td rowspan="2" valign="center"><p>중도퇴사</p>
								  <p><span lang="EN-US" xml:lang="EN-US">(</span>퇴사일기준<span lang="EN-US" xml:lang="EN-US">)</span></p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span><span lang="EN-US" xml:lang="EN-US">×</span></p></td>
								<td valign="center"><p>연장시작일 ∼ <span lang="EN-US" xml:lang="EN-US">30</span>일 까지</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>납부금액의 <span lang="EN-US" xml:lang="EN-US">50%</span></p></td>
							  </tr>
							  <tr>
								<td valign="center"><p>연장시작일 부터</p></td>
								<td valign="center"><p>연장시작일 <span lang="EN-US" xml:lang="EN-US">31</span>일 부터</p></td>
								<td valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>환불금 없음</p></td>
							  </tr>
						 </table>
						  <br>
						</li>
				   </ul>
				  </div>				
				  <br><br>
				  <h3>2. 환불 신청 방법</h3>
				  <table class="table-cen">
					  <tr>
						<th valign="center"><p>환불구분</p></th>
						<th valign="center"><p>환불기준일</p></th>
						<th colspan="2" valign="center"><p><span lang="EN-US" xml:lang="EN-US"> </span>신청 방법 </p></th>
					  </tr>
					  <tr>
						<td rowspan="2" valign="center"><p>입사포기</p></td>
						<td rowspan="2" valign="center"><p>[입사포기신청] 신청일</p></td>
						<td valign="center"><p>재학생</p></td>
						<td valign="center"><p>한양인<span lang="EN-US" xml:lang="EN-US">(HY-in)</span>포털 → 화면 상단<span lang="EN-US" xml:lang="EN-US">[</span>신청<span lang="EN-US" xml:lang="EN-US">]</span>→ 생활관→ <span  class="pointclr2">【입사포기 신청】 </span> → <span  class="pointclr"> 입사포기자 명의 환불계좌 입력</span><span lang="EN-US" xml:lang="EN-US"> </span>→ 신청</p></td>
					  </tr>
					  <tr>
						<td valign="center"><p>신입생</p></td>
						<td valign="center"><p>학생생활관 홈페이지 【신입생용 교내정보시스템 바로가기】  →<span  class="pointclr2"> 【입사포기 신청】</span>  → <span  class="pointclr">입사포기자 명의 환불계좌 입력</span> → 신청</p></td>
					  </tr>
					  <tr>
						<td valign="center"><p>중도퇴사</p></td>
						<td valign="center"><p><span lang="EN-US" xml:lang="EN-US">[</span>퇴사신청<span lang="EN-US" xml:lang="EN-US">] </span>신청 후 </p>
						  <p class="pointclr2">학생생활관 퇴사일</p></td>
						<td colspan="2" valign="center"><p>한양인<span lang="EN-US" xml:lang="EN-US">(HY-in)</span>포털 → 화면 상단<span lang="EN-US" xml:lang="EN-US">[</span>신청<span lang="EN-US" xml:lang="EN-US">]</span>→ 생활관→<span  class="pointclr2"> 【퇴사신청】 </span>→ 퇴사예정일 입력<span lang="EN-US" xml:lang="EN-US">/ </span>퇴사구분<span lang="EN-US" xml:lang="EN-US">[</span>중도퇴사<span lang="EN-US" xml:lang="EN-US">] </span>→ <br/><span  class="pointclr">중도퇴사자 명의 환불계좌 입력</span> → 신청→ 퇴사신청서 출력 <span lang="EN-US" xml:lang="EN-US">(</span>퇴사 시 호실열쇠와 함께 학생생활관 행정팀에 제출<span lang="EN-US" xml:lang="EN-US">)</span></p></td>
					  </tr>
					</table><br/>
					<p class="pointclr"> ※ 환불계좌 : 입사포기자 또는 중도퇴사자 명의 환불계좌로만 입금 </p>
					<br/><br/>
				<h3>3. 환불금액 지급 : 신청일 또는 퇴사일 이후 10일 이내 환불</h3>
				<h3>4. 날짜별 생활관별 환불금액 : 모집요강 또는 [입사/퇴사공지] 공지문 참조</h3>




				
			</div>-->
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
