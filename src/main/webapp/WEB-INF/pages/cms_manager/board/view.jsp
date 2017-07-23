<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-15
  Time: 오후 3:43
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/cms_manager/getLayoutHeader"/>

<body class="no-skin">

<jsp:include flush="false" page="/cms_manager/getLayoutTop"/>

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<script type="text/javascript">
		try {
			ace.settings.check('main-container', 'fixed')
		} catch (e) {
		}
	</script>

	<jsp:include flush="true" page="/cms_manager/getLayoutLeft"/>
	<div class="main-content">
		<jsp:include page="/cms_manager/getLayoutNavigator"/>
		<div class="page-content">
			<jsp:include page="/cms_manager/getLayoutRight"/>


			<div class="page-header">
				<h1>
					<c:out value="${ beanBBS.board_name }"/>
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						게시물 관리
					</small>
				</h1>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->



					<form class="form-horizontal" role="form" id="frm" name="frm" method="POST">
						<input type="hidden" id="idx" name="idx" value="0" />
						<input type="hidden" id="pidx" name="pidx" value="0" />
						<input type="hidden" id="tree_level" name="tree_level" value="">
						<input type="hidden" id="tb_name" name="tb_name" value="" />
						<input type="hidden" id="content" name="content" />
						<input type="hidden" id="opt1" name="opt1" value="">

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
										<label class="col-sm-1 control-label no-padding-right" for="title"> 제목 </label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-10" id="title" name="title" type="text" placeholder="제목을 입력해주세요.">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-1 control-label no-padding-right" for="writer"> 작성자 </label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-3" id="writer" name="writer" type="text" placeholder="작성자명을 입력해주세요.">
										</div>
									</div>
									<div class="form-group" style="<c:if test="${ beanBBS.is_nologin == 'N' }">display:none;</c:if>" >
										<label class="col-sm-1 control-label no-padding-right" for="writer_pw"> 비밀번호 </label>
										<div class="col-sm-9">
											<input class="col-xs-10 col-sm-5" id="writer_pw" name="writer_pw" type="password" placeholder="게시물의 비밀번호를 입력해주세요.">
										</div>
									</div>
									<div id="div-is_notice" class="form-group" style="<c:if test="${ beanBBS.is_notice == 'N' }">display:none;</c:if>">
										<label class="col-sm-1 control-label no-padding-right" for="is_notice"> 공지여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_notice" name="is_notice" class="ace ace-switch ace-switch-5" type="checkbox" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
									<div id="div-is_secret" class="form-group" style="<c:if test="${ beanBBS.is_secret == 'N' }">display:none;</c:if>">
										<label class="col-sm-1 control-label no-padding-right" for="is_secret"> 비밀글 여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_secret" name="is_secret" class="ace ace-switch ace-switch-5" type="checkbox" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
									<div id="div-is_use" class="form-group" >
										<label class="col-sm-1 control-label no-padding-right" for="is_use"> 표출여부 </label>
										<div class="col-sm-9">
											<label>
												<input id="is_use" name="is_use" class="ace ace-switch ace-switch-5" type="checkbox" checked="checked" value="Y">
												<span class="lbl"></span>
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>

						<jsp:include page="/cms_manager/board/editor" />


						<c:if test="${ beanBBS.is_file == 'Y' }">
							<jsp:include page="/cms_manager/board/uploader" />
						</c:if>


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
								<button class="btn btn-xs btn-info" type="button" id="btn-reply">
									<i class="ace-icon fa fa-undo bigger-110"></i>
									답변
								</button>
							</div>
						</div>
					</form>



					<c:if test="${ beanBBS.is_comment == 'Y' }">
						<jsp:include page="/cms_manager/comment/" />
					</c:if>


					<!-- PAGE CONTENT ENDS -->
				</div>
				<!-- /.col -->
			</div>
		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.main-content -->
	<jsp:include page="/cms_manager/getLayoutBottom"/>
</div>
<!-- /.main-container -->
<jsp:include page="/cms_manager/getLayoutTail"/>


</body>



<script type="text/javascript">

	var idx = "";
	var tb_name = "";
	$(document).ready(function() {

		tb_name = getParameter("tb_name");
		idx = getParameter("idx");

		$('#tb_name').val( tb_name );

		$('#btn-submit').click(function() {
			saveBoard();
		});

		$('#btn-reply').click(function () {
			/*if ( $('#idx').val() != $('#pidx').val() ) {
				alert("해당 게시물이 답변입니다.");
				return;
			}*/
			location.href = BOARD + "/reply?tb_name=" + tb_name + "&pidx=" + $('#pidx').val() + "&tree_level=" + $('#tree_level').val();
		});

		Init();

	});

	var Init = function() {

		if ( idx != "" ) {

			getProcess( BOARD + "/getBoardOne", { "tb_name" : tb_name, "idx" : idx }, function (data) {
				if ( data.status == "OK" ) {
					//alert( obj.board );
					var item = data.beanBoard;

					$('#idx').val( item.idx );
					$('#pidx').val( item.pidx );
					$('#tree_level').val( item.tree_level );
					$('#content').val( item.content_html );

					$('#title').val( item.title );
					$('#writer').val( item.writer );
					$('#writer_pw').val( item.writer_pw );

					$('#is_notice').prop("checked", "");
					if ( item.is_notice == "Y" ) {
						$('#is_notice').prop("checked", "checked");
					}
					$('#is_use').prop("checked", "");
					if ( item.is_use == "Y" ) {
						$('#is_use').prop("checked", "checked");
					}

					$('#opt1').val( item.opt1 );
					$('#opt2').val( item.opt2 );

					$('#editor').html( item.content_html );
				} else {
					showAlert(data.msg);
				}

			});
		} else {
			$('#is_use').prop("checked", "checked");
		}
	}

	var saveBoard = function() {

		$('#content').val( $('#editor').html() );
		getProcess( BOARD + "/setBoardOne", $('#frm').serialize(), function (data) {

			if (data.status == "OK") {
				location.href = BOARD + "/?tb_name=" + tb_name;
			} else {
				showAlert(data.msg);
			}

		} );
	}

</script>


</html>