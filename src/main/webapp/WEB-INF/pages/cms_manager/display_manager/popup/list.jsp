<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-03-16
  Time: 오후 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="/cms_manager/getManagerTop"/>


<div class="page-header">
	<h1>
		팝업 관리
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			팝업 관리기능 제공
		</small>
	</h1>
</div>


<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->

		<div>
			<label for="sel-popup">팝업 선택</label>

			<select class="form-control" id="sel-popup" name="sel-popup">
				<option value=""></option>
			</select>
		</div>

		<div class="space-20"></div>


		<form id="frm" name="frm">
		<input type="hidden" id="idx" name="idx" value="0">
		<input type="hidden" id="img_main_data" name="img_main_data" value="">

		<div class="widget-box">
			<div class="widget-header">
				<h4 class="widget-title">팝업 상세내용</h4>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<div>
						<label for="title">팝업명</label>
						<input type="text" class="form-control" id="title" name="title" value="">
					</div>

					<hr>

					<div>
						<label for="title">배너 미리보기</label>
						<div id="img_main_preview"></div>
					</div>

					<hr>

					<div>
						<label for="title">배너 이미지</label>
						<input type="file" class="form-control file-image" id="img_main" name="img_main" value="" onchange="javascript:encodeImageFileAsURL('img_main');" />
					</div>

					<hr>

					<div>
						<label for="title">링크</label>
						<input type="text" class="form-control" id="url" name="url" value="">
					</div>

					<hr>

					<div class="form-group">
						<label>팝업 윈도우 크기</label>
						<div>
							가로 크기 : <input class="input" id="size_x" name="size_x" type="text" placeholder="가로 크기" value="0">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							세로 크기 : <input class="input" id="size_y" name="size_y" type="text" placeholder="세로 크기" value="0">
						</div>
					</div>


					<hr>

					<div class="form-group">
						<label>링크 버튼 위치</label>
						<div>
							X : <input class="input" id="link_position_x" name="link_position_x" type="text" placeholder="position X" value="0">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							Y : <input class="input" id="link_position_y" name="link_position_y" type="text" placeholder="position Y" value="0">
						</div>
					</div>
					<div class="form-group">
						<label>링크 크기</label>
						<div>
							X : <input class="input" id="link_size_x" name="link_size_x" type="text" placeholder="가로 크기" value="0">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							Y : <input class="input" id="link_size_y" name="link_size_y" type="text" placeholder="세로 크기" value="0">
						</div>
					</div>

					<hr>

					<div class="form-group">
						<label>닫기 버튼 위치</label>
						<div>
							X : <input class="input" id="close_position_x" name="close_position_x" type="text" placeholder="position X" value="0">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							Y : <input class="input" id="close_position_y" name="close_position_y" type="text" placeholder="position Y" value="0">
						</div>
					</div>

					<hr>

					<div class="form-group">
						<label>사용여부</label>
						<div class="radio">
							<label>
								<input id="is_use_Y" name="is_use" class="ace ace-switch ace-switch-5" type="radio" value="Y">
								<span class="lbl">사용</span>
							</label>
						</div>
						<div class="radio">
							<label>
								<input id="is_use_N" name="is_use" class="ace ace-switch ace-switch-5" type="radio" value="N">
								<span class="lbl">사용안함</span>
							</label>
						</div>
					</div>


					<div class="form-group">
						<label>저장일자</label>
						<div id="div-regdate">
						</div>
					</div>


					<!-- /section:plugins/input.chosen -->
				</div>
			</div>
		</div>
		</form>


		<div class="cols-xs-12 align-right">
			<button type="button" class="btn btn-info btn-sm" id="btn-preview">미리보기</button>
			<button type="button" class="btn btn-default btn-sm" id="btn-add">추가</button>
			<button type="button" class="btn btn-primary btn-sm" id="btn-save">저장</button>
			<button type="button" class="btn btn-danger btn-sm" id="btn-delete">삭제</button>
		</div>


		<!-- PAGE CONTENT ENDS -->
	</div>
	<!-- /.col -->
</div>


