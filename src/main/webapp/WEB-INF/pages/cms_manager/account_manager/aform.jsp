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


				<div class="page-header">
					<h1>
						회원관리
						<small>
							<i class="ace-icon fa fa-angle-double-right"></i>
							${ user.user_name } 회원의 계정정보
						</small>
					</h1>
				</div>

				<div class="row">
					<div class="col-xs-12 center">
						<!-- PAGE CONTENT BEGINS -->

						<form class="form-horizontal" id="frm" name="frm" >
						<input type="hidden" id="idx" name="idx" value="0">

							<div class="form-group">
								<label class="col-sm-2" for="user_name"> 이름</label>

								<div class="col-sm-9 align-left">
									<input class="" id="user_name" name="user_name" type="text" placeholder="Username" >
								</div>
							</div>

							<%-- <div class="space-4"></div>

							<div class="form-group">
								<label class="col-sm-2" for="themes"> 테마</label>

								<div class="col-sm-9 align-left">
									<select id="themes" name="themes">
 											<c:forEach var="item" items="${ listThemes }">
						 					<option value="${ item.themes }">${ item.themes_name }</option>
										</c:forEach>
									</select>
								</div>
							</div> --%>

							<div class="space-4"></div>

							<div class="form-group">
								<div class="form-inline">
								<label class="col-sm-2" for="user_id" > ID</label>

								<div class="col-sm-9 align-left">
									<input class="input-small width-20" id="user_id" name="user_id" type="text" placeholder="User ID" data-original-title="email 형식으로 입력해주세요" >
									<!-- <span class="text">@</span>
									<input class="input-small width-30" id="user_id_ext" name="user_id_ext" type="text" placeholder="domain" >
 -->								</div>
							</div>
							</div>

							<div class="space-4"></div>

							<div class="form-group">
								<label class="col-sm-2" for="passwd" > 비밀번호</label>
								<div class="col-sm-9 align-left">
									<input class="col-xs-3 col-sm-2" id="passwd" name="passwd" type="password" placeholder="비밀번호" >
								</div>
							</div>

							<div class="space-4"></div>

							<div class="form-group">
								<label class="col-sm-2" for="passwd_chk" > 비밀번호 확인</label>
								<div class="col-sm-9 align-left">
									<input class="col-xs-3 col-sm-2" id="passwd_chk" name="passwd_chk" type="password" placeholder="비밀번호 확인" >
								</div>
							</div>

							<div class="space-4"></div>

							<div class="form-group">
								<div class="form-inline">
									<label class="col-sm-2" for="level" > Lv</label>

									<div class="col-sm-9 align-left">
									<select id="level" name="level" size=1>
										<option value="1" checked="checked">비계정 사용자
										<option value="50">계정 사용자
										<option value="99">관리자
									</select>
									</div>
								</div>
							</div>

						</form>

						<!-- PAGE CONTENT ENDS -->
					</div><!-- /.col -->
				</div>

				<div class="cols-xs-12 align-right">
					<button type="button" class="btn btn-grey btn-sm" id="btn-cancel" onclick="javascript:history.go(-1);">취소</button>
					<button type="button" class="btn btn-primary btn-sm" id="btn-save">저장</button>
				</div>

			</div><!-- /.page-content -->
		</div><!-- /.main-content -->
		<jsp:include page="/cms_manager/getLayoutBottom" />
	</div><!-- /.main-container -->
	<jsp:include page="/cms_manager/getLayoutTail" />


</body>

<script type="text/javascript">

$(document).ready(function() {

	init();

	$('#btn-save').click(function() {
		saveUsers();
	});

});

var init = function() {

	if ( "${ mode }" == "update_user" ) {
		$('#idx').val("${ user.idx }" );
		$('#user_id').val("${ user.user_id }" );
		$('#user_name').val("${ user.user_name }");
		$('#level').val("${ user.level }");

		$('#user_id').prop("disabled", true);

	} else {
		$('#idx').val("0" );
		$('#user_id').prop("disabled", false);
	}

}

var saveUsers = function() {

	if ( $('#idx').val() == "0" ) {

		if ( $('#user_name').val() == "" || $('#user_id').val() == "" ||$('#user_id').val() == "" || $('#passwd').val() == "" ) {
			showAlert("모든 정보를 입력해주세요.", "Information");
			return;
		}
	}

	$('#user_id').prop("disabled", false);
	doProcess("${pageContext.request.contextPath}/cms_manager/account_manager/saveUser", $('#frm').serialize(), function (data) {
		location.href = "${pageContext.request.contextPath}/cms_manager/account_manager/getUserList";
	} );
}
/* var saveUserCallback = function() {
	history.go(-1);
} */


</script>


</html>