<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-15
  Time: 오후 3:43
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/cms_manager/getLayoutHeader" />

<body class="no-skin">

<jsp:include flush="false"  page="/cms_manager/getLayoutTop" />

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<script type="text/javascript">
		try{ace.settings.check('main-container' , 'fixed')}catch(e){}
	</script>

	<jsp:include flush="true" page="/cms_manager/getLayoutLeft" />
	<div class="main-content">
		<jsp:include page="/cms_manager/getLayoutNavigator" />
		<div class="page-content">
			<jsp:include page="/cms_manager/getLayoutRight" />


			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->


					<!-- #section:pages/error -->
					<div class="error-container">
						<div class="well">
							<h1 class="grey lighter smaller">
										<span class="blue bigger-125">
											<i class="ace-icon fa fa-random"></i>
											500
										</span>
								Something Went Wrong
							</h1>

							<hr />
							<h3 class="lighter smaller">
								But we are working
								<i class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
								on it!
							</h3>

							<div class="space"></div>

							<div>
								<h4 class="lighter smaller">Meanwhile, try one of the following:</h4>

								<ul class="list-unstyled spaced inline bigger-110 margin-15">
									<li>
										<i class="ace-icon fa fa-hand-o-right blue"></i>
										Read the faq
									</li>

									<li>
										<i class="ace-icon fa fa-hand-o-right blue"></i>
										Give us more info on how this specific error occurred!
									</li>
								</ul>


								<h4 class="lighter smaller">
									<c:if test="${ msg != null }">
										<c:forEach var="item" items="${ msg }">
											${ item }<br />
										</c:forEach>
									</c:if>
								</h4>
							</div>

							<hr />
							<div class="space"></div>

							<div class="center">
								<a href="javascript:history.back()" class="btn btn-grey">
									<i class="ace-icon fa fa-arrow-left"></i>
									Go Back
								</a>

								<a href="#" class="btn btn-primary">
									<i class="ace-icon fa fa-tachometer"></i>
									Dashboard
								</a>
							</div>
						</div>
					</div>


					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
			</div>
		</div><!-- /.page-content -->
	</div><!-- /.main-content -->
	<jsp:include page="/cms_manager/getLayoutBottom" />
</div><!-- /.main-container -->
<jsp:include page="/cms_manager/getLayoutTail" />



</body>



</html>