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
			<h2>벌점제도 및 벌점감면제도</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관 소개</a></li>
				<li class="active"><a href="#">벌점제도 및 벌점감면제도</a></li>
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

			<ul class="penalty-tab">
				<li class="active"><a href="#penalty-tab1">벌점제도</a></li>
				<li><a href="#penalty-tab2">벌점 기준표</a></li>
				<li><a href="#penalty-tab3">벌점 감면제도</a></li>
			</ul>

			<!-- s : tab1 -->
			<div id="penalty-tab1">

				<p style="margin-right:10; margin-left:0;"><b><font color="#0070C0">▣
					벌점제도</font></b></p>

				<p style="line-height:100%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:0;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<b><font color="#0066CC">■ 벌점 부과</font></b></p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;① 입사자의 생활수칙 위반행위에 대하여 벌점기준표에 따라 벌점을 부과</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;② 부과된 벌점은 누적되어 재학 중 효력을 가지며, 이후 학생생활관 입사가 제한됨</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<b><font color="#0066CC">■ 벌점 누적에 대한 조치 사항</font></b></p>
				<table width="618" cellspacing="0" style="border-collapse:collapse;" align="center">
					<tbody>
					<tr>
						<td bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:1px; border-bottom-width:3px; border-left-width:2px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" width="92">
							<p align="center" style="line-height:150%; margin:3;"><b>벌점</b></p>
						</td>
						<td bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:1px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" width="217">
							<p align="center" style="line-height:150%; margin:3;"><b>조치 사항 </b></p>
						</td>
						<td bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:2px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" width="297">
							<p align="center" style="line-height:150%; margin:3;"><b>기타</b></p>
						</td>
					</tr>
					<tr>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:1px; border-left-width:2px; border-color:rgb(153,153,153); border-style:solid;" width="92">
							<p align="center" style="line-height:150%; margin:3;"><font color="red">20점</font>
							</p>
						</td>
						<td style="border-width:1px; border-color:rgb(153,153,153); border-style:solid;" width="217">
							<p align="left" style="line-height:150%; margin:3;"><font color="red">①
								즉시퇴사 </font></p>

							<p align="left" style="line-height:150%; margin:3;"><font color="red">②
								방학잔류 불가</font></p>

							<p align="left" style="line-height:150%; margin:3;"><font color="red">③
								재학 중 입사불가</font></p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:1px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;" width="297">
							<p align="left" style="line-height:150%; margin:3;"><font color="red">
								&nbsp;</font></p>
						</td>
					</tr>
					<tr>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:2px; border-color:rgb(153,153,153); border-style:solid;" width="92">
							<p align="center" style="line-height:150%; margin:3;">
								<font color="blue">19점～15점</font></p>
						</td>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;" width="217">
							<p align="left" style="line-height:150%; margin:3;"><font color="blue">①
								즉시퇴사 </font></p>

							<p align="left" style="line-height:150%; margin:3;"><font color="blue">②
								방학잔류 불가</font></p>

							<p align="left" style="line-height:150%; margin:3;"><font color="blue">③
								다음 학기 입사불가 </font></p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;" width="297">
							<p align="left" style="line-height:150%; margin:3;"><font color="blue">벌점의
								부여 시기에 따라 2개학기까지 </font></p>

							<p align="left" style="line-height:150%; margin:3;"><font color="blue">입사
								신청이 불가한 경우 발생됨 </font></p>
						</td>
					</tr>
					</tbody>
				</table>
				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<b><font color="#0066CC">■ 벌점 누적 기간 및&nbsp;시작일</font></b></p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<font color="#0066CC"><b>&nbsp;① 입사신청 기준</b></font></p>
				<table width="620" cellspacing="0" style="border-collapse:collapse;" align="center">
					<tbody>
					<tr>
						<td rowspan="2" bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:2px; border-bottom-width:3px; border-left-width:2px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>구분</b>
							</p>
						</td>
						<td colspan="2" bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:1px; border-bottom-width:1px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>1학기</b>
							</p>
						</td>
						<td colspan="2" bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:2px; border-bottom-width:1px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>2학기 </b>
							</p>
						</td>
					</tr>
					<tr>
						<td bgcolor="#FFFFCC" style="border-top-width:1px; border-right-width:1px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>정규입사 </b>
							</p>
						</td>
						<td bgcolor="#FFFFCC" style="border-top-width:1px; border-right-width:1px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>하계
								방학잔류</b></p>
						</td>
						<td bgcolor="#FFFFCC" style="border-top-width:1px; border-right-width:1px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>정규입사</b>
							</p>
						</td>
						<td bgcolor="#FFFFCC" style="border-top-width:1px; border-right-width:2px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>동계
								방학잔류</b></p>
						</td>
					</tr>
					<tr>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:1px; border-left-width:2px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">누적
								기간</p>
						</td>
						<td style="border-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								직전 </p>

							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								2개학기</p>
						</td>
						<td style="border-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								직전학기</p>

							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								+</p>

							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								금학기</p>
						</td>
						<td style="border-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								직전 </p>

							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								2개학기 </p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:1px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								직전학기</p>

							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								+</p>

							<p style="text-indent:0; line-height:150%; margin:2;" align="center">
								금학기 </p>
						</td>
					</tr>
					<tr>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:2px; border-left-width:2px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">누적
								시작일</p>
						</td>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">전년도
								3.1</p>
						</td>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">전년도
								9.1</p>
						</td>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">전년도
								9.1</p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">금년도
								3.1</p>
						</td>
					</tr>
					</tbody>
				</table>
				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<font color="#0066CC"><b>&nbsp;② 입사자 기준 : 직전학기 + 금학기</b></font></p>
				<table width="620" cellspacing="0" style="border-collapse:collapse;" align="center">
					<tbody>
					<tr>
						<td rowspan="2" bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:2px; border-bottom-width:3px; border-left-width:2px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>구분</b>
							</p>
						</td>
						<td colspan="2" bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:1px; border-bottom-width:1px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>1학기</b>
							</p>
						</td>
						<td colspan="2" bgcolor="#FFFFCC" style="border-top-width:2px; border-right-width:2px; border-bottom-width:1px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>2학기 </b>
							</p>
						</td>
					</tr>
					<tr>
						<td bgcolor="#FFFFCC" style="border-top-width:1px; border-right-width:1px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>정규입사 </b>
							</p>
						</td>
						<td bgcolor="#FFFFCC" style="border-top-width:1px; border-right-width:1px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>하계
								방학잔류</b></p>
						</td>
						<td bgcolor="#FFFFCC" style="border-top-width:1px; border-right-width:1px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>정규입사</b>
							</p>
						</td>
						<td bgcolor="#FFFFCC" style="border-top-width:1px; border-right-width:2px; border-bottom-width:3px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>동계
								방학잔류</b></p>
						</td>
					</tr>
					<tr>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:2px; border-left-width:2px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">누적
								시작일</p>
						</td>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">전년도
								9.1</p>
						</td>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">전년도
								9.1</p>
						</td>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">금년도
								3.1</p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">금년도
								3.1</p>
						</td>
					</tr>
					</tbody>
				</table>
				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<b><font color="#0066CC">■ 벌점 확인 :</font> 학생생활관 행정팀에서 확인(제2학생생활관 103호)</b></p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<b><font color="#0066CC">■ 벌점 상쇄 :</font> 벌점 감면 제도 이용(<font color="red">학기당 3점까지
						벌점 감면 가능</font>)</b></p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

			</div>
			<!-- e : tab1 -->

			<!-- s : tab2 -->
			<div id="penalty-tab2" class="hidden tc">
				<img src="/images/sub/penalty_point2_img1.jpg" class="big-view">
			</div>
			<!-- e : tab2 -->

			<!-- s : tab3 -->
			<div id="penalty-tab3" class="hidden">

				<p style="margin-right:10; margin-left:0;"><b><font color="#0070C0">▣ 벌점 감면
					제도</font></b></p>

				<p style="line-height:100%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:0;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					① 벌점 누적으로 인한 불이익이 예상되는 학생은 벌점 감면 제도를 활용하여 벌점 감면 가능</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<font color="#0066CC">② 다음 학기 관생 선발 공지 전일까지 벌점 감면을 받아야만 입사 신청 시 반영됨</font></p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<font color="red">③ 학기당 3점까지 벌점 감면 가능</font></p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<b><font color="#0066CC">■ 벌점 감면 방법 및 활동</font></b></p>
				<table width="620" cellspacing="0" style="border-collapse:collapse;" align="center">
					<tbody>
					<tr>
						<td rowspan="2" style="border-top-width:2px; border-right-width:1px; border-bottom-width:4px; border-left-width:2px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" bgcolor="#FFFFCC">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								<b>벌점 감면 방법 </b></p>
						</td>
						<td rowspan="2" style="border-top-width:2px; border-right-width:1px; border-bottom-width:4px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" bgcolor="#FFFFCC">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								<b>벌점 감면</b></p>
						</td>
						<td colspan="2" style="border-top-width:2px; border-right-width:2px; border-bottom-width:1px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;" bgcolor="#FFFFCC">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								<b>벌점 감면을 위한 봉사활동</b></p>
						</td>
					</tr>
					<tr>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:4px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" bgcolor="#FFFFCC">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								<b>활동 분야</b></p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:4px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" bgcolor="#FFFFCC">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								<b>활동 내용</b></p>
						</td>
					</tr>
					<tr>
						<td rowspan="2" style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:2px; border-color:rgb(153,153,153); border-style:solid;">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								<font color="#0033CC"><b>1시간 분량의 청소 / 1일</b></font></p>

							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								① 평일 17:00~23:00</p>

							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								② 주말 10:00~20:00</p>
						</td>
						<td rowspan="2" style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								<font color="#0033CC"><b>1점 감면</b></font></p>
						</td>
						<td style="border-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								생활관</p>

							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								환경미화</p>

							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								도우미</p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:1px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								① 마당 청소</p>

							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								② 헬스장·글로벌빌리지 청소 </p>

							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								③ 휴게실 청소</p>

							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								④ 세탁기 청소 </p>

							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								⑤ 화장실·샤워실 청소</p>

							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								⑥ 흡연실 청소</p>

							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								⑦ 분리 수거</p>
						</td>
					</tr>
					<tr>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								생활관</p>

							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								도서실</p>

							<p align="center" style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								사석정리</p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								① 제2학생생활관 도서실</p>

							<p style="line-height:160%; margin-top:1; margin-right:3; margin-bottom:1; margin-left:3;">
								② 테크노숙사 도서실</p>
						</td>
					</tr>
					</tbody>
				</table>
				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					<b><font color="#0066CC">■ 벌점 감면 신청 및 절차</font></b></p>
				<table width="620" cellspacing="0" style="border-collapse:collapse;" align="center">
					<tbody>
					<tr>
						<td style="border-top-width:2px; border-right-width:1px; border-bottom-width:4px; border-left-width:2px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" bgcolor="#FFFFCC">
							<p align="center" style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;">
								<b>신청 기간</b></p>
						</td>
						<td style="border-top-width:2px; border-right-width:1px; border-bottom-width:4px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" bgcolor="#FFFFCC">
							<p align="center" style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;">
								<b>신청 절차</b></p>
						</td>
						<td style="border-top-width:2px; border-right-width:2px; border-bottom-width:4px; border-left-width:1px; border-color:rgb(153,153,153); border-top-style:solid; border-right-style:solid; border-bottom-style:double; border-left-style:solid;" bgcolor="#FFFFCC">
							<p align="center" style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;">
								<b>유의 사항</b></p>
						</td>
					</tr>
					<tr>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:2px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;" align="center">
								<b>수시 접수</b></p>
						</td>
						<td style="border-top-width:1px; border-right-width:1px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;">
								① 벌점감면신청서 작성</p>

							<p style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;">
								&nbsp;&nbsp;&nbsp;[<a href="point_form.hwp" target="_blank"><font color="#0033CC"><b>신청서
								다운로드</b></font></a>]</p>

							<p style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;">
								② 생활관 행정팀 방문 접수</p>
						</td>
						<td style="border-top-width:1px; border-right-width:2px; border-bottom-width:2px; border-left-width:1px; border-color:rgb(153,153,153); border-style:solid;">
							<p style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;">
								① 벌점감면제도 신청 시 신청 날짜와 시간을 반드시 기재</p>

							<p style="line-height:160%; margin-top:2; margin-right:3; margin-bottom:2; margin-left:3;">
								② <font color="red">봉사활동 후 반드시 행정팀의 확인을 받아야 함</font></p>
						</td>
					</tr>
					</tbody>
				</table>
				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

				<p style="line-height:160%; margin-top:0; margin-right:10; margin-bottom:0; margin-left:10;">
					&nbsp;</p>

			</div>
			<!-- s : tab3 -->

			<br><br><br>
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : layer popup -->
<div class="layer view-layer hidden">
	<div><img src="" id="show-image"></div>

	<div class="btn-close tc">CLOSE</div>
</div>
<!-- e : layer popup -->


<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


<script>
	$(function () {
		$("body").on("click", ".penalty-tab li a", function (e) {
			e.preventDefault();
			var target = $(this).attr("href");
			$(".penalty-tab li").removeClass("active");

			$("#penalty-tab1, #penalty-tab2, #penalty-tab3").hide();
			$(this).parent().addClass("active");
			$(target).show();
		});

		$("body").on("click", "img.big-view", function () {
			var _img = $(this).attr("src");

			$(".view-layer #show-image").attr("src", _img);
			$(".view-layer").bPopup();
		});

		$(".btn-close").click(function () {
			$(".view-layer").bPopup().close();
		});

		$(".other-site").click(function () {
			$(".link-list").toggle();
		});
	});
</script>