<script type="text/javascript">

	$(document).ready(function () {


		$('#sel-popup').change(function () {
			if ( $(this).val() == "" ) {
				$('#btn-add').click();
			} else {
				getPopupOne( $(this).val() );
			}
		});


		$('#btn-preview').click(function () {

			if ( $('#idx').val() == "0" ) {
				showAlert( "선택된 팝업이 없습니다.", "Error");
				return;
			}

			window.open( POPUP + "/preview?idx=" + $('#idx').val(), "popup-preview", "width=100,height=100");

		});



		$('#btn-add').click(function () {
			$('#idx').val("0");
			$('#title').val("");

			$('#url').val("");

			$('#img_main_data').val("");
			$('#img_main_preview').html("");
			$('#img_main').val("");

			$('#size_x').val("");
			$('#size_y').val("");
			$('#link_position_x').val("");
			$('#link_position_y').val("");
			$('#link_size_x').val("");
			$('#link_size_y').val("");
			$('#close_position_x').val("");
			$('#close_position_y').val("");

			$('#is_use_N').prop("checked", "checked");

		});


		$('#btn-save').click(function () {

			if ( $('#title').val() == "" ) {
				showAlert( "최소정보가 없습니다.", "Error");
				return;
			}

			getProcess( POPUP + "/setPopupOne", $('#frm').serialize(), function (data) {

				if ( data.status == "OK" ) {
					//$('#btn-add').click();
					showPopupList();
				} else {
					showAlert(data.msg, data.status);
				}
			});

		});


		$('#btn-delete').click(function () {

			if ( $('#idx').val() == "0" ) {
				showAlert( "선택된 팝업이 없습니다.", "Error");
				return;
			}

			showAlert("삭제하시겠습니까?", "Delete", true, "deletePopup();" );

		});

		showPopupList();

	});


	var deletePopup = function () {
		getProcess( POPUP + "/deletePopup", $('#frm').serialize(), function (data) {

			if (data.status == "OK") {
				$('#btn-add').click();
				showPopupList();
			}
		});
	}


	var showPopupList = function () {

		getProcess( POPUP + "/getPopupList", null, function (data) {

			if ( data.status == "OK" ) {

				var tempHtml = "";
				var popupList = data.popupList;

				$('#sel-popup').html("");
				tempHtml += "<option value=''>선택</option>";
				for ( var i = 0; i < popupList.length; i++ ) {
					tempHtml += "<option value='" + popupList[i].idx + "'>" + popupList[i].title + "</option>";
				}
				$('#sel-popup').append(tempHtml);

			} else {
				showAlert(data.msg, data.status);
			}
		});
	}


	var getPopupOne = function (idx) {

		getProcess( POPUP + "/getPopupOne", { "idx" : idx }, function (data) {

			if ( data.status == "OK" ) {

				$('#btn-add').click();

				var popup = data.popup;

				$('#idx').val(popup.idx);
				$('#title').val(popup.title);

				$('#url').val(popup.url);

				$('#img_main_data').val(popup.img_main);
				$('#img_main_preview').html("<img src='" + popup.img_main + "' />");
				$('#img_main').val("");

				$('#size_x').val(popup.size_x);
				$('#size_y').val(popup.size_y);
				$('#link_position_x').val(popup.link_position_x);
				$('#link_position_y').val(popup.link_position_y);
				$('#link_size_x').val(popup.link_size_x);
				$('#link_size_y').val(popup.link_size_y);
				$('#close_position_x').val(popup.close_position_x);
				$('#close_position_y').val(popup.close_position_y);

				if ( popup.is_use == "Y" ) {
					$('#is_use_Y').prop("checked", "checked");
					$('#is_use_N').prop("checked", false);
				} else {
					$('#is_use').prop("checked", false);
					$('#is_use').prop("checked", "checked");
				}

				var regdate = new Date(popup.regdate);
				//alert(regdate.getFullYear());
				$('#div-regdate').text( regdate.getFullYear() + "-" + regdate.getMonth() + "-" + regdate.getDate() + " " + regdate.getHours() + ":" + regdate.getMinutes() + ":" + regdate.getSeconds() );

			} else {
				showAlert(data.msg, data.status);
			}
		});
	}


</script>


<jsp:include page="/cms_manager/getManagerBottom"/>