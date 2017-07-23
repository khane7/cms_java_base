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
			<h2>소음,소란 행위 자제 협조안내</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활안내</a></li>
				<li class="active"><a href="#">소음,소란 행위 자제 협조안내</a></li>
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
			<div class="internalHouse">
			  <div class="title">학생생활관 전체공간 소음 및 소란 행위 자제 협조 안내</div>
			  <ul class="internallst">
				<li><p class="tit"><span class="num">1</span>학생생활관은 공동생활을 하는 공간이며, 건물이 노후하여 방음이 잘되지 않으므로 다른 학생들의 휴식과 숙면을 방해하지 않도록 협조하여 주시기 바랍니다.</p>						
				</li>
				<li><p class="tit"><span class="num">2</span>소음과 소란을 일으키는 행위에 대해서 주의 및 경고조치를 받은 후에도, 다른 관생의 불편을 초래하는 행동이 계속 반복되는 경우 벌점기준표에 따라 벌점(3점)을 부과할 수밖에 없습니다. </p>						
				</li>
				<li><p class="tit"><span class="num">3</span>기본적인 공동생활수칙을 준수하여 주시기 바랍니다.</p>
					<div class="box">
						<ul class="linebox">
							<li><span class="pointclr">① 늦은 시간이나 이른 시간에 아래의 행동을 자제하여</span> 다른 학생들의 숙면을 방해하지 않도록하여 주시기 바랍니다. <br/>
								&nbsp;&nbsp;&nbsp;㉮ 학생생활관 호실내 또는 복도에서 큰소리로 이야기를 하거나, 노래를 부르는 행위<br/>
								&nbsp;&nbsp;&nbsp;㉯ 학생생활관 호실내 또는 복도에서 음악을 크게 틀어놓고 듣는 행위<br/>
								&nbsp;&nbsp;&nbsp;㉰ 학생생활관 호실내 또는 복도에서 악기를 연주하는 행위 등<br/>
							</li>
							<li><span class="pointclr">② 휴게실이나 공동샤워실 및 세탁실 근처 호실에 거주하는 학생들의 불편을 최소화하기 위해서</span>      너무 늦은 시간 사용을 자제하여 주시기 바랍니다.
							</li>
							<li><span class="pointclr">③ 날씨가 더워지면 호실 창문을 열어놓는 경우가 많으므로 </span>늦은 시간에 벤치 및 주차장에서        소음을 일으키는 행위를 자제하여 주시기 바랍니다.</li>
						</ul>
					</div>				
				</li>
				<li><p class="tit"><span class="num">4</span>행정팀 근무시간 이후에도 생활지도조교가 행정팀에 상주하니 불편사항 발생 시 행정팀을 
   방문하거나 전화로 연락주시기 바랍니다.</p>
				<div class="box">
					<table class="table-cen">
						  <tbody><tr>
							<th><p>구분</p></th>
							<th><p>근무시간</p></th>
							<th><p>식사시간 </p></th>
							<th><p>연락처</p></th>
							</tr>
						  <tr>
							<th><p>평일</p></th>
							<td>17:30 ～ 새벽 1시</td>
							<td>저녁 18:00～19:00 </td>
							<td rowspan="2">☎ 02-2220-1471<br>☎ 02-2220-1488</td>
							</tr>
						  <tr>
							<th><p>주말 및 공휴일</p></th>
							<td>10:00 ～ 새벽 1시</td>
							<td>점심 12:00～13:00<br>저녁 17:00～18:00 </td>
						  </tr>
						 </tbody>
					</table>
				</div>
				</li>
		  	 </ul>
			</div>
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
