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

		<!-- s : banner -->
		<div class="bnr-sub-top">
			<img src="/images/sub/bnr_sample.jpg" alt="">
		</div>
		<!-- e : banner -->

		<div class="sub-layout clearfix">

			<div class="side">
				<h3>연구소 소개</h3>
				<ul>
					<li><a href="/html/01-info/greeting">센터장 인사말</a></li>
					<li><a href="/html/01-info/region">조직</a></li>
					<li><a href="/html/01-info/history">연혁</a></li>
					<li id="li-rule"><a href="/html/01-info/board?tb_name=rule">연구소 관련규정</a></li>
					<li id="li-lawrule"><a href="/html/01-info/board?tb_name=lawrule">법학논총 관련 규정 및 지침</a></li>
					<li id="li-journel"><a href="/html/01-info/board?tb_name=journel">영문저널 관련 규정 및 지침</a></li>
				</ul>
			</div>
			<div class="sub-contents">
				<h2>${ beanBBS.board_name }</h2>

				<jsp:include page="/board/"/>

			</div>

		</div>

	</div>
</div>
<!-- e : contents -->

<script type="text/javascript">
	$(document).ready(function () {
		if ( getParameter("tb_name") != "" ) {
			$('#li-' + tb_name).addClass("active");
		}
	});
</script>

<!-- s : footer -->
<div id="footer" class="clearfix">
	<div class="inner-layout clearfix">
		<p>
			COPYRIGHT(C) 한양대학교 법학연구소. ALL rights reserved. <br>
			For more information <span>send e-mail to webmaster (hylawri@hanyang.ac.kr)</span><br>
			04763 서울시 성동구 왕십리로 222 법학연구소 | TEL : 02-2220-1511 | FAX : 02-6442-0124<br>
			홈페이지 책임자 소장 오윤 / 담당자 김성균
		</p>

		<div class="policy-link">
			<a href="#" class="bold">개인정보취급방침</a> | <a href="#" class="bold">이메일무단수집금지</a>
		</div>

	</div>
</div>
<!-- e : footer -->

</body>
</html>