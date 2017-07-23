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
			<h2>생활관 증명 발급</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<!-- <li><a href="#">생활안내</a></li> -->
				<li class="active"><a href="#">생활관 증명 발급</a></li>
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
			<h3>1. 발급 증명 종류</h3>
			<table class="table-cen">
			  <tr>
				<th valign="center"><p>증명 종류</p></th>
				<th valign="center"><p>발급 <span lang="EN-US" xml:lang="EN-US">or </span>조회 방법</p></th>
				<th valign="center"><p>발급대상자</p></th>
			  </tr>
			  <tr>
				<td valign="center"><p>거주확인서</p></td>
				<td valign="center"><p>한양인<span lang="EN-US" xml:lang="EN-US">(HY-in)</span>포털에서 발급</p></td>
				<td rowspan="2" valign="center"><p>학생생활관 거주 관생</p>
				  <p>단<span lang="EN-US" xml:lang="EN-US">, </span>중도퇴사자 중 생활관비 환불 신청자는 한양인<span lang="EN-US" xml:lang="EN-US">(HY-in)</span>에서 발급 불가능<span lang="EN-US" xml:lang="EN-US"> </span></p></td>
			  </tr>
			  <tr>
				<td valign="center"><p>생활관비 납부 확인서</p></td>
				<td valign="center"><p>한양인<span lang="EN-US" xml:lang="EN-US">(HY-in)</span>포털에서 발급</p></td>
			  </tr>
			  <tr>
				<td valign="center"><p>현금영수증</p></td>
				<td valign="center"><p>국세청 홈텍스<span lang="EN-US" xml:lang="EN-US">(</span><a href="http://www.hometax.go.kr" target="_blank"><U><span lang="EN-US" xml:lang="EN-US">www.hometax.go.kr</span></U></a><span lang="EN-US" xml:lang="EN-US">)</span>에서 사용내역 조회</p></td>
				<td valign="center"><p>생활관비 납부자</p></td>
			  </tr>
			</table><br/><br/>

			<h3>2. 거주확인서 or 생활관비 납부 확인서 발급 방법  </h3>
			<table class="table-guide">
					  <tbody>
						<tr>
						  <td width="50" style="border-width:1; border-color:rgb(153,153,153); border-style:solid;"><p align="center"><span style="font-size:16px;">한양인 (HY-in) 포털</span></p></td>
						  <td width="12" style="border-width:1; border-color:rgb(153,153,153); border-top-style:none; border-right-style:solid; border-bottom-style:none; border-left-style:solid;"><p align="center"><span style="font-size:16px;">→</span></p></td>
						  <td width="50" style="border-width:1; border-color:rgb(153,153,153); border-style:solid;"><p align="center"><span style="font-size:16px;">증명발급</span></p></td>
						  <td width="12" style="border-width:1; border-color:rgb(153,153,153); border-top-style:none; border-right-style:solid; border-bottom-style:none; border-left-style:solid;"><p align="center"><span style="font-size:16px;">→</span></p></td>
						  <td width="50" style="border-width:1; border-color:rgb(153,153,153); border-style:solid;" bgcolor="#FFCCCC"><p align="center"><span style="font-size:16px;"><font color="#0070C0">포털증명발급<br/>(무료)</font></span></p></td>
						  <td width="12" style="border-width:1; border-color:rgb(153,153,153); border-top-style:none; border-right-style:solid; border-bottom-style:none; border-left-style:solid;"><p align="center"><span style="font-size:16px;">→</span></p></td>
						  <td width="90" style="border-width:1; border-color:rgb(153,153,153); border-style:solid;" bgcolor="#FFCC99"><p align="center"><span style="font-size:16px;"><font color="red">신청자정보 선택<br>증명조직 : 대학/대학(원)</font></span><font class="font6"><span style="mso-spacerun:yes"></span></font></p></td>
						  <td width="13" style="border-width:1; border-color:rgb(153,153,153); border-top-style:none; border-right-style:solid; border-bottom-style:none; border-left-style:solid;"><p align="center"><span style="font-size:16px;">→</span></p></td>						 
						 
						  <td width="90" style="border-width:1; border-color:rgb(153,153,153); border-style:solid;" bgcolor="#CCFFFF"><p align="center"><span style="font-size:16px;">증명서 선택<br>
							 ① 거주확인서<br>
							 ② 생활관비 납부 확인서<br> </span></p></td>
						  <td width="12" style="border-width:1; border-color:rgb(153,153,153); border-top-style:none; border-right-style:solid; border-bottom-style:none; border-left-style:solid;"><p align="center"><span style="font-size:16px;">→</span></p></td>
						  <td width="100" style="border-width:1; border-color:rgb(153,153,153); border-style:solid;" bgcolor="#CCFFCC"><p align="center"><span style="font-size:16px;"><font color="#903C39">팝업창에서 발급할  <br/>
