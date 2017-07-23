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
			<h2>Room Inspection 호실점검</h2>

			<ul class="nav">
				<li><img src="/images/sub/icon_home.gif" alt="홈"></li>
				<li>Residential Life</li>
				<li class="active"><a href="#">Room Inspection</a></li>
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
			<div>
				For the safety and the comfort of Residents Residence Hall Administration Team holds room inspection :  <span class="fb">Irregular inspection, Regular inspection </span><br/>
				학생생활관에서는 관생의 편의와 안전을 위하여 정기 및 수시 호실점검을 진행합니다. 

			</div>
			<br/>
			<div class="boxtype1">
				<h3>Irregular Inspection 수시점검</h3>
				<p>Residential Assistant may entering the dormitory occasionally and hold the inspection according to the regulation.</p>
				거주 기간 내에 각 건물 담당 조교가 임의로 호실을 방문할 수 있으며, 생활수칙에 의거하여 호실점검을 진행합니다. 
			</div>
			<br/>
			<div class="boxtype1">
				<h3>Regular Room Inspection  정기호실점검</h3>
				<p>Regular Inspection is held once a month. <br/>Inspection will be held according to the regulation.</p>
				입,퇴사 시기를 포함하여 월 1회 진행되는 점검으로, 조교가 호실 내에 진입하여 생활 수칙에 의거하여 호실점검을 진행합니다. 

			</div>
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
