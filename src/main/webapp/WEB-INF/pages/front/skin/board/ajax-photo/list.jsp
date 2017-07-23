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


<ul class="thumblst clearfix">
	<c:set var="number" value="${ maxCount - ( (page - 1) * beanBBS.page_count ) }"/>
	<c:forEach var="item" items="${ boardList }" varStatus="status">
		<li>
			<c:if test="${ item.opt2 != null && item.opt2 ne '' }">
				<a href="${item.opt2}" target="_blank">
					<img src="${pageContext.request.contextPath}${ item.thumbnail.web_path }/${ item.thumbnail.realfilename }" alt="">
					<p class="subj">
						<c:if test="${ item.idx > item. pidx }">
							[RE]&nbsp;
						</c:if>
						<a href="javascript:goView(${ item.idx });">${ item.title }</a>
						<c:if test="${ item.comment_count > 0 }">
							<font color="red">(${item.comment_count})</font>
						</c:if>
					</p>
					<span class="date"><fmt:formatDate value="${ item.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
				</a>
			</c:if>
			<c:if test="${ item.opt2 == null || item.opt2 eq '' }">
				<a href="javascript:goView(${ item.idx });">
					<img src="${pageContext.request.contextPath}${ item.thumbnail.web_path }/${ item.thumbnail.realfilename }" alt="">
					<p class="subj">
						<c:if test="${ item.idx > item. pidx }">
							[RE]&nbsp;
						</c:if>
						<a href="javascript:goView(${ item.idx });">${ item.title }</a>
					</p>
					<span class="date"><fmt:formatDate value="${ item.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
				</a>
			</c:if>
			<%--<a href="javascript:goView(${ item.idx });">
				<img src="${pageContext.request.contextPath}${ item.thumbnail.web_path }/${ item.thumbnail.realfilename }" alt="">
				<p class="subj"><a href="javascript:goView(${ item.idx });">${ item.title }</a></p>
				<span class="date"><fmt:formatDate value="${ item.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
			</a>--%>
		</li>
	<%--<tr>
		<td class="listnum">${ number - status.index }</td>
		<td class="sbj listsbj">
			<a href="javascript:goView(${ item.idx });">${ item.title }</a>
		</td>
		<td class="writer">${ item.writer }</td>
		<td class="listdate"><fmt:formatDate value="${ item.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		<td class="listhit">${ item.views }</td>
	</tr>--%>
	</c:forEach>
</ul>

${ PageLink }

<%--<div class="text-center">
	<ul class="pagination">
		<li>
			<a href="#">
				<span>&lt;&lt;</span>
			</a>
		</li>
		<li>
			<a href="#">
				<span> &lt;</span>
			</a>
		</li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li>
			<a href="#">
				<span> &gt;</span>
			</a>
		</li>
		<li>
			<a href="#">
				<span> &gt;&gt;</span>
			</a>
		</li>
	</ul>
</div>--%>



<div class="clearfix">
	<div class="bbs-search-area fl">
		<div class="bbs-search">
			<select name="search_key" id="search_key" class="검색영역을 선택해주세요">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="writer">작성자</option>
			</select>
			<input type="text" name="search_val" id="search_val" placeholder="검색어 입력" title="검색영역을 선택해주세요">
			<a href="javascript:goSearch();">검색</a>
		</div>
	</div>
	<c:if test="${ beanBBS.is_nologin == 'Y' || sessionScope.session_user.user_id != null }">
		<c:if test="${ beanBBS.write_level <= sessionScope.session_user.level }">
			<div class="text-right fr">
				<a href="javascript:goForm();" title="확인" class="btn btn-default"><span class="button">글쓰기</span></a>
			</div>
		</c:if>
	</c:if>
</div>

<script type="text/javascript">

	var goView = function ( idx ) {

		var data = {
			"tb_name" : tb_name,
			"idx" : idx
		}

		console.log( data );

		getProcess4Page(contextPath + "/board/view", data, function (data) {
			$('#div-board').html( data );

			var data = {
				"tb_name" : tb_name,
				"pageNum" : pageNum,
				"search_key" : search_key,
				"search_val" : search_val
			}
			getProcess4Page( contextPath + "/board/list", data, function (data) {
				$('#div-board').append( data );
			});

		});
	}


	var goForm = function () {

		var data = {
			"tb_name" : tb_name,
		}

		console.log( data );

		getProcess4Page(contextPath + "/board/form", data, function (data) {
			$('#div-board').html( data );
		});
	}


	var goPageNum = function (page) {

		pageNum = page;

		var data = {
			"tb_name" : tb_name,
			"pageNum" : pageNum,
			"search_key" : search_key,
			"search_val" : search_val
		}

		getProcess4Page( contextPath + "/board/list", data, function (data) {
			$('#div-board').html( data );
		});
	}

	var goSearch = function () {

		pageNum = 1;
		search_key = $('#search_key').val();
		search_val = $('#search_val').val();

		var data = {
			"tb_name" : tb_name,
			"search_key" : search_key,
			"search_val" : search_val
		}

		getProcess4Page( contextPath + "/board/list", data, function (data) {
			$('#div-board').html( data );
		});
	}


	var goPage = function ( page ) {

		var data = {
			"tb_name" : tb_name,
			"pageNum" : page
		}

		getProcess4Page( contextPath + "/board/list", data, function (data) {
			$('#div-board').html( data );
		});
	}


	$(document).ready(function () {

		if ( direct == false && getParameter("idx") != "" && tb_idx != getParameter("idx") ) {
			direct = true;
			tb_idx = getParameter("idx");
			goView( tb_idx );
		}
	});

</script>