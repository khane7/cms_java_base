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
			<h2>Hall Schedule 생활관 일정 </h2>

			<ul class="nav">
				<li><img src="/images/sub/icon_home.gif" alt="홈"></li>
				<li>Residential Life</li>
				<li class="active"><a href="#">Hall Schedule </a></li>
			</ul>
		</div>
		<!-- e : top nav -->

		<!-- s : top banner -->
		<div class="sub-top-bnr">
			<img src="/images/sub/bnr_top.jpg" alt="">
		</div>
		<!-- e : top banner -->

		<!-- s : sub contents -->
		<div  id="schedule-calendar" style="margin-top: 50px; margin-bottom: 50px;">

			<iframe src="/html/Resid/calendar_view" id="calendar_view" frameborder="0" scrolling="no" style="width: 100%; height: 450px;"></iframe>
		</div>

		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