【입사년도/학기/입사구분】 선택</font></span></p></td>
						  <td width="12" style="border-width:1; border-color:rgb(153,153,153); border-top-style:none; border-right-style:solid; border-bottom-style:none; border-left-style:solid;"><p align="center"><span style="font-size:16px;">→</span></p></td>
						  <td width="54" style="border-width:1; border-color:rgb(153,153,153); border-style:solid;" bgcolor="#C1C18F"><p align="center"><span style="font-size:16px;">확인</span></p></td>
						  
						  <td width="11" style="border-width:1; border-color:rgb(153,153,153); border-top-style:none; border-right-style:solid; border-bottom-style:none; border-left-style:solid;"><p align="center"><span style="font-size:16px;">→</span></p></td>
						  <td width="35" style="border-width:1; border-color:rgb(153,153,153); border-style:solid;"><p align="center"><span style="font-size:16px;">인쇄</span></p></td>
						</tr>
					  </tbody>
					</table>
			<br/><br/>

			<h3>3. 현금영수증 발급 </h3>
			<table class="table-room">
			  <tr>
				<th valign="center" class="fwb"><p>발급번호 </p></th>
				<td valign="center" class="alf"><p><span lang="EN-US" xml:lang="EN-US"> </span><span class="pointclr2">【생활관비 입사신청】 </span>시 입력된 현금영수증 발급번호로 발급</p></td>
			  </tr>
			  <tr>
				<th valign="center" class="fwb"><p>발급금액</p></td>
				<td valign="center" class="alf"><p><span lang="EN-US" xml:lang="EN-US"> </span>생활관비 납부금액 <span lang="EN-US" xml:lang="EN-US">(</span>단<span lang="EN-US" xml:lang="EN-US">, </span>중도퇴사자 중 생활관비 환불 신청자는 환불금액을 제외한 실제 납부금액으로 발급함<span lang="EN-US" xml:lang="EN-US">)</span></p></td>
			  </tr>
			  <tr>
				<th valign="center" class="fwb"><p>발급예정일</p></th>
				<td valign="center">
				  <table class="table-cen">
					<tr>
					  <th colspan="2" valign="center"><p><span lang="EN-US" xml:lang="EN-US">1</span>학기 </p></th>
					  <th colspan="2" valign="center"><p><span lang="EN-US" xml:lang="EN-US">2</span>학기 </p></th>
					</tr>
					<tr>
					  <td valign="center"><p>정규입사자</p></td>
					  <td valign="center"><p>하계방학 연장신청자</p></td>
					  <td valign="center"><p>정규입사자</p></td>
					  <td valign="center"><p>동계방학 연장신청자</p></td>
					</tr>
					<tr>
					  <td valign="center"><p><span lang="EN-US" xml:lang="EN-US">6</span>월 <span lang="EN-US" xml:lang="EN-US">30</span>일</p></td>
					  <td valign="center"><p><span lang="EN-US" xml:lang="EN-US">8</span>월 <span lang="EN-US" xml:lang="EN-US">31</span>일</p></td>
					  <td valign="center"><p><span lang="EN-US" xml:lang="EN-US">12</span>월 <span lang="EN-US" xml:lang="EN-US">26</span>일 </p></td>
					  <td valign="center"><p><span lang="EN-US" xml:lang="EN-US">12</span>월 <span lang="EN-US" xml:lang="EN-US">26</span>일</p></td>
					</tr>
				  </table>
				  </p></td>
			  </tr>
			  <tr>
				<th valign="center" class="fwb"><p>발급번호 </p>
				  <p>수정</p></td>
				<td valign="center" class="alf"><p><span lang="EN-US" xml:lang="EN-US"> </span>① 한양인<span lang="EN-US" xml:lang="EN-US">(HY-in)</span>포털 → 화면 상단<span lang="EN-US" xml:lang="EN-US">[</span>신청<span lang="EN-US" xml:lang="EN-US">]</span>→ 생활관 → <span class="pointclr2">【생활관비납부확인】</span> → <span class="pointclr">현금영수증 발급번호 수정</span><span lang="EN-US" xml:lang="EN-US"> </span>→ 저장</p>
				  <p><span lang="EN-US" xml:lang="EN-US"> </span>② 핸드폰번호가 변경되었거나 부모님의 핸드폰번호로 발급을 희망하는 경우 발급번호 수정기한내에 수정해야만 발급 가능</p>
				  <p><span lang="EN-US" xml:lang="EN-US"> </span>③ 입사구분별 수정기한 <span lang="EN-US" xml:lang="EN-US">: </span>발급예정일 <span lang="EN-US" xml:lang="EN-US">7</span>일전까지 수정</p>
				  <p>&nbsp;</p>
				  <table class="table-cen">
					<tr>
					  <th colspan="2" valign="center"><p><span lang="EN-US" xml:lang="EN-US">1</span>학기 </p></th>
					  <th colspan="2" valign="center"><p><span lang="EN-US" xml:lang="EN-US">2</span>학기 </p></th>
					</tr>
					<tr>
					  <td valign="center"><p>정규입사자</p></td>
					  <td valign="center"><p>하계방학 연장신청자</p></td>
					  <td valign="center"><p>정규입사자</p></td>
					  <td valign="center"><p>동계방학 연장신청자</p></td>
					</tr>
					<tr>
					  <td valign="center"><p><span lang="EN-US" xml:lang="EN-US">6</span>월 <span lang="EN-US" xml:lang="EN-US">25</span>일</p></td>
					  <td valign="center"><p><span lang="EN-US" xml:lang="EN-US">8</span>월 <span lang="EN-US" xml:lang="EN-US">25</span>일</p></td>
					  <td valign="center"><p><span lang="EN-US" xml:lang="EN-US">12</span>월 <span lang="EN-US" xml:lang="EN-US">20</span>일 </p></td>
					  <td valign="center"><p><span lang="EN-US" xml:lang="EN-US">12</span>월 <span lang="EN-US" xml:lang="EN-US">20</span>일</p></td>
					</tr>
				  </table>
				  </p></td>
			  </tr>
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
