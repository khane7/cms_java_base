
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- title, meta tags, list of stylesheets, etc ... -->

	<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>${ SITE_NAME }</title>

	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/font-awesome.min.css" />

	<!-- page specific plugin styles -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/jquery-ui.custom.min.css" />

	<!-- text fonts -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/ace-fonts.css" />


	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/ace.min.css" />
	<!--[if lte IE 9]>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/ace-part2.min.css" />
	<![endif]-->

	<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/ace/ace.css" />
	<!--[if lte IE 9]>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/ace/ace-part2.css" />
	<![endif]-->--%>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/ace-skins.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/ace-rtl.min.css" />

	<!--[if lte IE 9]>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/ace/assets/css/ace-ie.min.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="${pageContext.request.contextPath}/bootstrap/ace/assets/js/ace-extra.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

	<!--[if lte IE 8]>
	<script src="${pageContext.request.contextPath}/bootstrap/ace/assets/js/html5shiv.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap/ace/assets/js/respond.min.js"></script>
	<![endif]-->



	<script src="${pageContext.request.contextPath}/js/jquery/jquery-1.11.0.min.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/ace/ace.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/ace/ace-elements.js" ></script>

	<script src="${pageContext.request.contextPath}/js/utility.js"></script>

	<script type="text/javascript">

		$(document).ready(function() {

			$('document').ready(function() {

				var javaInfo = getJavaInfo();
				$(this).attr("title", "khane7 CMS - " + javaInfo['controller'] + " " + javaInfo['action'] );

			});

		});
	</script>

</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default">
	<!-- navbar goes here -->
	<jsp:include page="../layout-ace/1_Navbar.jsp"/>
</div>

<div class="main-container" id="main-container">
	<div class="sidebar responsive" id="sidebar">
		<!-- sidebar goes here -->
		<jsp:include page="../layout-ace/2_Sidebar.jsp"/>
	</div>

	<div class="main-content">
		<div class="breadcrumbs">
			<!-- breadcrumbs goes here -->
			<jsp:include page="../layout-ace/3_Breadcrumbs.jsp"/>
		</div>

		<div class="page-content">