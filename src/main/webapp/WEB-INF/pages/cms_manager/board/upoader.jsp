<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- page specific plugin styles -->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/bootstrap/assets/css/jquery-ui.custom.css"/>

<div class="space-20"></div>

<input type="hidden" id="file_idxs" name="file_idxs"/>


<div class="widget-box" id="div-file-list">
	<div class="widget-header">
		<h4 class="widget-title">첨부파일 목록</h4>

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

			<div class="form-group">
				<div class="col-xs-12">

					<table class="table table-striped table-bordered table-hover">
						<tbody id="tr-files-list">
							<thead>
								<td>thumbnail</td>
								<td>파일명</td>
								<td>용량</td>
								<td>삭제</td>
							</thead>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>
</div>

<div class="space-20"></div>

<div class="widget-box">
	<div class="widget-header">
		<h4 class="widget-title">파일첨부</h4>

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

			<div class="form-group">
				<div class="col-xs-12">
					<input multiple="" type="file" id="id-input-file"/>

					<!-- /section:custom/file-input -->
				</div>
			</div>

			<!-- #section:custom/file-input.filter -->
			<label>
				<%--<input type="checkbox" name="file-format" id="id-file-format" class="ace"/>--%>
				<span class="lbl"> 썸네일 사용시, 첫번째 파일이 썸네일 이미지로 등록됩니다.</span>
			</label>

			<!-- /section:custom/file-input.filter -->
		</div>
	</div>
</div>


