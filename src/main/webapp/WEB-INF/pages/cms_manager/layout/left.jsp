<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript">

	$('document').ready(function () {

		var javaInfo = getJavaInfo();
		$('#li' + javaInfo['controller']).addClass("active");

	});

</script>

<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar responsive">

	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'fixed')
		} catch (e) {
		}
	</script>


	<!-- 				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="ace-icon fa fa-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="ace-icon fa fa-pencil"></i>
							</button>

							#section:basics/sidebar.layout.shortcuts
							<button class="btn btn-warning">
								<i class="ace-icon fa fa-users"></i>
							</button>

							<button class="btn btn-danger">
								<i class="ace-icon fa fa-cogs"></i>
							</button>

							/section:basics/sidebar.layout.shortcuts
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div> --><!-- /.sidebar-shortcuts -->

	<ul class="nav nav-list">
		<!-- 					<li class="">
								<a href="/admin">
									<i class="menu-icon fa fa-tachometer"></i>
									<span class="menu-text"> Dashboard </span>
								</a>

								<b class="arrow"></b>
							</li> -->

		<li id="li-left_menu-home" class="">
			<a href="${pageContext.request.contextPath}/" target="_blank">
				<i class="menu-icon fa fa-tachometer"></i>
				<span class="menu-text"> 홈으로 </span>
			</a>
		</li>

		<c:if test="${ sessionScope.session_user.level >= 90 }">
		<li id="li-left_menu-account_manager" class="">
			<a href="${pageContext.request.contextPath}/cms_manager/account_manager/getUserList">
				<i class="menu-icon fa fa-users"></i>
				<span class="menu-text"> 계정관리 </span>

			</a>
		</li>
		</c:if>

		<li id="li-left_menu-board_manager" class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-comments-o "></i>
				<span class="menu-text"> 게시판 관리 </span>
			</a>


			<b class="arrow"></b>

			<ul class="submenu">

				<c:if test="${ sessionScope.session_user.level >= 90 }">
				<li class="">
					<a href="${pageContext.request.contextPath}/cms_manager/board_manager/">
						<i class="menu-icon fa fa-caret-right"></i>
						게시판 관리
					</a>

					<b class="arrow"></b>
				</li>
				</c:if>

				<c:forEach var="bbs" items="${ bbsList4Menu }" varStatus="status">
					<li id="li-left_menu-bbs-${ bbs.board_key }" class="">
						<a href="${pageContext.request.contextPath}/cms_manager/board/?tb_name=${ bbs.board_key }">
							<i class="menu-icon fa fa-caret-right"></i>
								${ bbs.board_name }
						</a>

						<b class="arrow"></b>
					</li>
				</c:forEach>

			</ul>

		</li>


		<c:if test="${ sessionScope.session_user.level >= 90 }">
			<li id="li-left_menu-account_manager" class="">
				<a href="${pageContext.request.contextPath}/cms_manager/calendar/">
					<i class="menu-icon fa fa-calendar"></i>
					<span class="menu-text"> 일정관리 </span>
				</a>
			</li>
		</c:if>


		<c:if test="${ sessionScope.session_user.level >= 90 }">
		<li id="li-left_menu-display_manager" class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-desktop "></i>
				<span class="menu-text"> 화면 관리 </span>
			</a>


			<b class="arrow"></b>

			<ul class="submenu">
				<li id="li-left_menu-banner" class="">
					<a href="${pageContext.request.contextPath}/cms_manager/display_manager/banner/showBannerList">
						<i class="menu-icon fa fa-caret-right"></i>
						배너 관리
					</a>

					<b class="arrow"></b>
				</li>

				<%--<li id="li-left_menu-popup" class="">
					<a href="${pageContext.request.contextPath}/cms_manager/display_manager/popup/showPopupList">
						<i class="menu-icon fa fa-caret-right"></i>
						팝업 관리
					</a>

					<b class="arrow"></b>
				</li>--%>

			</ul>


		</li>
		</c:if>


		<%--<li id="liContents" class="">
			<a href="${pageContext.request.contextPath}/admin/Contents/showContents/" >
				<i class="menu-icon fa fa-comments-o "></i>
				<span class="menu-text"> 컨텐츠 관리 </span>
			</a>
		</li>

		<li id="liRecommend" class="">
			<a href="${pageContext.request.contextPath}/admin/Recommend/showSiteCategory/" >
				<i class="menu-icon fa fa-heart "></i>
				<span class="menu-text"> 추천사이트 관리 </span>
			</a>
		</li>

		 <li id="liStats" class="">
			<a href="${pageContext.request.contextPath}/admin/Stats/showStats/" >
				<i class="menu-icon fa fa-bar-chart-o"></i>
				<span class="menu-text"> 통계 </span>
			</a>
		</li>--%>


		<!-- 					<li class="">
								<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-file-o"></i>

									<span class="menu-text">
										Other Pages

										#section:basics/sidebar.layout.badge
										<span class="badge badge-primary">5</span>

										/section:basics/sidebar.layout.badge
									</span>

									<b class="arrow fa fa-angle-down"></b>
								</a>

								<b class="arrow"></b>

								<ul class="submenu">
									<li class="">
										<a href="faq.html">
											<i class="menu-icon fa fa-caret-right"></i>
											FAQ
										</a>

										<b class="arrow"></b>
									</li>

									<li class="">
										<a href="error-404.html">
											<i class="menu-icon fa fa-caret-right"></i>
											Error 404
										</a>

										<b class="arrow"></b>
									</li>

									<li class="">
										<a href="error-500.html">
											<i class="menu-icon fa fa-caret-right"></i>
											Error 500
										</a>

										<b class="arrow"></b>
									</li>

									<li class="">
										<a href="grid.html">
											<i class="menu-icon fa fa-caret-right"></i>
											Grid
										</a>

										<b class="arrow"></b>
									</li>

									<li class="active">
										<a href="blank.html">
											<i class="menu-icon fa fa-caret-right"></i>
											Blank Page
										</a>

										<b class="arrow"></b>
									</li>
								</ul>
							</li> -->
	</ul>
	<!-- /.nav-list -->

	<!-- #section:basics/sidebar.layout.minimize -->
	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>

	<!-- /section:basics/sidebar.layout.minimize -->
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'collapsed')
		} catch (e) {
		}
	</script>
</div>

<!-- /section:basics/sidebar -->


<script type="text/javascript">
	$(document).ready(function () {

		if (getParameter("tb_name") != "") {

//			$('#li-board_manager').click();
			$('#li-left_menu-board_manager').addClass("active");
			$('#li-left_menu-bbs-' + getParameter("tb_name")).addClass("active");
		}


		var currentLink = location.href;
		var arrPages = [
			"account_manager",
			"board_manager",
			"display_manager",
				"banner",
				"popup"
		]
		for ( var i = 0; i < arrPages.length; i++) {
			if (currentLink.indexOf( arrPages[i] ) > -1) {
				$('#li-left_menu-' + arrPages[i]).addClass("active");
			}
		}

	});
</script>