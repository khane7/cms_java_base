<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-25
  Time: 오후 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<form id="frm-comment" name="frm-comment">
<input type="hidden" id="comment-tb_name" name="comment-tb_name" />
<input type="hidden" id="comment-tb_idx" name="comment-tb_idx" />
<input type="hidden" id="comment-writer" name="comment-writer" value="${ sessionScope.session_user.user_name }" />
<input type="hidden" id="comment-writer_key" name="comment-writer_key" value="${ sessionScope.session_user.user_id }" />
<input type="hidden" id="comment-writer_pw" name="comment-writer_pw" />
<div class="reply-wrap">

	<c:if test="${ sessionScope.session_user.user_id != null }">
	<h4 class="title">댓글<%-- <span class="cont">총 <mark>10000</mark>개</span>--%></h4>
	<div class="write-area">
		<div class="write">
			<textarea class="textarea" id="comment-content" name="comment-content"></textarea>
			<a class="btn" href="javascript:addComment();">Submit</a>
		</div>
	</div>
	</c:if>
	<div class="reply-area">
		<ul id="ul-comment-list">
			<%--<li>
				<div class="name">홍길동</div>
				<div class="my-btn"><a href="#">수정</a><a href="#">삭제</a></div>
				<div class="pwbox" style="display: none;">비밀번호
					<input style="width: 100px;" type="text"> <a class="btn btn-sm" href="">확인</a>
					<a class="btn btn-sm" href="">취소</a></div>
				<p class="cnt">지금부터 검증된 무료이미지 사이트를 알려드립니다. 물론 회원가입없이 무료로 이미지 다운로드 가능하지만 각 사이트마다 저작권
					내용이 틀립니다. 꼼꼼히 체크하세요....</p>
			</li>--%>
		</ul>
	</div>
</div>
</form>


<div id="div-comment-insert" style="display: none;">
	<h4 class="title">Reply</h4>
	<div class="write-area">
		<div class="write">
			<textarea class="textarea"></textarea>
			<a class="btn" href="#">Submit</a>
		</div>
	</div>
</div>



<div id="div-comment-list" style="display: none;">
	<li>
		<div class='name'>{COMMENT_WRITER}</div>
		<div class='my-btn'><a href='#'>Modify</a><a href='#'>Delete</a></div>
		<div class='pwbox' style='display: none;'>Password
			<input style='width: 100px;' type='text'> <a class='btn btn-sm' href=''>OK</a>
			<a class='btn btn-sm' href=''>Cancle</a></div>
		<p class='cnt'>{COMMENT_CONTENT}</p>
	</li>
</div>


<script type="text/javascript">

	var tb_idx = "${ tb_idx }";
	var tb_comment_name = getParameter("tb_name");

	$(document).ready(function () {

		$('#comment-tb_idx').val(tb_idx);
		$('#comment-tb_name').val(tb_comment_name);

	});


	var getCommentList = function (tb_comment_name_, tb_idx_) {

		var data = {
			"comment-tb_name" : tb_comment_name_,
			"comment-tb_idx" : tb_idx_
		}

		getProcess4Front(contextPath + "/cms_manager/comment/getCommentList", data, function (data) {

			if (data.status == "OK") {

				if ( data.listComment != undefined && data.listComment.length > 0) {
					showCommentList(data.listComment);
				}

			} else {
				alert(data.msg);
			}

		});

	}


	var showCommentList = function (listComment) {

		var listHtml = "";
		$('#ul-comment-list').html("");
		for ( var i = 0; i < listComment.length; i++) {

			var tempComment = listComment[i];
			var tempHtml = $('#div-comment-list').html();

			var controlHtml = "";
			if ( "${ sessionScope.session_user.user_id }" != "" && tempComment.writer_key == "${ sessionScope.session_user.user_id }" ) {
				controlHtml = "<div class='my-btn'><!--<a href='#'>수정</a>--><a href='javascript:remove_comment(" + tempComment.idx + ");'>Del</a></div>";
			}

			tempHtml = "<li>" +
									"<div class='name'>" + tempComment.writer + "</div>" +
									controlHtml +
									"<div class='pwbox' style='display: none;'>Password" +
									"<input style='width: 100px;' type='text'> <a class='btn btn-sm' href=''>OK</a>" +
									"<a class='btn btn-sm' href=''>Cancle</a></div>" +
									"<p class='cnt'>" + tempComment.content_text + "</p>" +
								"</li>";

			$('#ul-comment-list').append(tempHtml);
		}

	}

	var showCommentInput = function (  targetId ) {

	}


	var addComment = function () {
		getProcess4Front( contextPath + "/cms_manager/comment/addComment", $('#frm-comment').serialize(), function (obj) {
			if ( obj.status == "OK" ) {

				$('#comment-content').val("");
				getCommentList(tb_comment_name, tb_idx);
			}
		});
	}


	var remove_comment = function ( idx ) {

		if ( confirm("It is deleted now.") ) {

			getProcess4Front(contextPath + "/cms_manager/comment/removeComment", { "comment-idx" : idx, "comment-tb_name" : $('#comment-tb_name').val() }, function (objRemove) {
				if ( objRemove.status == "OK" ) {
					$('#ul-comment-list').html("");
					getCommentList(tb_comment_name, tb_idx);
				}
			} );

		}

	}



	getCommentList(tb_comment_name, tb_idx);

</script>