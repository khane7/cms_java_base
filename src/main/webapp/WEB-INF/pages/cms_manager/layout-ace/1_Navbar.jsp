<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2017-10-03
  Time: 오후 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- #section:basics/navbar.layout -->
<script type="text/javascript">
	try {
		ace.settings.check('navbar', 'fixed')
	} catch (e) {
	}
</script>

<div class="navbar-container" id="navbar-container">
	<!-- #section:basics/sidebar.mobile.toggle -->
	<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
		<span class="sr-only">Toggle sidebar</span>

		<span class="icon-bar"></span>

		<span class="icon-bar"></span>

		<span class="icon-bar"></span>
	</button>

	<!-- /section:basics/sidebar.mobile.toggle -->
	<div class="navbar-header pull-left">
		<!-- #section:basics/navbar.layout.brand -->
		<a href="#" class="navbar-brand">
			<small id="CMS_TITLE">
				<i class="fa fa-leaf"></i>
				Manager
			</small>
		</a>

		<!-- /section:basics/navbar.layout.brand -->

		<!-- #section:basics/navbar.toggle -->

		<!-- /section:basics/navbar.toggle -->
	</div>

	<!-- #section:basics/navbar.dropdown -->
	<div class="navbar-buttons navbar-header pull-right" role="navigation">
		<ul class="nav ace-nav">


			<!-- #section:basics/navbar.user_menu -->
			<li class="light-blue">
				<a data-toggle="dropdown" href="#" class="dropdown-toggle">
					<%-- <img class="nav-account-photo" src="${pageContext.request.contextPath}/bootstrap/assets/avatars/account.jpg" alt="Jason's Photo" /> --%>
					<span class="user-info">
									<small>Welcome,</small>
									${ sessionScope.session_user.user_name }
								</span>

					<i class="ace-icon fa fa-caret-down"></i>
				</a>

				<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
					<!-- 								<li>
														<a href="#">
															<i class="ace-icon fa fa-cog"></i>
															Settings
														</a>
													</li>
													-->

					<li>
						<a href="${pageContext.request.contextPath}/" target="_blank">
							<i class="ace-icon fa fa-user"></i>
							홈으로
						</a>
					</li>

					<li class="divider"></li>

					<li>
						<a href="${ pageContext.request.contextPath }/cms_manager/doLogout">
							<i class="ace-icon fa fa-power-off"></i>
							Logout
						</a>
					</li>
				</ul>
			</li>

			<!-- /section:basics/navbar.user_menu -->
		</ul>
	</div>

	<!-- /section:basics/navbar.dropdown -->
</div>
<!-- /.navbar-container -->