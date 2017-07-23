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
			<h2>생활규정</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">입퇴사안내</a></li>
				<li class="active"><a href="#">생활규정</a></li>
				<!-- <li class="active"><a href="#">벌점제도</a></li> -->
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
			    <li class="active"><a href="ruledetail4">호실점검</a></li>
				<li><a href="ruledetail1">벌점제도</a></li>
				<li><a href="ruledetail2">벌점기준표</a></li>
				<li><a href="ruledetail3">운영내규</a></li>
				<li><a href="https://portal.hanyang.ac.kr/huas/iycy/ruleBook.do?init_pos=view&p_gyujeong_cd=012&gyujeong_cd=168 " target="_blank">규정</a></li>
			</ul>

			<div>준비중입니다.</div>
			
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


