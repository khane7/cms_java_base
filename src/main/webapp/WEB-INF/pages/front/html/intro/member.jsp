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
			<h2>교직원소개</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관소개</a></li>
				<li class="active"><a href="#">교직원소개</a></li>
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
			<h3>1. 학생생활관</h3>
				<table class="table-cen">
					<colgroup>
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
						<col width="" />
					</colgroup>
					<tr><th>보직/직책</th><th>성명</th><th>직위</th><th>전화번호</th><th>사무실 위치</th></tr>
					<tr><td>학생생활관장</td><td>유규창</td><td>교수</td><td>02-2220-0080</td><td>서울 학생처장실</td></tr>
					<tr><td>학생생활관부관장</td><td>백종호</td><td>선임부장</td><td>02-2220-0082</td><td>서울 학생처장실</td></tr>
				</table>
				<br/><br/>
			<h3>2. 학생생활관 행정팀</h3>
				<table class="table-cen">
					<colgroup>
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
						<col width="" />
					</colgroup>
					<tbody><tr><th>보직/직책</th><th>성명</th><th>담당업무</th><th>전화번호</th><th>팩스</th></tr>
					<tr><td>학생생활관 행정팀장</td><td>김장곤</td><td>학생생활관 총괄</td><td>02-2220-1480</td><td colspan="7" rowspan="7">02-2290-3404</td></tr>
					<tr><td>차장</td><td>오상분</td><td rowspan="2">내국인 관생담당</td><td rowspan="2">02-2220-1471</td></tr>
					<tr><td>직원</td><td>윤현욱</td></tr>
					<tr><td>직원</td><td>정지혜</td><td rowspan="2">외국인 관생담당</td><td rowspan="2">02-2220-1472</td></tr>
					<tr><td>직원</td><td>김미송</td></tr>
					<tr><td>부장</td><td>이준근</td><td>생활관 시설 담당</td><td>02-2220-1488</td></tr>
					<!-- <tr><td>부장</td><td>이준근</td><td rowspan="2">생활관 시설 담당</td><td rowspan="2">02-2220-1488</td></tr> -->
					<!-- <tr><td>계장</td><td>조성대</td></tr> -->
				</tbody></table>
				<br/><br/>
			<h3>3. 생활지도조교</h3>
				<table class="table-cen">
				  <tbody>
					<tr>
					  <th rowspan="2">구분</th>
					  <th rowspan="2">담당건물명</th>
					  <th colspan="3">인원(명)</th>
					  <th rowspan="2">사무실 위치</th>
					</tr>
					<tr>
					  <th>한국인</th>
					  <th>외국인</th>
					  <th>계</th>
					</tr>
					<tr>
					  <td rowspan="6">교내<br />
					  생활관</td>
					  <td>제2학생생활관</td>
					  <td>4</td>
					  <td>&nbsp;</td>
					  <td>4</td>
					  <td colspan="8" rowspan="6">제2학생생활관 1층<br>
						</td>
					</tr>
					<tr>
					  <td>개나리관</td>
					  <td>2</td>
					  <td>&nbsp;</td>
					  <td>2</td>
					</tr>
					<tr>
					  <td>한양테크노숙사</td>
					  <td>1</td>
					  <td>1</td>
					  <td>2</td>
					</tr>
					<tr>
					  <td>한누리관</td>
					  <td>&nbsp;</td>
					  <td>3</td>
					  <td>3</td>
					</tr>
					<tr>
					  <td>제1학생생활관</td>
					  <td>1</td>
					  <td>1</td>
					  <td>2</td>
					</tr>
					<tr>
					  <td class="clr">계</td>
					  <td class="clr">8</td>
					  <td class="clr">5</td>
					  <td class="clr">13</td>
					</tr>
					<tr>
					  <td rowspan="7">외부<br />임대기숙사</td>
					  <td>효성빌</td>
					  <td>&nbsp;</td>
					  <td>1</td>
					  <td>1</td>
					  <td colspan="8" rowspan="7">각 임대기숙사에 상주<br>
						</td>
					</tr>
					<tr>
					  <td>스마트빌</td>
					  <td>&nbsp;</td>
					  <td>1</td>
					  <td>1</td>
					</tr>
					<tr>
					  <td>마장빌</td>
					  <td>&nbsp;</td>
					  <td>2</td>
					  <td>2</td>
					</tr>
					<tr>
					  <td>이튼하우스</td>
					  <td>&nbsp;</td>
					  <td>1</td>
					  <td>1</td>
					</tr>
					<tr>
					  <td>로즈빌</td>
					  <td>&nbsp;</td>
					  <td>1</td>
					  <td>1</td>
					</tr>
					<!-- <tr>
					  <td>비전빌</td>
					  <td>1</td>
					  <td>1</td>
					  <td>2</td>
					</tr> -->
					<tr>
					  <td class="clr">계</td>
					  <td class="clr">1</td>
					  <td class="clr">7</td>
					  <td class="clr">8</td>
					</tr>
					<tr>
					  <td colspan="2"  class="clr2">합계</td>
					  <td class="clr2">9</td>
					  <td class="clr2">12</td>
					  <td class="clr2">21</td>
					  <td colspan="8" class="clr2">&nbsp;</td>
					</tr>
				  </tbody>
				</table>
				<br/><br/>
				<h3>4. 용역파트</h3>
				<table class="table-cen">
				  <tbody>
					<tr>
					  <th rowspan="2">구분</th>
					  <th rowspan="2">인원(명)</th>
					  <th colspan="2">전화번호</th>
					  <th rowspan="2">사무실 위치</th>
					</tr>
					<tr>
					  <th>파트</th>
					  <th>전화번호</th>
					</tr>
					<tr>
					  <td rowspan="2"><p>시설용역</p></td>
					  <td rowspan="2">4</td>
					  <td><p>전기실</p></td>
					  <td><p>02) 2290 - 3408</p></td>
					  <td rowspan="2"><p>제2학생생활관 지하1층</p></td>
					</tr>
					<tr>
					  <td><p>기계실</p></td>
					  <td><p>02) 2290 - 3409</p></td>
					</tr>
					<tr>
					  <td rowspan="4">경비용역</td>
					  <td rowspan="4">8</td>
					  <td>제2학생생활관<br />
						한양테크노숙사</td>
					  <td><p><span lang="EN-US" xml:lang="EN-US">02) 2290 - 3401</span></p></td>
					  <td><p>제<span lang="EN-US" xml:lang="EN-US">2</span>학생생활관 <span lang="EN-US" xml:lang="EN-US">1</span>층</p></td>
					</tr>
					<tr>
					  <td><p>개나리관</p></td>
					  <td><p><span lang="EN-US" xml:lang="EN-US">02) 2290 - 3415</span></p></td>
					  <td><p>개나리관 <span lang="EN-US" xml:lang="EN-US">1</span>층</p></td>
					</tr>
					<tr>
					  <td><p>한누리관</p></td>
					  <td><p><span lang="EN-US" xml:lang="EN-US">02) 2290 - 3416</span></p></td>
					  <td><p>한누리관 <span lang="EN-US" xml:lang="EN-US">1</span>층</p></td>
					</tr>
					<tr>
					  <td><p>제<span lang="EN-US" xml:lang="EN-US">1</span>학생생활관</p></td>
					  <td><p><span lang="EN-US" xml:lang="EN-US">02) 2220 - 1589</span></p></td>
					  <td><p>제<span lang="EN-US" xml:lang="EN-US">1</span>학생생활관 <span lang="EN-US" xml:lang="EN-US">1</span>층</p></td>
					</tr>
					<tr>
					  <td>청소용역</td>
					  <td>8</td>
					  <td>&nbsp;</td>
					  <td>&nbsp;</td>
					  <td>&nbsp;</td>
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
