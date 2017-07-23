<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-21
  Time: 오후 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="space-20"></div>

<div class="widget-box">
	<div class="widget-header">
		<h4 class="widget-title">댓글</h4>

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

			<form class="form-inline" id="frm-comment" name="frm-comment" method="POST">
				<input type="hidden" id="comment-idx" name="comment-idx" />
				<input type="hidden" id="comment-tb_name" name="comment-tb_name" />
				<input type="hidden" id="comment-tb_idx" name="comment-tb_idx" />
				<%--<input type="hidden" id="comment-content" name="comment-content" />--%>

				<input class="input-small" type="text" placeholder="작성자" id="comment-writer" name="comment-writer">
				<input class="input-small" type="password" placeholder="비밀번호" id="comment-writer_pw" name="comment-writer_pw">

				<div class="space-10"></div>

				<div>
					<textarea id="comment-content" name="comment-content" class="form-control" style="width: 100%; height: 150px;"></textarea>
				</div>


				<div class="clearfix form-actions">
					<div class="col-md-offset-5 col-md-5">
						<button class="btn btn-xs btn-info" id="btn-add-comment" type="button">
							<i class="ace-icon fa fa-check bigger-110"></i>
							등록
						</button>
					</div>
				</div>
			</form>


			<div class="timeline-container" id="divTimeline">

			</div>



		</div>
	</div>
</div>

<script type="text/javascript">

	$(document).ready(function() {

		//alert( $('#comment-idx').val() );

		$('#comment-tb_name').val( getParameter("tb_name") );
		$('#comment-tb_idx').val( getParameter("idx") );

		$('#btn-add-comment').click(function() {
			add_comment();
		});

		show_comment_list();
	});

	var show_comment_list = function() {
		getProcess( COMMENT + "/getCommentList", $('#frm-comment').serialize(), function (obj) {

			console.log(obj);

			var innerHtml = "";

			if ( obj.listComment != null ) {

				for (var i=0; i < obj.listComment.length; i++) {
					var item = obj.listComment[i];
//				var time = item.regdate.split(" ")[1];
					var date = new Date(item.regdate);
					innerHtml += '<div class="timeline-items">' +
							'<div class="timeline-item clearfix">' +
							'<div class="timeline-info">' +
							'<span class="label label-info label-sm">' + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds() + '</span>' +
							'</div>' +

							'<div class="widget-box transparent">' +
							'<div class="widget-header widget-header-small">' +
							'<h5 class="widget-title smaller">' +
							'<a class="blue" href="#">' + item.writer + '</a>' +
							'<span class="grey"></span>' +
							'</h5>' +

							'<span class="widget-toolbar no-border">' +
							'<i class="ace-icon fa fa-clock-o bigger-110"></i>' +
							date.getFullYear() + ":" + (date.getMonth() + 1) + ":" + date.getDate() +

							'<div class="pull-right action-buttons">' +

								//'<a href="javascript:modify_comment(' + item.idx + ');">' +
								//	'<i class="ace-icon fa fa-pencil blue bigger-125"></i>' +
								//'</a>' +

							'<a href="javascript:remove_comment(' + item.idx + ');">' +
							'<i class="ace-icon fa fa-times red bigger-125"></i>' +
							'</a>' +
							'</div>' +

							'</span>' +
							'</div>' +

							'<div class="widget-body" style="display: block;">' +
							'<div class="widget-main">' +
							item.content_text.replace(/\n/g, "<br />") +
							'</div>' +
							'</div>' +
							'</div>' +

							'</div>' +
							'</div>';
				}

			}

			//alert( innerHtml );
			$('#divTimeline').html("");
			$('#divTimeline').append( innerHtml );

		} );

	}

	var add_comment = function () {

		getProcess(COMMENT + "/addComment", $('#frm-comment').serialize(), function (obj) {
			if ( obj.status == "OK" ) {
				show_comment_list();

				$('#comment-writer').val("");
				$('#comment-writer_pw').val("");
				$('#comment-content').val("");
			}
		});

	}

	var remove_comment = function ( idx ) {

		bootbox.prompt("작성시 기재한 비밀번호를 입력하세요.", function(result) {

			if ( result === null ) {
				return;
			}

			getProcess(COMMENT + "/getCommentOne", { "comment-idx" : idx, "comment-tb_name" : $('#comment-tb_name').val() }, function (objPw) {

				if ( objPw.status == "OK" ) {
					//alert( obj.board );
					var item = objPw.comment;

					if ( result == item.writer_pw ) {

						getProcess(COMMENT + "/removeComment", { "comment-idx" : idx, "comment-tb_name" : $('#comment-tb_name').val() }, function (objRemove) {
							if ( objRemove.status == "OK" ) {
								show_comment_list();
							}
						} );

					} else {

						showAlert("비밀번호가 일치하지 않습니다.", "");
						return;
					}
				} else {
					showAlert(objPw.msg, objPw.status);
				}

			});

		});

	}

</script>
