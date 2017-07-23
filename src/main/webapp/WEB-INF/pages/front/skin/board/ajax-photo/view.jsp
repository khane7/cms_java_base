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
		<div class="count">조회수 ${ beanBoard.views }</div>
	</div>
	<div class="cnt">
		<c:if test="${ beanBBS.is_file == 'Y'}">
			<div class="attach">
				<span>첨부파일 : </span>

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
			<a href="javascript:goList();" title="답글" class="btn btn-default"><span class="button">목록</span></a>
		</p>

		<p class="fr">
			<%--<a href="#" title="답글" class="btn btn-default"><span class="button">답글</span></a>--%>
			<c:if test="${ beanBoard.writer_key eq sessionScope.session_user.user_id }">
				<a href="javascript:goModify(${beanBoard.idx});" title="수정" class="btn btn-default"><span class="button">수정</span></a>
				<a href="javascript:setDelete(${beanBoard.idx});" title="삭제" class="btn btn-default"><span class="button">삭제</span></a>
			</c:if>
		</p>
	</div>
</div>


<script type="text/javascript">

	$(document).ready(function () {

		/*$('html').keyup(function (e) {
			if (e.keyCode == 8) {
				goList();
			}
		})*/

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

		if (confirm("삭제하시겠습니까?") == true) {
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
					alert(data.msg);
				}
			});

		}

	}

</script>



<c:if test="${ beanBBS.is_comment == 'Y'}">
	<jsp:include page="/cms_manager/comment/front"  >
		<jsp:param value="${beanBoard.idx}" name="tb_idx" />
	</jsp:include>
</c:if>