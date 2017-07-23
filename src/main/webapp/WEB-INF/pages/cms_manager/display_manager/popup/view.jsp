<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-03-17
  Time: 오후 2:56
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<script src="${pageContext.request.contextPath}/js/jquery/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/utility.js"></script>


<style>
	div {
		cursor : pointer;
		position: absolute;
		z-index: 100;
	}
</style>
<style>
	/* reset */
	p{
		vertical-align:baseline; font-family:NanumGothic,'Malgun Gothic','Dotum','돋움','Tahoma','sans-serif';font-size:14px;letter-spacing:-1px; padding:0; margin:0; border:none; line-height:20px;}
</style>

<body style="border: 0px; padding: 0px; margin: 0px; background: url(${ popup.img_main }) no-repeat;">

<!-- 닫기버튼 -->
<div id="btn-close" style="width:50px; height:50px; left: ${ popup.close_position_x }; top: ${ popup.close_position_y }; "></div>

<!-- 링크 버튼 -->
<div id="btn-link" style="width:${ popup.link_size_x }px; height:${ popup.link_size_y }px; left: ${ popup.link_position_x }; top: ${ popup.link_position_y }; "></div>
</body>

<p id="pClose" style="position:absolute; bottom:0px;"><label for="chkbox">오늘하루 이 창을 열지 않음</label>
	<input id="chkbox" name="chkbox" type="checkbox">

	<%--<a href="#" onclick="javascript:window.close();" style="color: #000000; text-decoration: none;">[닫기]</a>--%>
</p>


<script type="text/javascript">
	var popup_idx = "${ popup.idx }";
	$(document).ready(function () {

		window.resizeTo(${ popup.size_x }, ${ popup.size_y });


		$('#btn-close').click(function() {
			window.close();
		});

		$('#btn-link').click(function() {
			opener.location.href = "${ popup.url }";
			window.close();
		});

		$('#chkbox').click(function() {
			setCookie( "popup_" + popup_idx, "done", 1 );
			window.close();
		});

	});

	function setCookie(name, value, expiredays) {
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expiredays);
		todayDate.setHours(0);
		todayDate.setMinutes(0);
		todayDate.setSeconds(0);
		document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	}

</script>