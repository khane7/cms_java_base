<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-15
  Time: 오후 3:43
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/cms_manager/getLayoutHeader"/>

<body class="no-skin">

<jsp:include flush="false" page="/cms_manager/getLayoutTop"/>

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<script type="text/javascript">
		try {
			ace.settings.check('main-container', 'fixed')
		} catch (e) {
		}
	</script>

	<jsp:include flush="true" page="/cms_manager/getLayoutLeft"/>
	<div class="main-content">
		<jsp:include page="/cms_manager/getLayoutNavigator"/>
		<div class="page-content">
			<jsp:include page="/cms_manager/getLayoutRight"/>


			<div class="page-header">
				<h1>
					<c:out value="${ beanBBS.board_name }" />
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						게시물 관리
					</small>
				</h1>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->


					<table class="table table-striped table-bordered table-hover" id="sample-table-1">
						<thead>
						<tr>
							<th class="center" style="width: 30px;">
								<label class="position-relative">
									<input class="ace" type="checkbox" id="chk-all">
									<span class="lbl"></span>
								</label>
							</th>
							<th class="align-center" style="width: 60px;">No</th>
							<th>제목</th>
							<th style="width: 120px;">작성자</th>
							<th style="width: 60px;">공지</th>
							<th style="width: 60px;">표출</th>
							<th style="width: 120px;">작성IP</th>
							<th style="width: 150px;">
								<i class="ace-icon fa fa-clock-o bigger-110"></i>작성일
							</th>
							<th style="width: 60px;">조회수</th>
						</tr>
						</thead>

						<tbody>
						<c:forEach var="item" items="${ noticeList }" varStatus="status">
							<tr style="cursor: pointer;">
								<td class="center">
								</td>
								<td class="align-center">
									<span class="label label-warning arrowed-right arrowed-in">공지</span>
								</td>
								<td onclick="javascript:view(${ item.idx });" <c:if test="${ item.is_use == 'N'}">style="color:darkgray;"</c:if> >
									${ item.title }

									<c:if test="${ item.comment_count > 0 }">
										&nbsp;&nbsp;
										<span class="badge badge-danger">${item.comment_count}</span>
									</c:if>

									<c:if test="${ item.is_new == 'Y' }">
										&nbsp;&nbsp;
										<span class="label label-warning arrowed-in">new</span>
									</c:if>

								</td>
								<td>${ item.writer }</td>
								<td>
									<c:if test="${ item.is_notice == 'Y' }">
										<span class="label label-sm label-warning">notice</span>
									</c:if>
									<c:if test="${ item.is_notice == 'N' }">
										<span class="label label-sm label-primary">normal</span>
									</c:if>
								</td>
								<td>
									<c:if test="${ item.is_use == 'Y' }">
										<span class="label label-sm label-default">use</span>
									</c:if>
									<c:if test="${ item.is_use == 'N' }">
										<span class="label label-sm label-danger">deleted</span>
									</c:if>
								</td>
								<td>${ item.reg_ip}</td>
								<td><fmt:formatDate value="${ item.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
								<td class="align-center">${ item.views }</td>
							</tr>
						</c:forEach>

						<c:set var="number" value="${ maxCount - ( (page - 1) * beanBBS.page_count ) }"/>
						<c:forEach var="item" items="${ boardList }" varStatus="status">
						<tr style="cursor: pointer;">
							<td class="center">
								<label class="position-relative">
									<input class="ace chk-idx" type="checkbox" value="${ item.idx }">
									<span class="lbl"></span>
								</label>
							</td>
							<td class="align-center">
								<c:if test="${ item.is_notice == 'Y' }">
									<span class="label label-warning arrowed-right arrowed-in">공지</span>
								</c:if>
								<c:if test="${ item.is_notice == 'N' }">
									${ number - status.index }
								</c:if>

							</td>
							<td onclick="javascript:view(${ item.idx });" <c:if test="${ item.is_use == 'N'}">style="color:darkgray;"</c:if> >

								<c:forEach begin="2" end="${ item.depth }">
									&nbsp;&nbsp;&nbsp;&nbsp;
								</c:forEach>

								<c:if test="${ item.idx > item. pidx }">
									<img src="/skin/commons/images/icon_reply.gif" />
								</c:if>
								${ item.title }

								<c:if test="${ item.comment_count > 0 }">
									<span class="badge badge-danger">${item.comment_count}</span>
								</c:if>

								<c:if test="${ item.is_new == 'Y' }">
									<span class="label label-warning arrowed-in">new</span>
								</c:if>

							</td>
							<td>${ item.writer }</td>
							<td>
								<c:if test="${ item.is_notice == 'Y' }">
									<span class="label label-sm label-warning">notice</span>
								</c:if>
								<c:if test="${ item.is_notice == 'N' }">
									<span class="label label-sm label-primary">normal</span>
								</c:if>
							</td>
							<td>
								<c:if test="${ item.is_use == 'Y' }">
									<span class="label label-sm label-default">use</span>
								</c:if>
								<c:if test="${ item.is_use == 'N' }">
									<span class="label label-sm label-danger">deleted</span>
								</c:if>
							</td>
							<td>${ item.reg_ip}</td>
							<td><fmt:formatDate value="${ item.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
							<td class="align-center">${ item.views }</td>
						</tr>
						</c:forEach>

						</tbody>
					</table>

					<!-- <div class="col-xs-6">
						  <div class="dataTables_info" id="sample-table-2_info">Showing 1 to 10 of 23 entries</div>
					  </div> -->
					<div class="col-xs-12">

						${ PageLink }

					</div>


					<c:if test="${ sessionScope.session_user.user_id != null }">
						<c:if test="${ beanBBS.write_level <= sessionScope.session_user.level }">
							<div class="cols-xs-12 align-right">
								<button type="button" class="btn btn-primary btn-sm" id="btn-add">추가</button>
								<button type="button" class="btn btn-danger btn-sm" id="btn-delete">삭제</button>
							</div>
						</c:if>
					</c:if>

					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
			</div><!-- /.row -->



		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.main-content -->
	<jsp:include page="/cms_manager/getLayoutBottom"/>
