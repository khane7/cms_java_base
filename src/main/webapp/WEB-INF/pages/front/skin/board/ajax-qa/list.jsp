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


<table class="faqlist">
	<colgroup>
		<col width="5%;">
		<col width="95%;">
	</colgroup>
	<tbody>
	<c:set var="number" value="${ maxCount - ( (page - 1) * beanBBS.page_count ) }"/>
	<c:forEach var="item" items="${ boardList }" varStatus="status">
		<tr>
			<td><span class="markQ">Q</span></td>
			<td class="quest"><a href="javascript:goView(${ item.idx });">${ item.title }</a></td>
		</tr>
		<tr class="answer" id="div-answer-${ item.idx }" style="display: none;">
			<td><span class="markA">A</span></td>
			<td class="sbj">${ item.reply.content_text }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>

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
				<option value="title">Title</option>
				<option value="content">Content</option>
				<option value="writer">Writer</option>
			</select>
			<input type="text" name="search_val" id="search_val" placeholder="검색어 입력" title="검색영역을 선택해주세요">
			<a href="javascript:goSearch();">Search</a>
		</div>
	</div>
	<c:if test="${ beanBBS.is_nologin == 'Y' || sessionScope.session_user.user_id != null }">
		<c:if test="${ beanBBS.write_level <= sessionScope.session_user.level }">
			<div class="text-right fr">
				<a href="javascript:goForm();" title="확인" class="btn btn-default"><span class="button">Writing</span></a>
			</div>
		</c:if>
	</c:if>
</div>

<script type="text/javascript">

	var goView = function ( idx ) {

		/*var data = {
			"tb_name" : tb_name,
			"idx" : idx
		}

		console.log( data );

		getProcess4Page(contextPath + "/board/view", data, function (data) {
			$('#div-board').html( data );
		});*/

		$('.answer').each(function() {
			$(this).hide();
		});

		$('#div-answer-' + idx).slideDown(500);
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


	});


</script>