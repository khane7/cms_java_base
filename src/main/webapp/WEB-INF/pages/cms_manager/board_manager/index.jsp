<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-15
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/cms_manager/getLayoutHeader" />

<body class="no-skin">

<jsp:include flush="false"  page="/cms_manager/getLayoutTop" />

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<script type="text/javascript">
		try{ace.settings.check('main-container' , 'fixed')}catch(e){}
	</script>

	<jsp:include flush="true" page="/cms_manager/getLayoutLeft" />
	<div class="main-content">
		<jsp:include page="/cms_manager/getLayoutNavigator" />
		<div class="page-content">
			<jsp:include page="/cms_manager/getLayoutRight" />


			<div class="page-header">
				<h1>
					게시판 관리
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						게시판 관리기능 제공
					</small>
				</h1>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->


					<table id="sample-table-1" class="table table-striped table-bordered table-hover">
						<thead>
						<tr>
							<th class="center">
								<label class="position-relative">
									<input type="checkbox" class="ace" id="chk-all" name="chk-all" />
									<span class="lbl"></span>
								</label>
							</th>
							<th class="ordering" id="th-themes">idx</th>
							<th class="ordering" id="th-board_key">게시판 코드</th>
							<th class="ordering" id="th-board_name">게시판 이름</th>
							<th class="ordering" id="th-skin">스킨</th>
							<th class="ordering" id="th-is_comment">댓글</th>
							<th class="ordering" id="th-is_file">첨부파일</th>
							<th class="ordering" id="th-is_secret">비밀글</th>
							<th class="ordering" id="th-is_nologin">비로그인 사용자</th>
							<th class="ordering" id="th-regdate">
								<i class="ace-icon fa fa-clock-o bigger-110"></i>
								등록일
								<span id="i-regdate" class="sort"></span>
							</th>
							<th>Control</th>
						</tr>
						</thead>

						<tbody id="tbody">
						<c:forEach var="item" items="${ bbsList }" varStatus="i">
							<tr>
								<td class="center">
									<label class="position-relative">
										<input type="checkbox" class="ace chk-idx" id="chk-${ item.idx }" name="chk-idx" value="${ item.idx }"  />
										<span class="lbl"></span>
									</label>
								</td>

								<td>${ item.idx }</td>
								<td>${ item.board_key }</td>
								<td>${ item.board_name }</td>

								<td>
									<c:if test="${ item.is_notice == 'Y' }">
										<span class="label label-sm label-primary">Enabled</span>
									</c:if>
									<c:if test="${ item.is_notice == 'N' }">
										<span class="label label-sm label-grey">Disabled</span>
									</c:if>
								</td>
								<td>
									<c:if test="${ item.is_comment == 'Y' }">
										<span class="label label-sm label-primary">Enabled</span>
									</c:if>
									<c:if test="${ item.is_comment == 'N' }">
										<span class="label label-sm label-grey">Disabled</span>
									</c:if>
								</td>
								<td>
									<c:if test="${ item.is_file == 'Y' }">
										<span class="label label-sm label-primary">Enabled</span>
									</c:if>
									<c:if test="${ item.is_file == 'N' }">
										<span class="label label-sm label-grey">Disabled</span>
									</c:if>
								</td>
								<td>
									<c:if test="${ item.is_secret == 'Y' }">
										<span class="label label-sm label-primary">Enabled</span>
									</c:if>
									<c:if test="${ item.is_secret == 'N' }">
										<span class="label label-sm label-grey">Disabled</span>
									</c:if>
								</td>
								<td>
									<c:if test="${ item.is_nologin == 'Y' }">
										<span class="label label-sm label-primary">Enabled</span>
									</c:if>
									<c:if test="${ item.is_nologin == 'N' }">
										<span class="label label-sm label-grey">Disabled</span>
									</c:if>
								</td>

								<td><fmt:formatDate value="${ item.regdate }" pattern="yyyy-MM-dd HH:mm:ss" /></td>

								<td>
									<div class="hidden-sm hidden-xs btn-group">
										<button class="btn btn-xs btn-primary" id="btn-edit" value="${ item.idx }" onclick="javascript:editBBS('${ item.idx }');" >
											<i class="ace-icon fa fa-check bigger-120"></i>
										</button>
										<button class="btn btn-xs btn-danger" id="btn-delete" value="${ item.idx }" onclick="javascript:delBBS('${ item.idx }');" >
											<i class="ace-icon fa fa-trash-o bigger-120"></i>
										</button>
									</div>

								</td>
							</tr>
						</c:forEach>

						</tbody>
					</table>


					<div class="cols-xs-12 align-right">
						<button type="button" class="btn btn-primary btn-sm" id="btn-add">추가</button>
						<%--<button type="button" class="btn btn-danger btn-sm" id="btn-deleting">삭제</button>--%>
					</div>


					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.page-content -->
	</div><!-- /.main-content -->
	<jsp:include page="/cms_manager/getLayoutBottom" />
</div><!-- /.main-container -->
<jsp:include page="/cms_manager/getLayoutTail" />



</body>

<script type="text/javascript">
	$(document).ready(function() {

		$('#btn-add').click(function () {
			location.href = BOARD_MANAGER + "/showDetail";
		});

	});

	var editBBS = function (idx) {
		location.href = BOARD_MANAGER + "/showDetail?idx=" + idx;
	}

	var delBBS = function ( idx ) {
		showAlert( "삭제하시겠습니까?", null, true, "delBBS_process(" + idx + ");", null);
	}

	var delBBS_process = function ( idx ) {
		getProcess(BOARD_MANAGER + "/deleteBBS?idx=" + idx, null, function (data) {
			if ( data.result == "OK" ) {
				location.reload(true);
			} else {
				showAlert(data.msg);
			}
		});
	}

</script>


</html>