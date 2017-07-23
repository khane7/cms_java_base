<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript">
	$(document).ready(function() {
		
		var javaInfo = getJavaInfo();
		$('#aNavi1').html( javaInfo['controller'] );
		$('#aNavi2').html( javaInfo['action'] );

		$('#searchValue').keypress(function(e) {
			if ( e.keyCode == 13 ) {
				var searchValue = escape( encodeURIComponent( $('#searchValue').val() ) );
				goPage(removeURLParameter(location.href, "searchValue") + "&searchValue=" + searchValue);
			}
		});
		
	});
</script>

				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">Home</a>
						</li>

						<li>
							<a href="#" id="aNavi1"></a>
						</li>
						<li class="active">
							<a href="#" id="aNavi2"></a>
						</li>
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<div class="nav-search" id="nav-search">
						<!-- <form class="form-search" id="frmSearch" name="frmSearch" method="get"> -->
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="searchValue" name="searchValue" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						<!-- </form> -->
					</div>
					<!-- /.nav-search -->

					<!-- /section:basics/content.searchbox -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->