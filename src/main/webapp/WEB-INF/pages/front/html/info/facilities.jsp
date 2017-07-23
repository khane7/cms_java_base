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
			<h2>시설현황</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관소개</a></li>
				<li class="active"><a href="#">시설현황</a></li>
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
				<li class="active"><a href="#guide1">교원/연구원숙소</a></li>
				<li><a href="#guide2">학생숙소</a></li>
				<li><a href="#guide3">게스트하우스</a></li>
			</ul>

			<div id="guide1" class="guidebox">
				<h3> 1. 외국인 교원숙소</h3>
				<table class="table-cen">
					<colgroup>
						<col width="16%" />
						<col width="16%" />
						<col width="16%" />
						<col width="16%" />
						<col width="16%" />
						<col width="" />
					</colgroup>
				  <tbody>
					<tr>
					  <th rowspan="2">생활관명</th>
					  <th rowspan="2">성별</th>
					  <th colspan="2">호실타입</th>
					  <th rowspan="2">계</th>
					  <th rowspan="2">입사문의</th>
					</tr>
					<tr>
					  <th>1인실</th>
					  <th>가족실</th>
					</tr>
					<tr>
					  <td>제1학생생활관</td>
					  <td>남/여</td>
					  <td>6</td>
					  <td>2</td>
					  <td>8</td>
					  <td rowspan="2">서울 교무처 교무팀 <br/> ☎ 02-2220-2056</td>
					</tr>
					<tr>
					  <td>제2학생생활관</td>
					  <td>남/여</td>
					  <td>3</td>
					  <td>14</td>
					  <td>17</td>
				    </tr>
					<tr >
					  <td colspan="2" class="clr2">계</td>
					  <td class="clr2">9</td>
					  <td class="clr2">16</td>
					  <td class="clr2">25</td>
					  <td class="clr2"></td>
					</tr>
				  </tbody>
				</table>
				<br/><br/>
				<h3> 2. 외국인 연구원숙소</h3>
				<table class="table-cen">
					<colgroup>
						<col width="16%" />
						<col width="16%" />
						<col width="16%" />
						<col width="16%" />
						<col width="16%" />
						<col width="" />
					</colgroup>
				  <tbody>
					<tr>
					  <th rowspan="2">생활관명</th>
					  <th rowspan="2">성별</th>
					  <th colspan="2">호실타입</th>
					  <th rowspan="2">계</th>
					  <th rowspan="2">입사문의</th>
					</tr>
					<tr>
					  <th>1인실</th>
					  <th>가족실</th>
					</tr>
					<tr>
					  <td>한양테크노숙사</td>
					  <td>남</td>
					  <td>5</td>
					  <td>0</td>
					  <td>5</td>
					  <td rowspan="2">서울 학생생활관 행정팀 <br/> ☎ 02-2220-1471</td>
					</tr>
					<tr>
					  <td>한누리관</td>
					  <td>여</td>
					  <td>3</td>
					  <td>0</td>
					  <td>3</td>
				    </tr>
					<tr >
					  <td colspan="2" class="clr2">계</td>
					  <td class="clr2">8</td>
					  <td class="clr2">0</td>
					  <td class="clr2">8</td>
					  <td class="clr2"></td>
					</tr>
				  </tbody>
				</table>
			</div>
		
			<div id="guide2" class="guidebox hidden">
				<h3>1. 학생숙소 현황</h3>
				<table class="table-cen">
				  <tr>
					<th>구분</th>
					<th>생활관명</th>
					<th>개관년도</th>
					<th>건물규모</th>
					<th>성별</th>
					<th>호실수</th>
					<th>입사정원</th>
					<th>입사대상자</th>
				  </tr>
				  <tr>
					<td rowspan="7" class="fwb">교내<br>생활관</td>
					<td>제2학생생활관</td>
					<td>1995년</td>
					<td>지하 1층<br>
					지상10층</td>
					<td>남</td>
					<td>232</td>
					<td>464</td>
					<td>학부생<br>
					</td>
				  </tr>
				  <tr>
					<td>한양테크노숙사</td>
					<td>2004년</td>
					<td>지하 1층<br>
					지상 7층</td>
					<td>남</td>
					<td>100</td>
					<td>217</td>
					<td>일반대학원(이공계)<br>
					    일반대학원(비이공계)<br>
						외국인학생 </td>
				  </tr>
				  <tr>
					<td>개나리관</td>
					<td>2005년</td>
					<td>지하 1층<br>
					지상 7층</td>
					<td>여</td>
					<td> 88</td>
					<td>170</td>
					<td>학부생<br>
					일반대학원(비이공계)</td>
				  </tr>
				  <tr>
					<td>한누리관</td>
					<td>2005년</td>
					<td>지하 1층<br>
					지상 7층</td>
					<td>여</td>
					<td>71</td>
					<td>139</td>
					<td>일반대학원(이공계)<br>
						외국인학생 </td>
				  </tr>
				  <tr>
					<td>제1학생생활관</td>
					<td>1985년</td>
					<td>지하 2층<br>
					지상 5층</td>
					<td>남/여</td>
					<td> 180</td>
					<td>702</td>
					<td>외국인학생 <br>
					고시반<br>
					로스쿨</td>
				  </tr>
				  <tr>
					<td>제3학생생활관</td>
					<td>2000년</td>
					<td>지하 1층<br>
					지상 5층</td>
					<td>남/여</td>
					<td> 74</td>
					<td>150</td>
					<td>고시반<br>
			     	로스쿨</td>
				  </tr>
				  <tr>
					<td colspan="4" class="clr">소계</td>
					<td class="clr">745</td>
					<td class="clr">1,842</td>
					<td class="clr">&nbsp;</td>
				  </tr>
				  <tr>
					<td rowspan="7" class="fwb">외부<br>
					임대기숙사</td>
					<td>효성빌</td>
					<td>2012년</td>
					<td>지하 1층<br>
					지상 6층</td>
					<td>남</td>
					<td> 21</td>
					<td>39</td>
					<td>외국인학생 </td>
				  </tr>
				  <tr>
					<td>스마트빌</td>
					<td>2012년</td>
					<td>지하 1층<br>
					지상 5층</td>
					<td>남</td>
					<td>28</td>
					<td>46</td>
					<td>외국인학생 </td>
				  </tr>
				  <tr>
					<td>마장빌</td>
					<td>2012년</td>
					<td>지하 1층<br>
					지상 9층</td>
					<td>남</td>
					<td>40</td>
					<td>75</td>
					<td>외국인학생 </td>
				  </tr>
				  <tr>
					<td>이튼하우스</td>
					<td>2011년</td>
					<td>지하 1층<br>
					지상 5층</td>
					<td>여</td>
					<td>26</td>
					<td>40</td>
					<td>외국인학생 </td>
				  </tr>
				  <tr>
					<td>로즈빌</td>
					<td>2012년</td>
					<td>지하 1층<br>
					지상 5층</td>
					<td>여</td>
					<td>26</td>
					<td>52</td>
					<td>외국인학생 </td>
				  </tr>
				  <tr>
					<td>비전빌</td>
					<td>2014년</td>
					<td>지하 3층<br>
					지상 9층</td>
					<td>여</td>
					<td>42</td>
					<td> 84</td>
					<td>외국인학생 </td>
				  </tr>
				  <tr>
					<td colspan="4" class="clr">소계</td>
					<td class="clr">183</td>
					<td class="clr">336</td>
					<td class="clr">&nbsp;</td>
				  </tr>
				  <tr class="clrtr">
					<td colspan="5"  class="clr2">합계</td>
					<td class="clr2">928</td>
					<td class="clr2">2,178</td>
					<td class="clr2">&nbsp;</td>
				  </tr>
				</table>
				<br/><br/>
				<h3>2. 교내 생활관</h3>
				<p class="fb">가. 호실타입별 호실수 및 인원</p>
				<table class="table-cen">
				  <tr>
					<th rowspan="2" class="blueth">생활관명</th>
					<th rowspan="2" class="blueth">성별</th>
					<th colspan="2" class="blueth">1인실</th>
					<th colspan="2" class="blueth">2인실</th>
					<th colspan="2" class="blueth">3인실</th>
					<th colspan="2" class="blueth">4인실</th>
					<th colspan="2" class="blueth">계</th>
				  </tr>
				  <tr>
					<th class="blueth">호실수</th>
					<th class="blueth">인원</th>
					<th class="blueth">호실수</th>
					<th class="blueth">인원</th>
					<th class="blueth">호실수</th>
					<th class="blueth">인원</th>
					<th class="blueth">호실수</th>
					<th class="blueth">인원</th>
					<th class="blueth">호실수</th>
					<th class="blueth">인원</th>
				  </tr>
				  <tr>
					<td class="clr">제2학생생활관</td>
					<td>남</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>232</td>
					<td>464</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>232</td>
					<td>464</td>
				  </tr>
				  <tr>
					<td class="clr">한양테크노숙사</td>
					<td>남</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>85</td>
					<td>170</td>
					<td>13</td>
					<td>39</td>
					<td>2</td>
					<td>8</td>
					<td>100</td>
					<td>217</td>
				  </tr>
				  <tr>
					<td class="clr">개나리관</td>
					<td>여</td>
					<td>6</td>
					<td>6</td>
					<td>82</td>
					<td>164</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>88</td>
					<td>170</td>
				  </tr>
				  <tr>
					<td class="clr">한누리관</td>
					<td>여</td>
					<td>3</td>
					<td>3</td>
					<td>68</td>
					<td>136</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>71</td>
					<td>139</td>
				  </tr>
				  <tr>
					<td class="clr">제1학생생활관</td>
					<td>남/여</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>18</td>
					<td>54</td>
					<td>162</td>
					<td>648</td>
					<td>180</td>
					<td>702</td>
				  </tr>
				  <tr>
					<td class="clr">제3학생생활관</td>
					<td>남/여</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>72</td>
					<td>144</td>
					<td>2</td>
					<td>6</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>74</td>
					<td>150</td>
				  </tr>
				  <tr>
					<td colspan="2" class="clr2">계</td>
					<td class="clr2">9</td>
					<td class="clr2">9</td>
					<td class="clr2">539</td>
					<td class="clr2">1,078</td>
					<td class="clr2">33</td>
					<td class="clr2">99</td>
					<td class="clr2">164</td>
					<td class="clr2">656</td>
					<td class="clr2">745</td>
					<td class="clr2">1,842<br></td>
				  </tr>
				</table>
				<br/><br/>
				<p class="fb">나. 모집단위별 입사정원</p>
				<table class="table-cen">
				  <tr>
					<th rowspan="2" class="blueth">생활관명</th>
					<th rowspan="2" class="blueth">성별</th>
					<th colspan="3" class="blueth">입사정원</th>
					<th colspan="2" class="blueth">모집단위 및 인원</th>
					<th rowspan="2" class="blueth">배정호실타입</th>
				  </tr>
				  <tr>
					<th class="blueth">조교</th>
					<th class="blueth">선발</th>
					<th class="blueth">계</th>
					<th class="blueth">모집단위</th>
					<th class="blueth">인원</th>
				  </tr>
				  <tr>
					<td rowspan="1"  class="clr">제2학생생활관</td>
					<td rowspan="1" >남</td>
					<td rowspan="1">4</td>
					<td rowspan="1">460</td>
					<td rowspan="1">464</td>
					<td>학부생</td>
					<td>440</td>
					<td>2인실</td>
				  </tr>
				 <!-- <tr>
					<td>일반대학원(비이공계)</td>
					<td>19</td>
					<td>2인실</td>
				  </tr>
				  <tr>
					<td>도시대학원</td>
					<td>1</td>
					<td>2인실</td>
				  </tr> --> 
				  <tr>
					<td rowspan="3" class="clr">한양테크노숙사</td>
					<td rowspan="3">남</td>
					<td rowspan="3">3</td>
					<td rowspan="3">214</td>
					<td rowspan="3">217</td>
					<td>일반대학원(이공계)</td>
					<td>122</td>
					<td>2인실</td>
				  </tr>
				  <tr>
					<td>일반대학원(비이공계)</td>
					<td>2</td>
					<td>2인실</td>
				  </tr>
				  <tr>
					<td>외국인학생</td>
					<td>90</td>
					<td>2인실, 3인실, 4인실</td>
				  </tr>
				  <tr>
					<td rowspan="2" class="clr"><p>개나리관</p></td>
					<td rowspan="2">여</td>
					<td rowspan="2">2</td>
					<td rowspan="2">168</td>
					<td rowspan="2">170</td>
					<td>학부생</td>
					<td>142</td>
					<td>2인실</td>
				  </tr>
				  <tr>
					<td>일반대학원(비이공계)</td>
					<td>19</td>
					<td>2인실</td>
				  </tr>
				  <!-- <tr>
					<td>도시대학원</td>
					<td>1</td>
					<td>2인실</td>
				  </tr>
				  <tr>
					<td>외국인학생</td>
					<td>6</td>
					<td>1인실</td>
				  </tr> -->
				  <tr>
					<td rowspan="2" class="clr">한누리관</td>
					<td rowspan="2">여</td>
					<td rowspan="2">2</td>
					<td rowspan="2">137</td>
					<td rowspan="2">139</td>
					<td>일반대학원(이공계)</td>
					<td>20</td>
					<td>2인실</td>
				  </tr>
				  <!-- <tr>
					<td>의생명공학전문대학원</td>
					<td>2</td>
					<td>2인실</td>
				  </tr> -->
				  <tr>
					<td>외국인학생</td>
					<td>115</td>
					<td>1인실, 2인실</td>
				  </tr>
				  <tr>
					<td rowspan="2" class="clr"> 제1학생생활관</td>
					<td rowspan="2">남/여</td>
					<td rowspan="2">10</td>
					<td rowspan="2">692</td>
					<td rowspan="2">702</td>
					<td><p>외국인학생</p></td>
					<td><p><SPAN lang="EN-US">86</SPAN></p></td>
					<td><p><SPAN lang="EN-US">3</SPAN>인실<SPAN lang="EN-US">(</SPAN>여<SPAN lang="EN-US">), 4</SPAN>인실<SPAN lang="EN-US">(</SPAN>남<SPAN lang="EN-US">)</SPAN></p></td>
				  </tr>
				  <tr>
					<td><p>고시반</p></td>
					<td><p><SPAN lang="EN-US">606</SPAN></p></td>
					<td><p><SPAN lang="EN-US">4</SPAN>인실</p></td>
				  </tr>
				  <tr>
					<td class="clr"><p>제<SPAN lang="EN-US">3</SPAN>학생생활관</p></td>
					<td><p>남<SPAN lang="EN-US">/</SPAN>여</p></td>
					<td><p><SPAN lang="EN-US">5</SPAN></p></td>
					<td><p><SPAN lang="EN-US">145</SPAN></p></td>
					<td><p><SPAN lang="EN-US">150</SPAN></p></td>
					<td><p>고시반</p></td>
					<td><p><SPAN lang="EN-US">145</SPAN></p></td>
					<td>3인실, 4인실</td>
				  </tr>
				  <tr>
					<td class="clr2"><p>계</p></td>
					<td class="clr2"><p><SPAN lang="EN-US">-</SPAN></p></td>
					<td class="clr2"><p><SPAN lang="EN-US">26</SPAN></p></td>
					<td class="clr2"><p><SPAN lang="EN-US">1,816</SPAN></p></td>
					<td class="clr2"><p><SPAN lang="EN-US">1,842</SPAN></p></td>
					<td class="clr2">-</td>
					<td class="clr2"><p><SPAN lang="EN-US">1,816</SPAN></p></td>
					<td class="clr2">&nbsp;</td>
				  </tr>
				</table>
				<br/><br/>
				<p class="fb">다. 호실 개인 비품 및 시설<p class="fb">
				<table class="table-cen">
				  <tr>
					<th rowspan="2"  class="blueth">생활관명</th>
					<th rowspan="2"  class="blueth">성별</th>
					<th rowspan="2"  class="blueth">호실타입</th>
					<th colspan="2"  class="blueth">규모</th>
					<th rowspan="2"  class="blueth">호실 개인 비품 및 시설</th>
					<th rowspan="2"  class="blueth">공용시설</th>
					<th rowspan="2"  class="blueth">편의시설</th>
				  </tr>
				  <tr>
					<th  class="blueth">면적(㎡)</th>
					<th  class="blueth"><p>평</p></th>
				  </tr>
				  <tr>
					<th class="clr">제2학생생활관</th>
					<td>남</td>
					<td>2인 1실</td>
					<td>14.37<br>
					  ~<br>
					16.83</td>
					<td>4.35<br>
					  ~<br>
					5.1</td>
					<td class="alf">싱글침대 <br>
					  빨래건조대<br>
					  옷장 <br>
					  책꽂이+책상<br>
					  의자<br>
					  랜포트<br>
					에어컨(창문형)</td>
					<td class="alf">화장실 및 샤워실<br>
					  세면장<br>
					  세탁실<br>
					  휴게실<br>
					다리미실 <br></td>
					<td class="alf">도서실 <br>
					  체력단련실<br>
					  식당 PC Zone <br>
					  식당(300석)<br>
					  글로벌 빌리지<br>
					  매점<br>
					커피전문점</td>
				  </tr>
				  <tr>
					<th class="clr">한양테크노숙사</th>
					<td>남</td>
					<td>2인 1실</td>
					<td>15.83<br>
					  ~<br>
					17.46</td>
					<td>4.79<br>
					  ~<br>
					5.29</td>
					<td class="alf">싱글침대<br>
					  상단수납장<br>
					  옷장<br>
					  수납장(신발장)<br>
					  책꽂이+책상<br>
					  의자<br>
					  랜포트<br>
					  에어컨(창문형)<br>
					화장실 및 샤워실<br></td>
					<td class="alf">&nbsp;</td>
					<td class="alf">&nbsp;</td>
				  </tr>
				  <tr>
					<th class="clr">개나리관</th>
					<td>여</td>
					<td>2인 1실</td>
					<td>19.71<br>
					  ~<br>
					20.39</td>
					<td>5.97<br>
					  ~<br>
					6.17</td>
					<td class="alf">싱글침대<br>
					  상단수납장<br>
					  옷장<br>
					  수납장(신발장)<br>
					  책꽂이+책상<br>
					  의자<br>
					  랜포트<br>
					  에어컨(창문형)<br>
					화장실 및 샤워실<br></td>
					<td class="alf">세탁실<br>
					  휴게실<br>
					다리미실 </td>
					<td class="alf">&nbsp;</td>
				  </tr>
				  <tr>
					<th class="clr">한누리관</th>
					<td>여</td>
					<td>2인 1실</td>
					<td>19.38<br>
					  ~<br>
					20.12</td>
					<td>5.87<br>
					  ~<br>
					6.09<br></td>
					<td class="alf">싱글침대<br>
					  상단수납장<br>
					  옷장<br>
					  수납장(신발장)<br>
					  책꽂이+책상<br>
					  의자<br>
					  랜포트<br>
					  에어컨(창문형)<br>
					화장실 및 샤워실<br></td>
					<td class="alf">세탁실<br>
					  휴게실<br>
					다리미실 </td>
					<td class="alf">&nbsp;</td>
				  </tr>
				</table>
				<br/><br/><br/>

				<!-- 탭메뉴 -->
				<ul class="roomtype cearfix" id="tab-subBox">
					<li><a href="#subBox1" class="on">제2학생생활관</a></li>
					<li><a href="#subBox2">한양테크노숙사</a></li>
					<li><a href="#subBox3">개나리관</a></li>
					<li><a href="#subBox4">한누리관</a></li>
					<li><a href="#subBox5">제1학생생활관</a></li>
				</ul>
				<div id="subBox1">
					<h3>제2학생생활관</h3>
					<table class="table-room">
					  <tbody>
						<tr>
						  <th rowspan="2" > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>층</b></p>
						  </th>
						  <th rowspan="2"  ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>사용용도</b></p></th>
						  <th colspan="3"  ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실</b></p></th>
						  <th rowspan="2"  ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>공용시설</b></p></th>
						</tr>
						<tr>
						  <th  ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실타입</b></p></th>
						  <th  ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실수</b></p></th>
						  <th  ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실명</b></p></th>
						</tr>
						<tr>
						  <th rowspan="2" ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>10F</b></p></th>
						  <td rowspan="2" ><p style="text-indent:0; line-height:150%; margin:2;" align="center">외국인교원</p>
							<p style="text-indent:0; line-height:150%; margin:2;" align="center">숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">가족실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">14</p></td>
						  <td rowspan="2" ><p style="text-indent:0; line-height:150%; margin:2;">1001호~1017호 </p></td>
						  <td rowspan="2" class="alf" ><p style="text-indent:0; line-height:150%; margin:2;">■ 세탁실</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 휴게실</p></td>
						</tr>
						<tr>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">1인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">3</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>9F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">29</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">901호~929호 </p></td>
						  <td rowspan="8" class="alf" ><p style="text-indent:0; line-height:150%; margin:2;">■ 세탁실/세면장/샤워실</p>
							<table cellspacing="0" >
							  <tbody>
								<tr>
								  <td><p style="text-indent:0; line-height:150%; margin:2; background-color:#eee;" align="center">세탁기</p></td>
								  <td><p style="text-indent:0; line-height:150%; margin:2;" align="center">3대/층</p></td>
								</tr>
								<tr>
								  <td><p style="text-indent:0; line-height:150%; margin:2; background-color:#eee;" align="center">건조기</p></td>
								  <td><p style="text-indent:0; line-height:150%; margin:2;" align="center">1대/층</p></td>
								</tr>
							  </tbody>
							</table>
							<p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 남자화장실</p>
							<p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 휴게실 : 의자, TV, T탁자</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>8F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">29</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">801호~829호 </p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>7F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">29</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">701호~729호 </p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>6F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">29</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">601호~629호 </p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>5F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">29</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">501호~529호</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>4F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">29</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">401호~429호 </p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>3F </b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">29</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">301호~329호 </p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>2F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">29</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">201호~229호 </p></td>
						</tr>
						<tr>
						  <th rowspan="2" ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>1F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">행정시설</p></td>
						  <td colspan="4"  class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 학생생활관 관장실</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 학생생활관 행정팀</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■  수위실</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 영양사실</p></td>
						</tr>
						<tr>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">편의시설</p></td>
						  <td colspan="4"  class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 식당 : 300석 (4인용 테이블 75개, 1인용 의자 300개)</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 매점</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 커피전문점</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 식당 PC Zone : 컴퓨터 3대, 프린터기 3대, 복사기 1대</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 공용냉장고 : 3대</p></td>
						</tr>
						<tr>
						  <th rowspan="2"  ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>B1F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">행정시설</p></td>
						  <td colspan="4"  class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 전기실</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 보일러실(기계실)</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 미화원대기실 </p></td>
						</tr>
						<tr>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">편의시설</p></td>
						  <td colspan="4"  class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 도서실</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 체력단련실 : 러닝머신, 벤치프레스 외 </p></td>
						</tr>
					  </tbody>
					</table>
					<br/><br/>
				</div>
				<div id="subBox2" style="display:none">
					<h3 class="line">한양테크노숙사</h3>
					<table class="table-room">
					  <tbody>
						<tr>
						  <th rowspan="2" > <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>층</b></p>
						  </th>
						  <th rowspan="2" > <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>사용용도</b></p>
						  </th>
						  <th colspan="3" > <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>호실</b></p>
						  </th>
						  <th rowspan="2" > <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>공용시설</b></p>
						  </th>
						</tr>
						<tr>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>호실타입</b></p>
						  </th>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>호실수</b></p>
						  </th>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>호실명</b></p>
						  </th>
						</tr>
						<tr>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>7F</b></p>
						  </th>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">학생숙소 </p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">2인실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">18</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-701호～T-718호</p></td>
						  <td rowspan="9"><p style="text-indent:0; line-height:150%; margin:2;"><b>제2학생생활관 </b></p>
							<p style="text-indent:0; line-height:150%; margin:2;"><b>공용시설 공동 사용</b></p></td>
						</tr>
						<tr>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>6F</b></p>
						  </th>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">학생숙소 </p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">2인실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">18</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-601호～T-618호 </p></td>
						</tr>
						<tr>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>5F</b></p>
						  </th>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">학생숙소 </p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">2인실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">18</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-501호～T-518호</p></td>
						</tr>
						<tr>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>4F</b></p>
						  </th>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">학생숙소 </p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">2인실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">18</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-401호～T-418호</p></td>
						</tr>
						<tr>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>3F </b></p>
						  </th>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">학생숙소 </p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">2인실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">18</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-301호～T-318호 </p></td>
						</tr>
						<tr>
						  <th rowspan="2"> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>2F</b></p>
						  </th>
						  <td rowspan="2"><p align="center" style="text-indent:0; line-height:150%; margin:2;">학생숙소</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">3인1실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">7</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-201호～T-207호</p></td>
						</tr>
						<tr>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">4인1실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">1</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-208호</p></td>
						</tr>
						<tr>
						  <th rowspan="2"> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>1F</b></p>
						  </th>
						  <td rowspan="2"><p align="center" style="text-indent:0; line-height:150%; margin:2;">학생숙소</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">3인1실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">6</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-102호～T-107호</p></td>
						</tr>
						<tr>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">4인1실</p></td>
						  <td><p align="center" style="text-indent:0; line-height:150%; margin:2;">1</p></td>
						  <td><p style="text-indent:0; line-height:150%; margin:2;">T-108호</p></td>
						</tr>
						<tr>
						  <th> <p align="center" style="text-indent:0; line-height:150%; margin:2;"><b>B1F</b></p>
						  </th>
						  <td ><p align="center" style="text-indent:0; line-height:150%; margin:2;">행정시설</p></td>
						  <td colspan="4" class="alf" ><p style="text-indent:0; line-height:150%; margin:2;">■ 보일러실(기계실) </p></td>
						</tr>
					  </tbody>
					</table>
					<br/><br/>
				</div>
				<div id="subBox3" style="display:none">
					<h3 class="line">개나리관</h3>
					<table class="table-room">
					  <tbody>
						<tr>
						  <th rowspan="2" ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>층</b></p></th>
						  <th rowspan="2" ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>사용용도</b></p></th>
						  <th colspan="3" ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실타입</b></p></th>
						  <th rowspan="2" ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>공용/행정시설</b></p></th>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실타입</b></p></th>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실수</b></p></th>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실명</b></p></th>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>7F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">12</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">G-701호～G-712호 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;"></p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>6F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">12</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">G-601호～G-612호 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>5F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">12</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">G-501호～G-512호</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>4F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">12</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">G-401호～G-412호 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>3F </b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">11</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">G-301호～G-311호</p></td>
						  <td class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 휴게실 : 소파, TV</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>2F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">12</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">G-201호～G-212호</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>1F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">11</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">G-101호～G-111호</p></td>
						  <td class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 휴게실 : 소파, TV, 냉장고</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 행정시설 : 수위실</p></td>
						</tr>
						<tr>
						  <th ><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>B1F</b></p></th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">1인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">6</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">G-B101호～G-B106호</p></td>
						  <td class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 세탁실</p>
							<table style="text-indent:0; line-height:150%; margin:2; border-collapse:collapse;" cellspacing="0" width="144">
							  <tbody>
								<tr>
								  <td  width="71" style="background-color:#eee;"><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>세탁기</b></p></td>
								  <td  width="66"  style="background-color:#eee;"><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>건조기</b></p></td>
								</tr>
								<tr>
								  <td  width="71"><p style="text-indent:0; line-height:150%; margin:2;" align="center">8대</p></td>
								  <td  width="66"><p style="text-indent:0; line-height:150%; margin:2;" align="center">4대</p></td>
								</tr>
							  </tbody>
							</table></td>
						</tr>
					  </tbody>
					</table>
					<br/><br/>
				</div>
				<div id="subBox4" style="display:none">
					<h3 class="line">한누리관</h3>
					<table class="table-room">
					  <tbody>
						<tr>
						  <th rowspan="2" > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>층</b></p>
						  </th>
						  <th rowspan="2" > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>사용용도</b></p>
						  </th>
						  <th colspan="3" > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실</b></p>
						  </th>
						  <th rowspan="2" > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>공용/행정시설</b></p>
						  </th>
						</tr>
						<tr>
						  <th > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실타입</b></p>
						  </th>
						  <th> <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실수</b></p>
						  </th>
						  <th> <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>호실명</b></p>
						  </th>
						</tr>
						<tr>
						  <th > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>7F</b></p>
						  </th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">10</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">I-701호～I-710호</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;"></p></td>
						</tr>
						<tr>
						  <th > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>6F</b></p>
						  </th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">10</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">I-601호～I-610호 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
						<tr>
						  <th > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>5F</b></p>
						  </th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">10</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">I-501호～I-510호</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
						<tr>
						  <th > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>4F</b></p>
						  </th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">10</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">I-401호～I-410호</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
						<tr>
						  <th > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>3F </b></p>
						  </th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">9</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">I-301호～I-309호 </p></td>
						  <td class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 휴게실 : 소파, TV</p></td>
						</tr>
						<tr>
						  <th > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>2F</b></p>
						  </th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소 </p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">10</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">I-201호～I-210호</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
						<tr>
						  <th > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>1F</b></p>
						  </th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">2인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">9</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">I-101호～I-109호</p></td>
						  <td  class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 휴게실 : 소파, TV, 냉장고</p>
							<p style="text-indent:0; line-height:150%; margin:2;">■ 행정시설 : 수위실</p></td>
						</tr>
						<tr>
						  <th rowspan="2" > <p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>B1F</b></p>
						  </th>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">학생숙소</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">1인실</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;" align="center">3</p></td>
						  <td ><p style="text-indent:0; line-height:150%; margin:2;">I-B101호～I-B103호</p></td>
						  <td rowspan="2"  class="alf"><p style="text-indent:0; line-height:150%; margin:2;">■ 세탁실</p>
							<table style="text-indent:0; line-height:150%; margin:2; border-collapse:collapse;" cellspacing="0" width="144">
							  <tbody>
								<tr>
								  <td  width="71" style="background-color:#eee;"><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>세탁기</b></p></td>
								  <td  width="66"  style="background-color:#eee;"><p style="text-indent:0; line-height:150%; margin:2;" align="center"><b>건조기</b></p></td>
								</tr>
								<tr>
								  <td  width="71"><p style="text-indent:0; line-height:150%; margin:2;" align="center">8대</p></td>
								  <td  width="66"><p style="text-indent:0; line-height:150%; margin:2;" align="center">4대</p></td>
								</tr>
							  </tbody>
							</table></td>
						</tr>
						<tr>
						  <td ><span style="text-indent:0; line-height:150%; margin:2;">연구원숙소</span></td>
						  <td >1인실</td>
						  <td >3</td>
						  <td >I-B104호～I-B106호</td>
						</tr>
					  </tbody>
					</table>
					<br/><br/>
				</div>
				<div id="subBox5" style="display:none">
					<h3 class="line">제1학생생활관</h3>
					<table class="table-room">
					  <tbody>
						<tr>
						  <th rowspan="2"  ><p align="center" style="line-height:150%; margin:2;"><b>층</b></p></th>
						  <th rowspan="2"  ><p align="center" style="line-height:150%; margin:2;"><b>사용용도</b></p></th>
						  <th colspan="3"  ><p align="center" style="line-height:150%; margin:2;"><b>호실</b></p></th>
						  <th rowspan="2" s ><p align="center" style="line-height:150%; margin:2;"><b>비고</b></p></th>
						</tr>
						<tr>
						  <th  ><p align="center" style="line-height:150%; margin:2;"><b>호실타입</b></p></th>
						  <th  ><p align="center" style="line-height:150%; margin:2;"><b>호실수</b></p></th>
						  <th  ><p align="center" style="line-height:150%; margin:2;"><b>호실명</b></p></th>
						</tr>
						<tr>
						  <th  ><p style="line-height:150%; margin:2;" align="center"><b>3F</b></p></th>
						  <td ><p align="center" style="line-height:150%; margin:2;">학생 숙소 </p></td>
						  <td ><p align="center" style="line-height:150%; margin:2;">3인실</p></td>
						  <td ><p align="center" style="line-height:150%; margin:2;">18</p></td>
						  <td ><p style="line-height:150%; margin:2;">311호～315호</p>
							<p style="line-height:150%; margin:2;">317호～319호</p>
							<p style="line-height:150%; margin:2;">322호～331호</p></td>
						  <td ><p style="line-height:150%; margin:2;">외국인학생(여)</p></td>
						</tr>
						<tr>
						  <th rowspan="4"  ><p style="line-height:150%; margin:2;" align="center"><b>1F</b></p></th>
						  <td ><p align="center" style="line-height:150%; margin:2;">학생 숙소</p></td>
						  <td ><p align="center" style="line-height:150%; margin:2;">4인실</p></td>
						  <td ><p align="center" style="line-height:150%; margin:2;">8</p></td>
						  <td ><p style="line-height:150%; margin:2;">112호～114호 </p>
							<p style="line-height:150%; margin:2;">117호～121호 </p></td>
						  <td ><p style="line-height:150%; margin:2;">외국인학생 (남)</p></td>
						</tr>
						<tr>
						  <td rowspan="2" ><p align="center" style="line-height:150%; margin:2;">외국인교원 숙소</p></td>
						  <td ><p align="center" style="line-height:150%; margin:2;">가족실</p></td>
						  <td ><p align="center" style="line-height:150%; margin:2;">2</p></td>
						  <td ><p style="line-height:150%; margin:2;">108호, 125호 </p></td>
						  <td rowspan="2" ><p style="line-height:150%; margin:2;">외국인교수가족실 및</p>
							<p style="line-height:150%; margin:2;">외국인교수침실</p></td>
						</tr>
						<tr>
						  <td ><p align="center" style="line-height:150%; margin:2;">1인실</p></td>
						  <td ><p align="center" style="line-height:150%; margin:2;">6</p></td>
						  <td ><p style="line-height:150%; margin:2;">109호～111호</p>
							<p style="line-height:150%; margin:2;">122호～124호</p></td>
						</tr>
						<tr>
						  <td ><p align="center" style="line-height:150%; margin:2;">행정시설</p></td>
						  <td colspan="3"  class="alf"><p style="line-height:150%; margin:2;">■ 수위실 </p></td>
						  <td ><p style="line-height:150%; margin:2;">&nbsp;</p></td>
						</tr>
					  </tbody>
					</table>
					<br/><br/>
				</div>
			</div>

			<div id="guide3" class="guidebox hidden">
				<div class="internalHouse">
					<div class="title">서울캠퍼스 게스트하우스 사용 안내 (Hanyang International House Ⅲ)</div>
					<ul class="internallst">
						<li><p class="tit"><span class="num">1</span>사용용도</p>
							<div class="box">학술교류를 목적으로 한양대학교를 방문하는 외국인 교원 및 내국인 귀빈용  
							<span class="noti">※ 외부기관, 학생 사용 불가</span> </div>							
						</li>
						<li><p class="tit"><span class="num">2</span>예약신청 방법 : 초청자 소속 행정부서(행정팀)담당자가 교내정보프로그램에 접속하여 게스트하우스예약신청</p>
							<div class="box">
								<ul>
									<li>① 교내정보 → 부속행정 → 신생활관 → 게스트하우스 → <span class="noti">[게스트하우스예약신청]</span> → <span class="noti2">예약신청</span></li>
                                    <li><span class="pointclr2"> ※ 게스트하우스 예약신청은 그룹웨어 공문을 대체하는 것이므로 초청자 소속 행정부서(행정팀) 담당자만 신청 가능합니다.</span> </li>
									<li>② 캠퍼스 및 사용희망 기간 설정 후 조회하여 사용가능 호실 및 사용료 확인</li>
									<li><span class="pointclr2"> ※ 사용희망 기간 설정 후 [조회]버튼을 눌렀을 때 화면에 보이는 호실만 사용가능</span> </li>
									<li>③ 사용할 호실 선택, 하단의 초청자정보, 게스트정보 입력, 공지사항 확인 → 예약신청(예약신청 완료)</li>
									<li><span class="pointclr2">※ 예약신청은 사용희망 기간별로 예약신청을 해야 함</span><p>예) 사용하고자 하는 2개의 호실 사용기간이 상이한 경우 각각 예약신청을 해야 함</p></li>
									<li><span class="pointclr2">※ 예약신청은 ‘가예약’의 개념이며, 예약확정 상태로 승인을 받아야 게스트하우스 사용가능</span></li>
								</ul>
							</div>							
						</li>
						<li><p class="tit"><span class="num">3</span>예약확정  : 학생생활관 행정팀에서 검토 후 <span class="noti">[예약확정]을 한 경우에 한하여 예약완료</span><br/><span class="subtit">(게스트하우스예약신청 화면에서 맨오른쪽 [상태]셀에서 확인가능)</span></p>	
						
						     <div class="box">
								<ul>
									<li>① 게스트하우스 예약신청 일주일 이내 초청자 정보, 게스트정보 입력내용이 불충분할 경우, [예)<span class="noti"> 공란으로 예약, 또는 객실타입과 사용인원 불일치</span>]<br/> 또는 게스트하우스 운영 목적에 부합하지 않는 게스트의 경우 [예)<span class="noti">외부기관이나 학생들 사용</span>] <span class="noti">예약확정 불가</span>
                                    <li>② 예약신청 일주일 이내 예약상태가 예약확정으로 변경되지 않을 경우 <span class="noti">자동으로 예약 취소</span>. </p>
									단, 예외적으로 일정이 확정된 단체 예약의 경우 학생생활관 행정팀(1471)과 상의 후 게스트 정보 입력 보류가능</li>
									<!-- <li><span class="pointclr2"> ※ 사용희망 기간 설정 후 [조회]버튼을 눌렀을 때 화면에 보이는 호실만 사용가능</span> </li> -->
									<li>③ 학생생활관 행정팀 예약확정 이후에만 호실 사용 가능하므로, 공휴일이나 주말 사용시에는 <span class="noti">최소 2주 전에는 예약완료 확인요망</span></li>

								 
								</ul>
							</div>	
                        </li>
						<li><p class="tit"><span class="num">4</span>예약 및 납부 관련 공지사항</p>
							<div class="box">
								<ul class="linebox">
									<li><span class="noti">① 사용료 지불 : 청구서에 기재된 학교통장 계좌로 계좌입금 (카드결제 불가능)</span>
										<p>※ 사용료를 게스트가 지불하는 경우 게스트에게 안내하여 주시기 바랍니다. </p>
										<p>※ 교비 통장이기 때문에 해외송금시 송금수수료로 인한 과오납 발생으로 부서간 번거로울 수 있으니 예약 담당자께서는 부서계좌에서 송금해주시거나, 게스트 계좌이체시 한국에서 한화로 이체 할 수 있도록 도움주시기를 권장합니다. </p>
									</li>
									<br/>
									<li>② 청구서 및 영수증 출력
										<p>- 청구서 : 예약확정 이후 출력 가능<br/>- 영수증 : 납부완료 후 출력 가능 </p>
									</li>
									<br/>
									<li>③ 예약 취소 : 실사용자 이용 제한 피해를 방지하고자 취소 규정 제정 </li>

										<table class="table-cen">
										<colgroup>
										  <col>
										  <col>
										</colgroup>
										<thead>
										  <tr>
										  <th>취소 날짜 (영업일은 학생생활관 행정팀 근무일 기준) </th>
										  <th>취소 규정</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
										  <td>예약신청일 ~ 숙박 예정일 2 영업일 전</td>
										  <td style="text-align:left;">
											  <ol>
												<li>① 예약확정상태에서는 신청자 변경 불가</li>
												<li>② 학생생활관 행정팀으로 숙박 예정일 2 영업일 전까지 개별 연락<br>
												       [예] 5/23일 월요일 예약 건 취소를 위해서는 2영업일 전인 5/19일 목요일까지 취소연락</li>
											  </ol>
										  </td>
										  </tr>
										  <tr>
										  <td>숙박 예정일 1 영업일 전 취소</td>
										  <td style="text-align:left;">
										      <ol>
												<li>① 학생생활관 행정팀으로 그룹웨어 취소요청공문 발송해야 취소가능</li>
												<li>② 취소위약금 호실당 5만원 부과 <br>
												       &nbsp;&nbsp;&nbsp;&nbsp;가. 학생생활관 행정팀에서 소속 신청부서에 취소위약금 납부 안내 공문 발송 예정<br>
													   &nbsp;&nbsp;&nbsp;&nbsp;나. 취소위약금 미납시 예약 부서 전체 게스트하우스 6개월 사용제한 </li>
											  </ol>
										  </td>
										  </tr>
										</tbody>
										 </table>
                                    <br/>
									<li>④ 숙박일수 변경 (학생생활관 행정팀으로 숙박예정일 2 영업일 전까지 개별연락)
										<p>- 숙박일수 축소 : 가능<br/>- 숙박일수 연장 : 동일호실이 예약 가능한 경우에 한하여 연장 가능</p>
									</li>
								</ul>
							</div>							
						</li>
						<li><p class="tit"><span class="num">5</span>객실 사용료 <span class="noti">(카드결제 불가, 반드시 학교통장으로 입금)</span> </p>
							<div class="box">
								<table class="table-cen">
								  <tr>
									<th rowspan="2">객실유형</th>
									<th rowspan="2">객실수</th>
									<th rowspan="2">정원</th>
									<th rowspan="2">이용요금(1박)</th>
									<th colspan="2">장기숙박 할인</th>
								  </tr>
								  <tr>
									<th>20박이상</th>
									<th>30박이상</th>
								  </tr>
								  <tr>
									<td>2인실 (Twin)</td>
									<td>10실</td>
									<td>2</td>
									<td>60,000원 </td>
									<td rowspan="3"><p><span lang="EN-US" xml:lang="EN-US">20% </span>할인</p></td>
									<td rowspan="3"><p><span lang="EN-US" xml:lang="EN-US">30% </span>할인</p></td>
								  </tr>
								  <tr>
									<td>3인실 (Three Persons)</td>
									<td>4실</td>
									<td>3</td>
									<td>80,000원 </td>
								  </tr>
								  <tr>
									<td>가족실 (Family Room)</td>
									<td>2실</td>
									<td>5</td>
									<td>80,000원 </td>
								  </tr>
								</table>
							</div>							
						</li>
						<li><p class="tit"><span class="num">6</span>입실 및 퇴실</p>
							<div class="box">
								<table class="table-cen">
								  <tr>
									<th>구분</th>
									<th>시간</th>
									<th>방법</th>
								  </tr>
								  <tr>
									<th class="clr">체크인</th>
									<td>10시 ~ 22시</td>
									<td class="alf">① 입실 당일 게스트하우스 1층 현관에서 호출<br />
									  ② 2층 사무실에서 체크인<br />
								(부재 시 출입문에 붙어있는 근무조교 또는 여사님 번호로 전화)</td>
								  </tr>
								  <tr>
									<th class="clr">체크아웃</th>
									<td>11:30 까지</td>
									<td class="alf">① 반드시 퇴실 당일 오전 11:30분 까지 퇴실<br />
									  ② 출입카드는 사무실(또는 엘리베이터 카드 수거함)에 반납 <br />
								※ 분실 시 카드 1장 당 카드구입비 10,000원 변상하여야 함</td>
								  </tr>
								</table>
							</div>							
						</li>
						<li><p class="tit"><span class="num">7</span>객실 구성</p>
							<div class="box">
								<table class="table-cen">
									  <tr>
										<th>객실유형</th>
										<th>객실구성</th>
										<th>비품류</th>
										<th>가전류</th>
										<th>인터넷</th>
									  </tr>
									  <tr>
										<th>2인실 (Twin)</th>
										<td class="alf">① 침실 1 (싱글침대 2개)<br />
										  ② 욕실 1<br />
										  ③ 거실 겸 주방 1<br />
										<td rowspan="3"  class="alf">￭ 책상+의자<br />
										￭ 식탁+의자</td>
										<td rowspan="3"  class="alf">￭ TV<br />
										  ￭ 냉장고<br />
										  ￭ 세탁기<br />
										  ￭ 가스레인지<br />
										  ￭ 전자레인지 <br />
										￭ 에어컨</td>
										<td rowspan="3"  class="alf">￭ LAN선 제공<br />
									(컴퓨터 없음)</td>
									  </tr>
									  <tr>
										<th>3인실 (Three Persons)</th>
										<td class="alf">① 침실 1 (싱글침대 2개)<br />
										  ② 침실 1 (싱글침대 1개)<br />
										  ③ 욕실 1<br />
										  ④ 거실 겸 주방 1 </td>
									  </tr>
									  <tr>
										<th>가족실 (Family Room)</th>
										<td class="alf">① 온돌 1 (침대 X)<br />
										  ② 온돌 1 (침대 X)<br />
										  ③ 욕실 1<br />
										  ④ 거실 겸 주방 1 </td>
									  </tr>
								</table>
								<p class="fb">※ 2층 게스트하우스 office :  Fax / 컴퓨터 / 복사기 비치</p>
								<p class="tc"><img src="/images/guest_house_img1.gif" ></p>
							</div>							
						</li>
						<li><p class="tit"><span class="num">8</span>게스트하우스 위치 : <span class="noti1">서울시 성동구 사근동 198-7번지 한양인터내셔널 하우스 3관</span> </p>
							<div class="tc box"><img src="/images/guest_house_map.gif" ></div>							
						</li>
						<li><p class="tit"><span class="num">9</span>게스트하우스 이용 주의사항</p>
							<div class="tc box">
								<ul class="cnlst linebox">
									<li>1. 이용자는 사전 허가 없이 시설을 임의로 변경할 수 없습니다.</li>
									<li>2. 이용자가 고의 또는 과실로 건물 및 부대시설을 파손하였을 경우에는 게스트하우스 사무실 또는 학생생활관 행정팀에 즉시 통보하고 변상하여야 합니다.</li>								
									<li>3. 이용자는 제3자에게 시설을 대여할 수 없으며, 대여사실이 확인될 경우에는 즉시 퇴사조치 되며 잔여관리비는 일체 반환하지 않습니다.</li>
									<li>4. 게스트하우스 내에서 고성방가, 소란행위 등 기타 타인에게 피해를 줄 경우에는 강제퇴사되며 잔여 관리비는 일체 반환하지 않습니다. </li>
									<li>5. 게스트하우스 내에서 개인교습 및 세미나 실시 등을 할 수 없습니다.</li>
									<li>6. 체크아웃시에는 반드시 출입카드를 사무실(또는 엘리베이터 카드 수거함)에 반납하여야     하며, 분실시 카드 1장 당 카드구입비 10,000원 변상해야 합니다.</li>
									<li>7. 퇴실시간은 11:30을 기준으로 하되, 오후 3시까지 퇴실하지 않는 경우는 해당 객실 사용료의 100%를 부과합니다. </li>
									<li>8. 납부는 계좌이체만 가능하며, 반드시 게스트 또는 초청부서 이름으로 입금자명을 지정해 야 합니다. </li>
									<li>9. 이용자의 귀중품은 본인이 직접 관리하며, 분실 시 생활관에서는 책임지지 않습니다.</li>
									<li>10. 호실청소는 입실 전/ 퇴실 후에만 가능합니다. 장기 투숙과 같은 특별한 경우를 제외하고는 수시로 제공하는 청소 서비스는 없습니다.</li>
								</ul>
							</div>							
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


<script>
	$(function () {
		$("body").on("click", ".guide-tab li a", function (e) {
			e.preventDefault();
			var target = $(this).attr("href");

			$(".guide-tab li").removeClass("active");

			$(".guidebox").hide();
			$(this).parent().addClass("active");
			$(target).show();
		});

		$(".other-site").click(function () {
			$(".link-list").toggle();
		});
		
		// sub tab
		$("#tab-subBox li a").click(function(e) {
			e.preventDefault();
			var _subLk = $(this).attr("href");
			$("#tab-subBox li a").removeClass("on");
			$("#subBox1, #subBox2, #subBox3, #subBox4, #subBox5").hide();
			$(this).addClass("on");
			$(_subLk).show();
		});
	});

	$(window).load(function() {
		var _hash = location.hash;
		if(_hash) {
			$(".guide-tab li").each(function() {
				var _target = $("a", this).attr("href");

				if(_hash == _target) {
					$("a", this).trigger("click");
					return;
				}
			});
		}
	});
</script>