</div>
<!-- /.main-container -->
<jsp:include page="/cms_manager/getLayoutTail"/>


</body>

<script type="text/javascript">
	$(document).ready(function () {

		$('#chk-all').click(function () {
			if ( $(this).prop("checked") == true ) {
				$('.chk-idx').prop("checked", "checked");
			} else {
				$('.chk-idx').prop("checked", "");
			}
		});

		$('#btn-add').click(function () {
			location.href = BOARD + "/form?tb_name=" + getParameter("tb_name");
		});

		$('#btn-delete').click(function () {

			showAlert("삭제하시겠습니까?", "Warning", true, "deleteProc();", null);

			/*var i = 0;
			var idxs = new Array();
			$('.chk-idx').each(function() {
				if ( $(this).prop("checked") == true ) {
					idxs[i] = $(this).val();
					i++;
				}
			});

			getProcess( BOARD + "/deleteBoard", { "idxs" : idxs.join(","), "tb_name" : getParameter("tb_name") }, function(data) {
				if ( data.status == "FAIL" ) {
					showAlert(data.MSG, data.status, false);
				} else {
					location.reload(true);
				}
			});*/

		});

	});

	var view = function ( idx ) {
		location.href = BOARD + "/view?tb_name=" + getParameter("tb_name") + "&idx=" + idx;
	}


	var deleteProc = function () {

		var i = 0;
		var idxs = new Array();
		$('.chk-idx').each(function() {
			if ( $(this).prop("checked") == true ) {
				idxs[i] = $(this).val();
				i++;
			}
		});

		getProcess( BOARD + "/deleteBoard", { "idxs" : idxs.join(","), "tb_name" : getParameter("tb_name") }, function(data) {
			if ( data.status == "FAIL" ) {
				showAlert(data.MSG, data.status, false);
			} else {
				location.reload(true);
			}
		});

	}


</script>

</html>