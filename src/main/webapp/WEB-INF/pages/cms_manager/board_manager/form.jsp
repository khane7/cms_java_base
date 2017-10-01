<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-15
  Time: 오후 3:42
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


			<div class="page-header">
				<h1>
					게시판 관리
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						게시판 관리기능 제공
					</small>
				</h1>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->


					<form class="form-horizontal" role="form" id="frm" name="frm" method="POST">
						<input type="hidden" id="idx" name="idx" value="0" />
						<input type="hidden" id="MODE" name="MODE" value="${ MODE }" />

						<div class="widget-box">
							<div class="widget-header">
								<h4 class="widget-title">작성정보</h4>

								<div class="widget-toolbar">
									<a href="#" data-action="collapse">
										<i class="ace-icon fa fa-chevron-up"></i>
									</a>

									<a href="#" data-action="close">
										<i class="ace-icon fa fa-times"></i>
									</a>
								</div>
							</div>

							<div class="widget-body">
								<div class="widget-main">

									<!-- #section:elements.form -->
									<div class="form-group">
										<label class="col-sm-2 control-label no-padding-right" for="board_key"> 게시판 코드 </label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-3" id="board_key" name="board_key" type="text" placeholder="게시판 코드를 입력해주세요.">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label no-padding-right" for="board_name"> 게시판 명 </label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-3" id="board_name" name="board_name" type="text" placeholder="게시판 명을 입력해주세요.">
										</div>
									</div>

									<div id="div-skin" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="skin"> 스킨 </label>
										<div class="col-sm-9">
											<label>
												<select id="skin" name="skin" class="ace ace-switch ace-switch-5" >
													<c:forEach var="skin" items="${ skinList }">
														<option value="${ skin }">${ skin }</option>
													</c:forEach>
												</select>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div id="div-is_notice" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="is_notice"> 공지사항 사용여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_notice" name="is_notice" class="ace ace-switch ace-switch-5" type="checkbox" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
									<div id="div-is_comment" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="is_comment"> 댓글 사용여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_comment" name="is_comment" class="ace ace-switch ace-switch-5" type="checkbox" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
									<div id="div-is_file" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="is_file"> 첨부파일 사용여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_file" name="is_file" class="ace ace-switch ace-switch-5" type="checkbox" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
									<div id="div-is_thumbnail" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="is_thumbnail"> 썸네일 사용여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_thumbnail" name="is_thumbnail" class="ace ace-switch ace-switch-5" type="checkbox" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
									<div id="div-is_secret" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="is_secret"> 비밀글 사용여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_secret" name="is_secret" class="ace ace-switch ace-switch-5" type="checkbox" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
									<div id="div-is_nologin" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="is_nologin"> 비로그인 사용자 사용여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_nologin" name="is_nologin" class="ace ace-switch ace-switch-5" type="checkbox" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
									<div id="div-write_level" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="write_level"> 작성 권한 레벨 </label>
										<div class="col-sm-9">
											<label>
												<select id="write_level" name="write_level" size=1>
													<option value="1" checked="checked">비계정 사용자</option>
													<option value="50">계정 사용자</option>
													<option value="99">관리자</option>
												</select>
											</label>
										</div>
									</div>
									<div id="div-page_count" class="form-group" >
										<label class="col-sm-2 control-label no-padding-right" for="page_count"> 한 페이지 표출수 </label>
										<div class="col-sm-9">
											<label>
												<input class="col-xs-10 col-sm-3" id="page_count" name="page_count" type="text" placeholder="15" value="15">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="clearfix form-actions">
							<div class="col-md-offset-5 col-md-5">
								<button class="btn btn-xs btn-prev" type="button" id="btn-back" onclick="javascript:history.back();">
									<i class="ace-icon glyphicon glyphicon-backward bigger-110"></i>
									뒤로
								</button>
								<button class="btn btn-xs btn-info" type="button" id="btn-submit">
									<i class="ace-icon fa fa-check bigger-110"></i>
									저장
								</button>
								<button class="btn btn-xs" type="reset">
									<i class="ace-icon fa fa-undo bigger-110"></i>
									초기화
								</button>
							</div>
						</div>
					</form>


					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
			</div>
		</div><!-- /.page-content -->
	</div><!-- /.main-content -->
	<jsp:include page="/cms_manager/getLayoutBottom" />
</div><!-- /.main-container -->
<jsp:include page="/cms_manager/getLayoutTail" />



</body>

<script type="text/javascript">
	$(document).ready(function() {

		if ( getParameter("idx") > 0 && getParameter("idx") != undefined ) {
			getProcess(BOARD_MANAGER + "/getBBS", "idx=" + getParameter("idx"), function (data) {
				if ( data.result == "OK" ) {

					var beanBBS = data.beanBBS;

					$('#idx').val( beanBBS.idx );

					$('#board_key').val( beanBBS.board_key );
					$('#board_name').val( beanBBS.board_name );

					$('#skin').val( beanBBS.skin );

					if ( beanBBS.is_notice == "Y" ) {
						$('#is_notice').prop("checked", "checked");
					}
					if ( beanBBS.is_comment == "Y" ) {
						$('#is_comment').prop("checked", "checked");
					}
					if ( beanBBS.is_file == "Y" ) {
						$('#is_file').prop("checked", "checked");
					}
					if ( beanBBS.is_thumbnail == "Y" ) {
						$('#is_thumbnail').prop("checked", "checked");
					}
					if ( beanBBS.is_secret == "Y" ) {
						$('#is_secret').prop("checked", "checked");
					}
					if ( beanBBS.is_nologin == "Y" ) {
						$('#is_nologin').prop("checked", "checked");
					}
					$('#write_level').val(beanBBS.write_level);
					$('#page_count').val( beanBBS.page_count );

				} else {
					showAlert(data.msg);
				}
			});
		}

		$('#btn-submit').click(function() {

			if ( $('#board_key').val() == "" || $('#board_name').val() == "" ) {
				showAlert("게시판 코드와 게시판 명을 입력해주세요.");
				return;
			}

			getProcess( BOARD_MANAGER +  "/setBBS", $('#frm').serialize(), function (data) {
				if ( data.result == "OK" ) {
					showAlert("저장되었습니다.", null, false, function () {
						//location.href = BOARD_MANAGER + "/";
						window.reload();
					}, null);

				} else {
					showAlert(data.msg);
				}
			});
		});

	});
</script>


</html>