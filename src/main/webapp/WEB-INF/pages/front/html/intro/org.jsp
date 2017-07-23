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
			<h2>조직구성</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관소개</a></li>
				<li class="active"><a href="#">조직구성</a></li>
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
			<h3>1. 학생생활관운영위원회</h3>
				<table class="table-cen">
					<tr><th>구분</th><th>직책(보직)</th><th>비고</th></tr>
					<tr><td>위원장</td><td>학생생활관장</td><td>학생처장(서울)</td></tr>
					<tr><td>부위원장</td><td>학생생활관부관장</td><td></td></tr>
					<tr><td>위원</td><td>총무처장</td><td>&nbsp;</td></tr>
					<tr><td>위원</td><td>관리처장</td><td>&nbsp;</td></tr>
					<tr><td>위원</td><td>기획처장</td><td>&nbsp;</td></tr>
					<tr><td>위원</td><td>국제처장</td><td>&nbsp;</td></tr>
					<tr><td>위원</td><td>학생부처장</td><td>&nbsp;</td></tr>
					<tr><td>위원</td><td>총무팀장</td><td>&nbsp;</td></tr>
					<tr><td>위원</td><td>학생지원팀장</td><td>&nbsp;</td></tr>
					<tr><td>간사</td><td>학생생활관 행정팀장</td><td>&nbsp;</td></tr>
				</table>
				<br/><br/>
			<h3>2. 조직도</h3>
			<div class="tc"><img src="/images/org.jpg" alt="조직도이미지" /></div>
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
