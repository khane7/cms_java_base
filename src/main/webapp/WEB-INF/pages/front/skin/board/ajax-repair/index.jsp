<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-22
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/board/${beanBBS.skin}/css/style.css" />
<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
</script>

<script src="https://code.jquery.com/jquery-1.12.0.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/utility.js" type="text/javascript"></script>


<!-- 로딩 레이어 -->
<div class="loader" id="ajax-loading" style="display: none;"><img src="${pageContext.request.contextPath}/skin/board/${beanBBS.skin}/images/loading.gif" alt="loading이미지"></div>

<!-- 비밀번호 레이어 팝업 -->
<jsp:include page="../../commons/pop_password.jsp" />


<div id="div-board">


</div>


<script type="text/javascript">

	var direct = false;
	var tb_name = "";
	var tb_idx = "";
	var pageNum = 1;
	var search_key = "";
	var search_val = "";

	$(document).ready(function () {

		tb_name = getParameter( "tb_name" );
		pageNum = getParameter( "pageNum" );
		if ( pageNum == "" ) {
			pageNum = 1;
		}
//		pageNum = getParameter( "pageNum" );

		if ( tb_name == undefined || tb_name.trim() == "" ) {
			alert("잘못된 게시판 코드입니다.");
			history.back();
			return;
		}


		showList();
	});


	var showList = function () {

		var data = {
			"tb_name" : tb_name,
			"pageNum" : pageNum
		}

		getProcess4Page(contextPath + "/board/list", data, function (data) {
			$('#div-board').html( data );
		});
	}

	var resetPopPassword = function () {
		$('#ajax-password').hide();
		$('#pop-mode').val("");
		$('#pop-idx').val("");
		$('#pop-pwd').val("");
	}


</script>