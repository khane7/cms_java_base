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


<!-- view -->

<div class="tbl_view">
	<div class="sbject">
		<div class="sbj">
			${ beanBoard.title }<span>${ beanBoard.writer }&nbsp;&nbsp; | &nbsp;&nbsp;<fmt:formatDate value="${ beanBoard.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
		</div>
		<div class="count">hits ${ beanBoard.views }</div>
	</div>
	<div class="cnt">
		<c:if test="${ beanBBS.is_file == 'Y'}">
			<div class="attach">
				<span>The attached file : </span>

				<c:forEach var="file" items="${ beanFileList }" varStatus="status">
					<pre><a href="${pageContext.request.contextPath}/cms_manager/file/download?file_idx=${ file.idx }" target="_blank">${ file.filename }</a></pre>
				</c:forEach>

			</div>
		</c:if>
		<p>${ beanBoard.content_html }</p>

	</div>
	<%--<div class="listup_area">
		<p><span>▲ 이전글 &nbsp;&nbsp;&nbsp;</span> 없음</p>

		<p><span>▼ 다음글 &nbsp;&nbsp;&nbsp;</span>
			<a href="/offers/news.php?page_code=board_read&amp;table=news&amp;b_field=&amp;b_keyword=&amp;page=1&amp;b_cid=&amp;bid=49">호텔라온제나.
				광역시장애인합동결혼식 후원</a></p>
	</div>--%>
	<div class="btn_area clearfix">
		<p class="fl">
			<a href="javascript:goList();" title="답변" class="btn btn-default"><span class="button">List</span></a>
		</p>

		<!-- <p class="fr">
			<%--<a href="#" title="답변" class="btn btn-default"><span class="button">답변</span></a>--%>
			<c:if test="${ beanBBS.is_nologin == 'Y' || sessionScope.session_user.user_id != null }">
				<c:if test="${ beanBBS.write_level <= sessionScope.session_user.level }">
					<a href="javascript:goReply(${beanBoard.pidx}, '${beanBoard.tree_level}' );" title="답변" class="btn btn-default"><span class="button">Answer</span></a>
				</c:if>
			</c:if>

			-- 비로그인 자의 게시물일 경우 --
			<c:if test="${ beanBoard.writer_key eq '' }">
				<a href="javascript:popPassword('modify', ${beanBoard.idx});" title="수정" class="btn btn-default"><span class="button">Modify </span></a>
				<a href="javascript:popPassword('delete', ${beanBoard.idx});" title="삭제" class="btn btn-default"><span class="button">Delete</span></a>
			</c:if>

			-- 로그인자의 게시물일 경우 --
			<c:if test="${ beanBoard.writer_key ne '' && beanBoard.writer_key eq sessionScope.session_user.user_id }">
				<a href="javascript:goModify(${beanBoard.idx});" title="수정" class="btn btn-default"><span class="button">Modify</span></a>
				<a href="javascript:setDelete(${beanBoard.idx});" title="삭제" class="btn btn-default"><span class="button">Delete</span></a>
			</c:if>
		</p> -->
	</div>
</div>


<script type="text/javascript" defer="defer">

	$(document).ready(function () {

		/*$('html').keyup(function (e) {
			if (e.keyCode == 8) {
				goList();
			}
		})*/

		resetPopPassword();

	});

	var goList = function () {

		var data = {
			"tb_name": tb_name,
			"pageNum": pageNum,
			"search_key": search_key,
			"search_val": search_val
		}

		getProcess4Page("${pageContext.request.contextPath}/board/list", data, function (data) {
			$('#div-board').html(data);
		});
	}


	var goReply = function ( pidx, tree_level ) {
		var data = {
			"tb_name" : tb_name,
			"pidx" : pidx,
			"tree_level" : tree_level
		}

		console.log( data );

		getProcess4Page(contextPath + "/board/reply", data, function (data) {
			$('#div-board').html( data );
		});
	}


	var goModify = function ( idx ) {
		var data = {
			"tb_name" : tb_name,
			"idx" : idx
		}

		console.log( data );

		getProcess4Page(contextPath + "/board/form", data, function (data) {
			$('#div-board').html( data );
		});
	}


	var setDelete = function (idx) {

		if (confirm("Will you delete it?") == true) {
			goList();

			getProcess4Front(contextPath + "/board/deleteBoard", {
				"tb_name": tb_name,
				"idxs" : "${ beanBoard.idx }",
				"pageNum": pageNum,
				"search_key": search_key,
				"search_val": search_val
			}, function (data) {

				if ( data.status == "OK" ) {
					goList();
				} else {
					//alert(data.msg);
					resetPopPassword();
				}
			});

		}

	}


	var popPassword = function ( mode, idx ) {

		$('#pop-mode').val(mode);
		$('#pop-idx').val(idx);
		$('#ajax-password').show();

		$('#pop-pwd').focus();

		$('#pop-btn-ok').click(function () {
			chkPassword();
		});

		$('#pop-btn-cancel').click(function () {
			resetPopPassword();
		});
	}


	var chkPassword = function () {

		var tempPassword = $('#pop-pwd').val();
		var data = {
			"tb_name" : tb_name,
			"idx" : $('#pop-idx').val()
		}

		getProcess4Front(contextPath + "/board/getBoardOne", data, function (data) {
			if ( data.status == "OK" ) {

				if ( data.beanBoard.writer_pw == tempPassword ) {
					if ( $('#pop-mode').val() == "modify" ) {
						goModify( $('#pop-idx').val() );
						resetPopPassword();
						return;
					} else if ( $('#pop-mode').val() == "delete" ) {
						setDelete( $('#pop-idx').val() );
						resetPopPassword();
					}
				} else {

					resetPopPassword();

					alert("작성시 기재된 비밀번호와 일치하지 않습니다.");
					return;
				}
			}
		});
	}



</script>



<c:if test="${ beanBBS.is_comment == 'Y'}">
	<jsp:include page="/cms_manager/comment/front"  >
		<jsp:param value="${beanBoard.idx}" name="tb_idx" />
	</jsp:include>
</c:if>