<script type="text/javascript">

	var tb_name = getParameter("tb_name");
	var tb_idx = getParameter("idx");
	$(document).ready(function () {

		$('.remove').click(function () {
			$('#id-input-file').ace_file_input('reset_input');
		});

		getFileList4tb();

	});

	$('#id-input-file').ace_file_input({
		style: 'well',
		btn_choose: 'Drop files here or click to choose',
		btn_change: null,
		no_icon: 'ace-icon fa fa-cloud-upload',
		droppable: true,
		allowExt: null,
		allowMime: null,
		//maxSize: 100000000,

		thumbnail: 'small'//large | fit | small,
		//,icon_remove:null//set null, to hide remove/reset button
		/**,before_change:function(files, dropped) {
		//Check an example below
		//or examples/file-upload.html
		return true;
	}*/
		/**,before_remove : function() {
		return true;
	}*/
		,
		preview_error: function (filename, error_code) {
			//name of the file that failed
			//error_code values
			//1 = 'FILE_LOAD_FAILED',
			//2 = 'IMAGE_LOAD_FAILED',
			//3 = 'THUMBNAIL_FAILED'
			alert(error_code);
		}

	}).on('change', function (e) {
		console.log($(this).data('ace_input_files'));
		console.log($(this).data('ace_input_method'));
		//$obj = getProcess("/base/uploader/upload", $(this).data('ace_input_files') );

		var $form = $(document);
		//you can have multiple files, or a file input with "multiple" attribute
		//var file_input = $form.find('input[type=file]');
		var file_input = $(this);
		var upload_in_progress = false;

		e.preventDefault();

		var files = $(this).data('ace_input_files');
		if (!files || files.length == 0) return false;//no files selected

		var deferred;
		if ("FormData" in window) {
			//for modern browsers that support FormData and uploading files via ajax
			//we can do >>> var formData_object = new FormData($form[0]);
			//but IE10 has a problem with that and throws an exception
			//and also browser adds and uploads all selected files, not the filtered ones.
			//and drag&dropped files won't be uploaded as well

			//so we change it to the following to upload only our filtered files
			//and to bypass IE10's error
			//and to include drag&dropped files as well
			formData_object = new FormData();//create empty FormData object

			//and then add files
			//$(document).find('input[type=file]').each(function(){
			var field_name = $(this).attr('name');
			//for fields with "multiple" file support, field name should be something like `myfile[]`

			var files = $(this).data('ace_input_files');
			if (files && files.length > 0) {
				for (var f = 0; f < files.length; f++) {
					//formData_object.append(field_name, files[f]);
					formData_object.append("file[]", files[f], files[f].name);
					console.log(formData_object);
					console.log(files[f]);
				}
			}
			//});

			/*
			 var xhr = new XMLHttpRequest;
			 xhr.open('POST', '/base/uploader/upload', true);
			 xhr.send(formData_object);
			 return;
			 */


			upload_in_progress = true;
			file_input.ace_file_input('loading', true);

			deferred = $.ajax({
				url: FILE + "/upload",
				type: "post",
				processData: false,//important
				contentType: false,//important
				dataType: 'json',
				data: formData_object
				/**
				 ,
				 xhr: function() {
				var req = $.ajaxSettings.xhr();
				if (req && req.upload) {
					req.upload.addEventListener('progress', function(e) {
						if(e.lengthComputable) {
							var done = e.loaded || e.position, total = e.total || e.totalSize;
							var percent = parseInt((done/total)*100) + '%';
							//percentage of uploaded file
						}
					}, false);
				}
				return req;
			},
				 beforeSend : function() {
			},
				 success : function() {
			}*/
			})

		} else {
			//for older browsers that don't support FormData and uploading files via ajax
			//we use an iframe to upload the form(file) without leaving the page

			deferred = new $.Deferred //create a custom deferred object

			var temporary_iframe_id = 'temporary-iframe-' + (new Date()).getTime() + '-' + (parseInt(Math.random() * 1000));
			var temp_iframe =
					$('<iframe id="' + temporary_iframe_id + '" name="' + temporary_iframe_id + '" \
				frameborder="0" width="0" height="0" src="about:blank"\
				style="position:absolute; z-index:-1; visibility: hidden;"></iframe>')
							.insertAfter($form)

			$form.append('<input type="hidden" name="temporary-iframe-id" value="' + temporary_iframe_id + '" />');

			temp_iframe.data('deferrer', deferred);
			//we save the deferred object to the iframe and in our server side response
			//we use "temporary-iframe-id" to access iframe and its deferred object

			$form.attr({
				method: 'POST',
				enctype: 'multipart/form-data',
				target: temporary_iframe_id //important
			});

			upload_in_progress = true;
			file_input.ace_file_input('loading', true);//display an overlay with loading icon
			$form.get(0).submit();


			//if we don't receive a response after 30 seconds, let's declare it as failed!
			ie_timeout = setTimeout(function () {
				ie_timeout = null;
				temp_iframe.attr('src', 'about:blank').remove();
				deferred.reject({'status': 'fail', 'message': 'Timeout!'});
			}, 30000);
		}


		////////////////////////////
		//deferred callbacks, triggered by both ajax and iframe solution
		deferred
				.done(function (result) {//success
					//format of `result` is optional and sent by server
					//in this example, it's an array of multiple results for multiple uploaded files
					var message = '';
					var idxs = new Array;
					if ( result.status == "OK" ) {

						var fileList = result.beanFileList;

						for (var i = 0; i < fileList.length; i++) {
							if ( fileList[i].success == true) {
								idxs[i] = fileList[i].idx;
								message += "File successfully saved. Thumbnail is: " + fileList[i].web_path;
							}
							else {
								message += "File not saved. " + result.message;
							}
							message += "\n";
						}

					}
					//alert(message + idxs.join(","));
					if ( $('#file_idxs').val() != "" ) {
						$('#file_idxs').val( $('#file_idxs').val() + "," + idxs.join(","));
					} else {
						$('#file_idxs').val( idxs.join(","));
					}

					//alert($('#file_idxs').val());

					getFileList4Idx();
				})
				.fail(function (result) {//failure
					alert(result.status + ":::::::::::::There was an error");
					console.log(result.responseText);
				})
				.always(function () {//called on both success and failure
					// if(ie_timeout) clearTimeout(ie_timeout)
					ie_timeout = null;
					upload_in_progress = false;
					file_input.ace_file_input('loading', false);
				});

		deferred.promise();

	});


	//dynamically change allowed formats by changing allowExt && allowMime function
	$('#id-file-format').removeAttr('checked').on('change', function () {
		var whitelist_ext, whitelist_mime;
		var btn_choose
		var no_icon
		if (this.checked) {
			btn_choose = "Drop images here or click to choose";
			no_icon = "ace-icon fa fa-picture-o";

			whitelist_ext = ["jpeg", "jpg", "png", "gif", "bmp"];
			whitelist_mime = ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"];
		}
		else {
			btn_choose = "Drop files here or click to choose";
			no_icon = "ace-icon fa fa-cloud-upload";

			whitelist_ext = null;//all extensions are acceptable
			whitelist_mime = null;//all mimes are acceptable
		}
		var file_input = $('#id-input-file');
		file_input
				.ace_file_input('update_settings',
				{
					'btn_choose': btn_choose,
					'no_icon': no_icon,
					'allowExt': whitelist_ext,
					'allowMime': whitelist_mime
				})
		file_input.ace_file_input('reset_input');

		file_input
				.off('file.error.ace')
				.on('file.error.ace', function (e, info) {
					//console.log(info.file_count);//number of selected files
					//console.log(info.invalid_count);//number of invalid files
					//console.log(info.error_list);//a list of errors in the following format

					//info.error_count['ext']
					//info.error_count['mime']
					//info.error_count['size']

					//info.error_list['ext']  = [list of file names with invalid extension]
					//info.error_list['mime'] = [list of file names with invalid mimetype]
					//info.error_list['size'] = [list of file names with invalid size]


					/**
					 if( !info.dropped ) {
			//perhapse reset file field if files have been selected, and there are invalid files among them
			//when files are dropped, only valid files will be added to our file array
			e.preventDefault();//it will rest input
		}
					 */


					//if files have been selected (not dropped), you can choose to reset input
					//because browser keeps all selected files anyway and this cannot be changed
					//we can only reset file field to become empty again
					//on any case you still should check files with your server side script
					//because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
				});

	});

	var deleteFile = function (idx) {
		getProcess(FILE + "/deleteFile", {"idx": idx}, function(data) {

			if ( data.status == "OK" ) {
				$('#file-' + idx).empty();

				var file_idxs = $('#file_idxs').val();
				file_idxs = file_idxs.replace(idx, "");

				$('#file_idxs').val(file_idxs);
			}
		});

	}

	var getFileList4tb = function () {

		//alert(tb_name + "==" + tb_idx);
		if ( getParameter("tb_name") != "" && getParameter("idx") != "") {

			var objResult = getProcess(FILE + "/getFileList", {
				"tb_name": getParameter("tb_name"),
				"tb_idx": getParameter("idx")
			}, function ( objResult ) {

				//tr-files-list
				for (var i = 0; i < objResult.beanFileList.length; i++) {
					file = objResult.beanFileList[i];
					$('#tr-files-list').append(
							"<tr id='file-" + file.idx + "'>" +
								"<td><input type='radio' class='rb-thumbnail' name='rb-thumbnail' value='" + file.idx + "' onclick='javascript:setThumbail(" + file.idx + ");'></td>" +
								"<td>" + file.filename + "</td>" +
								"<td>" + file.filesize / 100 + " kb</td>" +
								"<td><button type='button' class='btn btn-xs btn-danger' onclick='javascript:deleteFile(" + file.idx + ");'><span><i class='ace-icon fa fa-ban bigger-110'></i>삭제</span></button></td>" +
							"</tr>"
					);
				}
			});

		}

	}

	var getFileList4Idx = function () {

		var file_idxs = $('#file_idxs').val();

		getProcess(FILE + "/getFiles", {"file_idxs": file_idxs}, function(data) {
			if ( data.status == "OK" ) {
				var files = data.beanFileList;
				for (var i = 0; i < files.length; i++) {
					file = files[i];
					$('#tr-files-list').append(
							"<tr id='file-" + file.idx + "'>" +
								"<td><input type='radio' class='rb-thumbnail' name='rb-thumbnail' value='" + file.idx + "' onclick='javascript:setThumbail(" + file.idx + ");'></td>" +
								"<td>" + file.filename + "</td>" +
								"<td>" + file.filesize / 1000 + " kb</td>" +
								"<td><button type='button' class='btn btn-xs btn-danger' onclick='javascript:deleteFile(" + file.idx + ");'><span><i class='ace-icon fa fa-ban bigger-110'></i>삭제</span></button></td>" +
							"</tr>"
					);
				}
			}
		});

	}


	var setThumbail = function (idx) {

		$('#opt1').val(idx);

	}


</script>