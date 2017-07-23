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

		<!-- s : sub contents -->
		<br/><br/>
		<%--<ul class="guide-tab">
			<li class="active"><a href="#">일반공지</a></li>
			<li><a href="#">입사/퇴사 공지</a></li>
			<li><a href="#">모집안내</a></li>
			<li><a href="#">시설사용안내</a></li>
			<li><a href="#">안전교육자료실</a></li>
		</ul>--%>

		<div class="bbsnotice">ERROR!!<br/>
			정상적인 접근이 아닙니다.
		</div>

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
