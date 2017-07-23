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
		배너 관리
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			배너 관리기능 제공
		</small>
	</h1>
</div>


<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->

		<div>
			<label for="sel-banner">배너 선택</label>

			<select class="form-control" id="sel-banner" name="sel-banner">
				<option value=""></option>
			</select>
		</div>

		<div class="space-20"></div>


		<form id="frm" name="frm">
		<input type="hidden" id="idx" name="idx" value="0">
		<input type="hidden" id="banner_img_data" name="banner_img_data" value="">

		<div class="widget-box">
			<div class="widget-header">
				<h4 class="widget-title">배너 상세내용</h4>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<div>
						<label for="title">배너명</label>
						<input type="text" class="form-control" id="title" name="title" value="">
					</div>

					<hr>

					<div>
						<label for="title">링크</label>
						<input type="text" class="form-control" id="link" name="link" value="">
					</div>

					<hr>

					<div>
						<label for="title">연결 방식</label>
						<select class="form-control" id="link_type" name="link_type">
							<option value="_blank">_blank</option>
							<option value="_self">_self</option>
						</select>
					</div>

					<hr>

					<div>
						<label for="title">배너 미리보기</label>
						<div id="banner_img_preview"></div>
					</div>

					<hr>

					<div>
						<label for="title">배너 이미지</label>
						<input type="file" class="form-control file-image" id="banner_img" name="banner_img" value="" onchange="javascript:encodeImageFileAsURL('banner_img');" />
					</div>

					<!-- /section:plugins/input.chosen -->
				</div>
			</div>
		</div>
		</form>


		<div class="cols-xs-12 align-right">
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


		$('#sel-banner').change(function () {
			if ( $(this).val() == "" ) {
				$('#btn-add').click();
			} else {
				getBannerOne( $(this).val() );
			}
		});


		$('#btn-add').click(function () {
			$('#idx').val("0");
			$('#title').val("");
			$('#link').val("http://");
			$('#link_type').val("_blank");
			$('#banner_img_data').val("");
			$('#banner_img_preview').html("");
			$('#banner_img').val("");
		});


		$('#btn-save').click(function () {

			if ( $('#title').val() == "" ) {
				showAlert( "최소정보가 없습니다.", "Error");
				return;
			}

			getProcess( BANNER + "/setBannerOne", $('#frm').serialize(), function (data) {

				if ( data.status == "OK" ) {
					$('#btn-add').click();
					showBannerList();
				} else {
					showAlert(data.msg, data.status);
				}
			});

		});


		$('#btn-delete').click(function () {

			if ( $('#idx').val() == "0" ) {
				showAlert( "선택된 배너가 없습니다.", "Error");
				return;
			}

			showAlert("삭제하시겠습니까?", "Delete", true, function () {
				getProcess( BANNER + "/deleteBanner", $('#frm').serialize(), function (data) {

					if (data.status == "OK") {
						$('#btn-add').click();
						showBannerList();
					}
				});
			});

		});

		showBannerList();

	});


	var showBannerList = function () {

		getProcess( BANNER + "/getBannerList", null, function (data) {

			if ( data.status == "OK" ) {

				var tempHtml = "";
				var bannerList = data.bannerList;

				$('#sel-banner').html("");
				tempHtml += "<option value=''>선택</option>";
				for ( var i = 0; i < bannerList.length; i++ ) {
					tempHtml += "<option value='" + bannerList[i].idx + "'>" + bannerList[i].title + "</option>";
				}
				$('#sel-banner').append(tempHtml);

			} else {
				showAlert(data.msg, data.status);
			}
		});
	}


	var getBannerOne = function (idx) {

		getProcess( BANNER + "/getBannerOne", { "idx" : idx }, function (data) {

			if ( data.status == "OK" ) {

				$('#btn-add').click();

				var banner = data.banner;
				$('#idx').val( banner.idx );
				$('#title').val( banner.title );
				$('#link').val( banner.link );
				$('#link_type').val( banner.link_type );
				$('#banner_img_data').val( banner.banner_img );
				$('#banner_img_preview').html("<img src='" + banner.banner_img + "' />");

			} else {
				showAlert(data.msg, data.status);
			}
		});
	}


</script>


<jsp:include page="/cms_manager/getManagerBottom"/>