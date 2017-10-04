<%@page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="../include/declare.jsp" />

	<head>
		<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>${ SITE_NAME }</title>
	
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/jquery-ui.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/ace-ie.min.css" />
		<![endif]-->




		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/fullcalendar.css" />




		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/respond.min.js"></script>
		<![endif]-->

		<script src="${pageContext.request.contextPath}/js/jquery/jquery-1.11.0.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/utility.js"></script>

		<script type="text/javascript">

			$(document).ready(function() {
				
				$('document').ready(function() {
					
					var javaInfo = getJavaInfo();
					$(this).attr("title", "Humanwares CMS - " + javaInfo['controller'] + " " + javaInfo['action'] );

				});

			});
		</script>


		<%--<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" />
		<style>
		body , div , dl ,dt , dd , ul ,ol ,li , h1 ,h2 , h3 , h4 ,h5 ,h6 ,pre , form , input , th , td ,tr,  fieldset , p {
			font-family:'Nanum Gothic'; 
		}
		</style>		--%>
		
		

	</head>


<c:if test="${ sessionScope.session_user ne null }">
	<c:if test="${ themes eq null }">
		<body class="no-skin">
	</c:if>
	<c:if test="${ themes ne null }">
		<body class="${ themes.colorpicker }">
	</c:if>
</c:if>

<c:if test="${ sessionScope.session_user eq null }">
	<body class="login-layout">
</c:if>

