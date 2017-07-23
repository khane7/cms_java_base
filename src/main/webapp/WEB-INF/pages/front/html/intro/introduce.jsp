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
			<h2>생활관 소개</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관 소개</a></li>
				<li class="active"><a href="#">생활관 소개</a></li>
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

			<div class="pbox">
				<p class="tc">▣ 학생생활관 위치 : 서울특별시 성동구 왕십리로 222, 한양대학교</p>

				<div class="tc"><img src="/images/sub/map1.gif"></div>
			</div>

			<div class="pbox">
				<p>▣ 교원 및 연구원 숙소</p>
				<table class="table table-center">
					<thead>
					<tr>
						<th rowspan="2">생활관명</th>
						<th rowspan="2">성별</th>
						<th colspan="3">외국인교원</th>
						<th>연구원</th>
						<th rowspan="2">입사문의</th>
					</tr>
					<tr>
						<th>1인실</th>
						<th>가족실</th>
						<th>계</th>
						<th>1인실</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>제1학생생활관</td>
						<td>남/여</td>
						<td>6</td>
						<td>2</td>
						<td>8</td>
						<td></td>
						<td rowspan="5">
							<table class="table table-child">
								<tbody>
								<tr>
									<th>외국인교원</th>
									<td>교무팀 정재훈<br>☎ 02-2220-2056</td>
								</tr>
								<tr>
									<th>연구원</th>
									<td>학생생활관 행정팀<br>김태희<br>☎ 02-2220-1471</td>
								</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<td>제2학생생활관</td>
						<td>남/여</td>
						<td>3</td>
						<td>14</td>
						<td>17</td>
						<td></td>
					</tr>
					<tr>
						<td>개나리관</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>6</td>
					</tr>
					<tr>
						<td>국제관</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>6</td>
					</tr>
					<tr>
						<th colspan="2">계</th>
						<th>9</th>
						<th>16</th>
						<th>25</th>
						<th>12</th>
					</tr>
					</tbody>
				</table>
			</div>

			<!-- s : 2box -->
			<div class="pbox">
				<p>▣ 교원 및 연구원 숙소</p>

				<table class="table table-center">
					<caption>◆ 호실 수 및 인원</caption>
					<thead>
					<tr>
						<th rowspan="2">생활관명</th>
						<th rowspan="2">개관년도</th>
						<th rowspan="2">성별</th>
						<th colspan="2">2인실</th>
						<th colspan="2">3인실</th>
						<th colspan="2">4인실</th>
						<th colspan="2">계</th>
					</tr>
					<tr>
						<th>호실수</th>
						<th>인원</th>
						<th>호실수</th>
						<th>인원</th>
						<th>호실수</th>
						<th>인원</th>
						<th>호실수</th>
						<th>인원</th>
					</tr>
					</thead>
					<tfoot>
					<tr>
						<th colspan="3">계</th>
						<th>472</th>
						<th>944</th>
						<th>13</th>
						<th>39</th>
						<th>28</th>
						<th>112</th>
						<th>513</th>
						<th>1,095</th>
					</tr>
					</tfoot>
					<tbody>
					<tr>
						<td>제2학생생활관</td>
						<td>1995년</td>
						<td>남</td>
						<td>232</td>
						<td>464</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>232</td>
						<td>464</td>
					</tr>

					<tr>
						<td rowspan="2">테크노숙사</td>
						<td rowspan="2">2004년</td>
						<td rowspan="2">남</td>
						<td>62</td>
						<td>124</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td rowspan="2">105</td>
						<td rowspan="2">227</td>
					</tr>
					<tr>
						<td>28</td>
						<td>56</td>
						<td>13</td>
						<td>39</td>
						<td>2</td>
						<td>8</td>
					</tr>

					<tr>
						<td>개나리관</td>
						<td>2005년</td>
						<td>여</td>
						<td>82</td>
						<td>164</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>82</td>
						<td>164</td>
					</tr>
					<tr>
						<td>국제관</td>
						<td>2005년</td>
						<td>여</td>
						<td>68</td>
						<td>136</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>68</td>
						<td>136</td>
					</tr>

					<tr>
						<td rowspan="2">제1학생생활관</td>
						<td rowspan="2">1985년</td>
						<td>남</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>8</td>
						<td>32</td>
						<td rowspan="2">26</td>
						<td rowspan="2">104</td>
					</tr>
					<tr>
						<td>여</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>18</td>
						<td>72</td>
					</tr>
					</tbody>
				</table>

				<table class="table table-center" style="margin-top:20px;">
					<caption>◆ 호실 수 및 인원</caption>
					<thead>
					<tr>
						<th rowspan="2">생활관명</th>
						<th rowspan="2">성별</th>
						<th rowspan="2">입사정원</th>
						<th colspan="4">입사정원</th>
					</tr>
					<tr>
						<th>모집대상</th>
						<th>모집</th>
						<th>조교</th>
						<th>계</th>
					</tr>
					</thead>
					<tfoot>
					<tr>
						<th>계</th>
						<th>-</th>
						<th>1,095</th>
						<th>-</th>
						<th>1,082</th>
						<th>13</th>
						<th>1,095</th>
					</tr>
					</tfoot>
					<tbody>
					<tr>
						<td rowspan="2">제2학생생활관</td>
						<td rowspan="2">남</td>
						<td rowspan="2">464</td>
						<td>학부</td>
						<td>440</td>
						<td rowspan="2">4</td>
						<td rowspan="2">464</td>
					</tr>
					<tr>
						<td>일반대학원(비이공계)</td>
						<td>20</td>
					</tr>

					<tr>
						<td rowspan="3">테크노숙사</td>
						<td rowspan="3">남</td>
						<td rowspan="3">227</td>
						<td>일반대학원(이공계)</td>
						<td>122</td>
						<td rowspan="3">3</td>
						<td rowspan="3">227</td>
					</tr>
					<tr>
						<td>의생명공학전문대학원</td>
						<td>2</td>
					</tr>
					<tr>
						<td>외국인학생</td>
						<td>100</td>
					</tr>

					<tr>
						<td rowspan="2">개나리관</td>
						<td rowspan="2">여</td>
						<td rowspan="2">164</td>
						<td>학부</td>
						<td>142</td>
						<td rowspan="2">2</td>
						<td rowspan="2">164</td>
					</tr>
					<tr>
						<td>일반대학원(비이공계)</td>
						<td>20</td>
					</tr>

					<tr>
						<td rowspan="3">국제관</td>
						<td rowspan="3">여</td>
						<td rowspan="3">136</td>
						<td>일반대학원(이공계)</td>
						<td>20</td>
						<td rowspan="3">2</td>
						<td rowspan="3">136</td>
					</tr>
					<tr>
						<td>의생명공학전문대학원</td>
						<td>2</td>
					</tr>
					<tr>
						<td>외국인학생</td>
						<td>112</td>
					</tr>

					<tr>
						<td rowspan="2">제1학생생활관</td>
						<td>남</td>
						<td>32</td>
						<td>외국인학생</td>
						<td>31</td>
						<td>1</td>
						<td>32</td>
					</tr>
					<tr>
						<td>여</td>
						<td>72</td>
						<td>외국인학생</td>
						<td>71</td>
						<td>1</td>
						<td>72</td>
					</tr>

					</tbody>
				</table>

			</div>
			<!-- e : 2box -->

			<!-- s : 3box -->
			<div class="pbox">
				<p>▣ 시설 현황</p>

				<table class="table table-center">
					<caption>◆ 제2학생생활관</caption>
					<thead>
					<tr>
						<th rowspan="2">층</th>
						<th rowspan="2">사용용도</th>
						<th colspan="3">호실</th>
						<th rowspan="2">공용시설</th>
					</tr>
					<tr>
						<td>호실type</td>
						<td>호실수</td>
						<td>호실명</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th rowspan="2">10F</th>
						<td rowspan="2">외국인교원 숙소</td>
						<td>가족실</td>
						<td>14</td>
						<td rowspan="2">1001호~1017호</td>
						<td rowspan="2">
							<ul>
								<li>■ 세탁실</li>
								<li>■ 휴게실</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>1인실</td>
						<td>3</td>
					</tr>
					<tr>
						<th>9F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>29</td>
						<td>901호~929호</td>
						<td rowspan="8" class="tl">
							<ul>
								<li>
									■ 세탁실/세면장/샤워실
									<table class="table table-child">
										<tbody>
										<tr>
											<th>세탁기</th>
											<td>3대/층</td>
										</tr>
										<tr>
											<th>건조기</th>
											<td>1대/층</td>
										</tr>
										</tbody>
									</table>
								</li>
								<li>■ 남자화장실</li>
								<li>■ 휴게실 : 의자, TV, T탁자</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>8F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>29</td>
						<td>801호~829호</td>
					</tr>
					<tr>
						<th>7F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>29</td>
						<td>701호~729호</td>
					</tr>
					<tr>
						<th>6F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>29</td>
						<td>601호~629호</td>
					</tr>
					<tr>
						<th>5F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>29</td>
						<td>501호~529호</td>
					</tr>
					<tr>
						<th>4F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>29</td>
						<td>401호~429호</td>
					</tr>
					<tr>
						<th>3F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>29</td>
						<td>301호~329호</td>
					</tr>
					<tr>
						<th>2F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>29</td>
						<td>201호~229호</td>
					</tr>
					<tr>
						<th rowspan="2">1F</th>
						<td>행정시설</td>
						<td colspan="4" class="tl">
							<ul>
								<li>■ 학생생활관 관장실</li>
								<li>■ 학생생활관 행정팀</li>
								<li>■ 수위실</li>
								<li>■ 영양사실</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>편의시설</td>
						<td colspan="4" class="tl">
							<ul>
								<li>■ 식당 : 300석 (4인용 테이블 75개, 1인용 의자 300개)</li>
								<li>■ 매점</li>
								<li>■ 커피전문점</li>
								<li>■ 로비 PC Zone : 컴퓨터 3대, 프린터기 3대, 복사기 1대</li>
								<li>■ 공용냉장고 : 3대</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th rowspan="2">B1F</th>
						<td>행정시설</td>
						<td colspan="4" class="tl">
							<ul>
								<li>■ 전기실</li>
								<li>■ 보일러실(기계실)</li>
								<li>■ 미화원대기실</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>편의시설</td>
						<td colspan="4" class="tl">
							<ul>
								<li>■ 도서실 : 216석 (4인용 열람대 54개, 의자 216개)</li>
								<li>■ 체력단련실 : 러닝머신, 벤치프레스 외</li>
							</ul>
						</td>
					</tr>
					</tbody>
				</table>

				<table class="table table-center" style="margin-top:20px;">
					<caption>◆ 테크노숙사</caption>
					<thead>
					<tr>
						<th rowspan="2">층</th>
						<th rowspan="2">사용용도</th>
						<th colspan="3">호실</th>
						<th rowspan="2">공용시설</th>
					</tr>
					<tr>
						<td>호실type</td>
						<td>호실수</td>
						<td>호실명</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th>7F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>18</td>
						<td>701호~718호</td>
						<td rowspan="9">제2학생생활관<br>공용시설 공동 사용</td>
					</tr>
					<tr>
						<th>6F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>18</td>
						<td>601호~618호</td>
					</tr>
					<tr>
						<th>5F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>18</td>
						<td>501호~518호</td>
					</tr>
					<tr>
						<th>4F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>18</td>
						<td>401호~418호</td>
					</tr>
					<tr>
						<th>3F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>18</td>
						<td>301호~318호</td>
					</tr>

					<tr>
						<th rowspan="2">2F</th>
						<td>학생숙소</td>
						<td>3인1실</td>
						<td>7</td>
						<td>201호~207호</td>
					</tr>
					<tr>
						<td>4인1실</td>
						<td>1</td>
						<td>208호</td>
					</tr>
					<tr>
						<th rowspan="2">1F</th>
						<td>학생숙소</td>
						<td>3인1실</td>
						<td>6</td>
						<td>102호~107호</td>
					</tr>
					<tr>
						<td>4인1실</td>
						<td>1</td>
						<td>108호</td>
					</tr>
					<tr>
						<th>B1F</th>
						<td>편의시설</td>
						<td colspan="4" class="tl">■ 도서실 : 80석 (4인용 열람대 20개, 의자 80개)</td>
					</tr>

					</tbody>
				</table>

				<table class="table table-center" style="margin-top:20px;">
					<caption>◆ 개나리관</caption>
					<thead>
					<tr>
						<th rowspan="2">층</th>
						<th rowspan="2">사용용도</th>
						<th colspan="3">호실</th>
						<th rowspan="2">공용시설</th>
					</tr>
					<tr>
						<td>호실type</td>
						<td>호실수</td>
						<td>호실명</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th>7F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>12</td>
						<td>701호~712호</td>
						<td></td>
					</tr>
					<tr>
						<th>6F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>12</td>
						<td>601호~612호</td>
						<td></td>
					</tr>
					<tr>
						<th>5F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>12</td>
						<td>501호~512호</td>
						<td></td>
					</tr>
					<tr>
						<th>4F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>12</td>
						<td>401호~412호</td>
						<td></td>
					</tr>
					<tr>
						<th>3F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>11</td>
						<td>301호~311호</td>
						<td class="tl">■ 휴게실 : 소파, TV</td>
					</tr>
					<tr>
						<th>2F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>12</td>
						<td>201호~212호</td>
						<td></td>
					</tr>
					<tr>
						<th>1F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>11</td>
						<td>101호~111호</td>
						<td class="tl">
							<ul>
								<li>■ 휴게실 : 소파, TV, 냉장고</li>
								<li>■ 행정시설 : 수위실</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>B1F</th>
						<td>연구원숙소</td>
						<td>1인실</td>
						<td>6</td>
						<td>B-101호 ~ B-106호</td>
						<td class="tl">
							■ 세탁실
							<table class="table table-child">
								<thead>
								<tr>
									<th>세탁기</th>
									<th>건조기</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>8대</td>
									<td>4대</td>
								</tr>
								</tbody>
							</table>
						</td>
					</tr>
					</tbody>
				</table>

				<table class="table table-center" style="margin-top:20px;">
					<caption>◆ 국제관</caption>
					<thead>
					<tr>
						<th rowspan="2">층</th>
						<th rowspan="2">사용용도</th>
						<th colspan="3">호실</th>
						<th rowspan="2">공용시설</th>
					</tr>
					<tr>
						<td>호실type</td>
						<td>호실수</td>
						<td>호실명</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th>7F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>10</td>
						<td>701호~712호</td>
						<td></td>
					</tr>
					<tr>
						<th>6F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>10</td>
						<td>601호~612호</td>
						<td></td>
					</tr>
					<tr>
						<th>5F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>10</td>
						<td>501호~512호</td>
						<td></td>
					</tr>
					<tr>
						<th>4F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>10</td>
						<td>401호~412호</td>
						<td></td>
					</tr>
					<tr>
						<th>3F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>9</td>
						<td>301호~311호</td>
						<td class="tl">■ 휴게실 : 소파, TV</td>
					</tr>
					<tr>
						<th>2F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>10</td>
						<td>201호~212호</td>
						<td></td>
					</tr>
					<tr>
						<th>1F</th>
						<td>학생숙소</td>
						<td>2인실</td>
						<td>9</td>
						<td>101호~109호</td>
						<td class="tl">
							<ul>
								<li>■ 휴게실 : 소파, TV, 냉장고</li>
								<li>■ 행정시설 : 수위실</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>B1F</th>
						<td>연구원숙소</td>
						<td>1인실</td>
						<td>6</td>
						<td>B-101호 ~ B-106호</td>
						<td class="tl">
							■ 세탁실
							<table class="table table-child">
								<thead>
								<tr>
									<th>세탁기</th>
									<th>건조기</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>8대</td>
									<td>4대</td>
								</tr>
								</tbody>
							</table>
						</td>
					</tr>
					</tbody>
				</table>

				<table class="table table-center" style="margin-top:20px;">
					<caption>◆ 제1학생생활관</caption>
					<thead>
					<tr>
						<th rowspan="2">층</th>
						<th rowspan="2">사용용도</th>
						<th colspan="3">호실</th>
						<th rowspan="2">공용시설</th>
					</tr>
					<tr>
						<td>호실type</td>
						<td>호실수</td>
						<td>호실명</td>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th>3F</th>
						<td>학생 숙소</td>
						<td>4인실</td>
						<td>18</td>
						<td>301호~308호<br>311호~315호<br>327호~331호</td>
						<td>외국인 여학생</td>
					</tr>
					<tr>
						<th rowspan="4">1F</th>
						<td>학생 숙소</td>
						<td>4인실</td>
						<td>8</td>
						<td>101호~108호</td>
						<td>외국인 남학생</td>
					</tr>
					<tr>
						<td rowspan="2">외국인교원 숙소</td>
						<td>가족실</td>
						<td>2</td>
						<td>101호~102호</td>
						<td rowspan="2"></td>
					</tr>
					<tr>
						<td>1인실</td>
						<td>6</td>
						<td>103호~108호</td>
					</tr>
					<tr>
						<td>행정시설</td>
						<td colspan="3"></td>
						<td class="tl">■ 수위실</td>
					</tr>
					</tbody>
				</table>
			</div>
			<!-- e : 3box -->

			<!-- s : 4box -->
			<div class="pbox">
				<p>▣ 연락처</p>

				<table class="table table-center">
					<thead>
					<tr>
						<th colspan="2">부서명</th>
						<th>전화번호</th>
						<th>사무실 위치</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td colspan="2">학생생활관 행정팀</td>
						<td>02) 2220 –1471, 1488</td>
						<td>제2학생생활관 1층</td>
					</tr>
					<tr>
						<td rowspan="4">경비실</td>
						<td>제2학생생활관/테크노숙사</td>
						<td>02) 2290 - 3401</td>
						<td>제2학생생활관 1층</td>
					</tr>
					<tr>
						<td>개나리관</td>
						<td>02) 2290 - 3415</td>
						<td>개나리관 1층</td>
					</tr>
					<tr>
						<td>국제관</td>
						<td>02) 2290 - 3416</td>
						<td>국제관 1층</td>
					</tr>
					<tr>
						<td>제1학생생활관</td>
						<td>02) 2290 - 1589</td>
						<td>제1학생생활관 1층</td>
					</tr>
					<tr>
						<td colspan="2">전기실</td>
						<td>02) 2290 - 3408</td>
						<td>제2학생생활관 지하1층</td>
					</tr>
					<tr>
						<td colspan="2">기계실</td>
						<td>02) 2290 - 3409</td>
						<td>제2학생생활관 지하1층</td>
					</tr>
					<tr>
						<td colspan="2">영양사실</td>
						<td>02) 2290 - 3410</td>
						<td>제2학생생활관 1층</td>
					</tr>
					</tbody>
				</table>
			</div>
			<!-- e : 4box -->

			<br><br><br>

		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
