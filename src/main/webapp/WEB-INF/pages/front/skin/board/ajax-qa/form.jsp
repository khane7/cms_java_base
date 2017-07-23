<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-22
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- write -->
<form class="form-horizontal" role="form" id="frm" name="frm" method="POST">
<input type="hidden" id="idx" name="idx" value="${ idx }" />
<input type="hidden" id="pidx" name="pidx" value="${ pidx }" />
<input type="hidden" id="writer_key" name="writer_key" value="${ sessionScope.session_user.user_id}" />
<input type="hidden" id="tb_name" name="tb_name" value="" />
<input type="hidden" id="content" name="content" />
<input type="hidden" id="opt1" name="opt1" value="" />
<input type="hidden" id="file_idxs" name="file_idxs" />
<table class="tblA_write">
	<colgroup>
		<col width="20%;">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row"><label for="title">Title</label></th>
		<td>
			<div class="form-subject">
				<input type="text" name="title" id="title" class="intA" style="width:550px;">
			</div>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="writer">Writer</label></th>
		<td>
			<div class="form-subject">
				<input type="text" name="writer" id="writer" class="intA" style="width:150px;" value="${ sessionScope.session_user.user_name }" readonly>
			</div>
		</td>
	</tr>
	<c:if test="${ beanBBS.is_secret == 'Y'}">
		<tr>
			<th scope="row"><label for="is_secret">secret</label></th>
			<td>
				<div class="form-subject text-left">
					<input type="checkbox" name="is_secret" id="is_secret" class="checkbox" value="Y" >
				</div>
			</td>
		</tr>
	</c:if>
	<c:if test="${ beanBBS.is_nologin == 'Y' || beanBBS.is_secret == 'Y'}">
		<tr>
			<th scope="row"><label for="writer_pw">Password</label></th>
			<td>
				<div class="form-subject">
					<input type="text" name="writer_pw" id="writer_pw" class="intA" style="width:150px;">
				</div>
			</td>
		</tr>
	</c:if>

	<tr>
		<th scope="row"><label for="ifr-editor">Content</label></th>
		<td>
			<%--<textarea name="cont" id="cont" class="sty1"></textarea>--%>
			<iframe id="ifr-editor" name="ifr-editor" src="${pageContext.request.contextPath}/board/showEditor" class="sty1" width="99%" height="460"></iframe>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="thumbnail">thumbnail</label></th>
		<td>
			<input type="file" name="thumbnail" id="thumbnail"/>
		</td>
	</tr>
	<tr style="<c:if test="${ beanBBS.is_file == 'N' }">display:none;</c:if>">
		<th scope="row"><label for="ifr-uploader">The attached file</label></th>
		<td>
			<%--<textarea name="cont" id="cont" class="sty1"></textarea>--%>
			<iframe id="ifr-uploader" name="ifr-uploader" src="${pageContext.request.contextPath}/file/showUploader" class="sty1" width="99%" height="260"></iframe>
		</td>
	</tr>
	</tbody>
</table>
<div class="btn_area text-center">
	<a href="javascript:saveBoard();" title="확인" class="btn btn-default"><span class="button">Ok</span></a>
	<a href="javascript:goList();" title="취소" class="btn btn-default"><span class="button">Cancel</span></a>
</div>
</form>


<script type="text/javascript">

	var idx = "";
	var tb_name = "";
	$(document).ready(function() {

		tb_name = getParameter("tb_name");
		idx = $('#idx').val();

		$('#tb_name').val( tb_name );

		$('#btn-submit').click(function() {
			saveBoard();
		});


		if ( idx != "" ) {

			getProcess4Front(  contextPath + "/board/getBoardOne", { "tb_name" : tb_name, "idx" : idx }, function (data) {
				if ( data.status == "OK" ) {
					//alert( obj.board );
					var item = data.beanBoard;

					$('#idx').val( item.idx );
					$('#pidx').val( item.pidx );
					$('#content').val( item.content_html );
					$('#ifr-editor').contents().find('#editor').html( item.content_html );
					$('#ifr-uploader').prop("src", contextPath + "/file/showUploader?tb_name=" + tb_name + "&idx=" + idx );

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

					$('#editor').html( item.content_html );
				} else {
					showAlert(data.msg);
				}

			});
		} else {
			$('#is_use').prop("checked", "checked");
		}



		/*$('html').keyup(function (e) {
			if (e.keyCode == 8) {
				goList();
			}
		});*/

	});


	var saveBoard = function() {

		$('#content').val( $('#ifr-editor').contents().find('#editor').html() );
		$('#file_idxs').val( $('#ifr-uploader').contents().find('#file_idxs').val() );

		if ( $('#title').val().trim() == "" ) {
			alert("제목을 입력해주세요.");
			return;
		}

		$("#frm").submit(function(event){
			//disable the default form submission
			event.preventDefault();

			var fd = new FormData($(this)[0]);
			console.log(fd);

			$.ajax({
				url: contextPath + "/board/setBoardOne",
				type: "POST",
				data: fd,
				async: false,
				cache: false,
				contentType: false,
				processData: false,
				success:  function(data){

					if (data.status == "OK") {

						getProcess4Page(contextPath + "/board/list?tb_name=" + tb_name, data, function (data) {
							$('#div-board').html( data );
						});

					} else {
						alert(data.msg);
					}

					/* alert(data); if json obj. alert(JSON.stringify(data));*/
				}
			});

			return false;

		});

		$("form#frm").submit();

		/*var fd = new FormData($('#frm')[0]);
		getProcess4Front( contextPath + "/board/setBoardOne", fd, function (data) {

			if (data.status == "OK") {

				getProcess4Page(contextPath + "/board/list?tb_name=" + tb_name, data, function (data) {
					$('#div-board').html( data );
				});

			} else {
				alert(data.msg);
			}

		} );*/
	}


	var goList = function () {

		if ( idx != "" ) {

			var data = {
				"idx" : idx,
				"tb_name" : tb_name,
				"pageNum" : pageNum,
				"search_key" : search_key,
				"search_val" : search_val
			}
			getProcess4Page(contextPath + "/board/view", data, function (data) {
				$('#div-board').html( data );
			});
		} else {

			var data = {
				"tb_name" : tb_name,
				"pageNum" : pageNum,
				"search_key" : search_key,
				"search_val" : search_val
			}
			getProcess4Page(contextPath + "/board/list", data, function (data) {
				$('#div-board').html( data );
			});
		}
	}


</script>
