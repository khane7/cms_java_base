<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/cms_manager/getLayoutHeader" />


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
						회원관리
						<small>
							<i class="ace-icon fa fa-angle-double-right"></i>
							가입된 회원의 계정정보
						</small>
					</h1>
				</div>

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						
						<style type="text/css" >
							.ordering { cursor : pointer; }
							</style>
						<script type="text/javascript">
						$(document).ready(function() {
							var ordering = (getParameter("ordering") != "" ) ? getParameter("ordering") : "regdate";
							var sort = (getParameter("sort") != "" ) ? getParameter("sort") : "DESC";
							viewOrdering(ordering, sort);
							
							$('.ordering').click(function() {
								
								var newSort;
								var tempId = $(this).prop("id").split("-")[1];
								if ( tempId == ordering ) {
									newSort = (sort == "ASC") ? "DESC" : "ASC";
								} else {
									newSort = "ASC";
								}
								var href = removeURLParameter(location.href, "ordering") + "&ordering=" + tempId;
								goPage( removeURLParameter(href, "sort" )  + "&sort=" + newSort );
								
							});
						});
						
						var viewOrdering = function( ordering, sort ) {
							
							$('.sort').each(function() {
								$(this).html("");
							});
							
							var tempId = ordering;
							if ( sort == "ASC" ) {
								$('#i-' + tempId).html("▲");
							} else {
								$('#i-' + tempId).html("▼");
							}
						}
						</script>
						
						<table id="sample-table-1" class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th class="center">
										<label class="position-relative">
											<input type="checkbox" class="ace" id="chk-all" name="chk-all" />
											<span class="lbl"></span>
										</label>
									</th>
									<th class="hidden-10 ordering" id="th-idx">No<span id="i-idx" class="sort"></span></th>
									<th class="ordering" id="th-user_id">ID<span id="i-user_id" class="sort"></span></th>
									<th class="ordering" id="th-user_name">이름<span id="i-user_name" class="sort"></span></th>
									<th class="ordering" id= "th-level">level<span id="i-level" class="sort"></span></th>
									<!-- <th class="hidden-480 ordering" id="th-themes">테마<span id="i-themes" class="sort"></span></th> -->
									<th class="ordering" id="th-regdate"">
										<i class="ace-icon fa fa-clock-o bigger-110"></i>
										가입일
										<span id="i-regdate" class="sort"></span>
									</th>
									<th class="hidden-480">Status</th>
	
									<th>Control</th>
								</tr>
							</thead>
	
							<tbody>
								<c:forEach var="item" items="${ UserList }" varStatus="i">
								<tr>
									<td class="center">
										<label class="position-relative">
											<input type="checkbox" class="ace chk-idx" id="chk-${ item.idx }" name="chk-idx" value="${ item.user_id }"  />
											<span class="lbl"></span>
										</label>
									</td>
	
									<td>
										${ item.idx }
									</td>
									<td>${ item.user_id }</td>
									<td>${ item.user_name }</td>
									<td>${ item.level }</td>
									<%-- <td class="hidden-480">${ item.themes_name }</td> --%>
									<td><fmt:formatDate value="${ item.regdate }" pattern="y-M-d H:m:s" /></td>
									<td>
										<c:if test="${ item.is_delete == 'N' }">
											<span class="label label-sm label-primary">Enabled</span>
										</c:if>
										<c:if test="${ item.is_delete == 'Y' }">
											<span class="label label-sm label-grey">Disabled</span>
										</c:if>
									</td>
	
									<td>
										<div class="hidden-sm hidden-xs btn-group">
											<button class="btn btn-xs btn-warning" id="btn-password" value="${ item.user_id }" onclick="javascript:chgPasswd('${ item.user_id }');" >
												<i class="ace-icon fa fa-lock bigger-120" title="비밀번호 변경"></i>
											</button>
	
											<button class="btn btn-xs btn-info" id="btn-edit" value="${ item.idx }" onclick="javascript:chgUser('${ item.user_id }');" >
												<i class="ace-icon fa fa-pencil bigger-120" title="계정정보 수정"></i>
											</button>
	
											<button class="btn btn-xs btn-danger" id="btn-delete" value="${ item.user_id }" onclick="javascript:delUser('${ item.user_id }');" >
												<i class="ace-icon fa fa-trash-o bigger-120"></i>
											</button>
											
										</div>
	
										<div class="hidden-md hidden-lg">
											<div class="inline position-relative">
												<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
													<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
												</button>
	
												<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
													<li>
														<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
															<span class="blue">
																<i class="ace-icon fa fa-search-plus bigger-120"></i>
															</span>
														</a>
													</li>
	
													<li>
														<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
															<span class="green">
																<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
															</span>
														</a>
													</li>
	
													<li>
														<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
															<span class="red">
																<i class="ace-icon fa fa-trash-o bigger-120"></i>
															</span>
														</a>
													</li>
												</ul>
											</div>
										</div>
									</td>
								</tr>
								</c:forEach>
								
							</tbody>
						</table>

						<!-- PAGE CONTENT ENDS -->
					</div><!-- /.col -->


					<div class="col-xs-12">
						${ PageLink }
					</div>

					<div class="cols-xs-12 align-right">
						<button type="button" class="btn btn-primary btn-sm" id="btn-adding">등록</button>
						<button type="button" class="btn btn-danger btn-sm" id="btn-deleting">삭제</button>
					</div>

				</div><!-- /.row -->

			</div><!-- /.page-content -->
		</div><!-- /.main-content -->
		<jsp:include page="/cms_manager/getLayoutBottom" />
	</div><!-- /.main-container -->
	<jsp:include page="/cms_manager/getLayoutTail" />


	<!--  비밀번호 수정창 -->
	<div class="hide" id="dlg-password">
	<form id="frmPassword" name="frmPassword">
	<input type="hidden" id="user_id" name="user_id" value="">
		<div class="widget-body">
			<div>
				<div class="form-group">
					<label class="control-label width-35" for="txtCurrentPW">현재 비밀번호</label>
	
					<input type="password" class="text" id="txtCurrentPW" name="txtCurrentPW" placeholder="Current Password">
				</div>
	
				<hr />
	
				<!-- #section:plugins/input.limiter -->
			<div>
				<div class="form-group">
					<label class="control-label width-35"  for="txtNewPW">새 비밀번호</label>
	
					<input type="password" class="text" id="txtNewPW" name="txtNewPW" placeholder="New Password">
				</div>
			</div>
	
			<!-- /section:plugins/input.limiter -->
			<hr />
	
			<!-- #section:plugins/input.autosize -->
			<div>
				<div class="form-group">
					<label class="control-label width-35"  for="txtNewPWChk">비밀번호 확인</label>
	
					<input type="password" class="text" id="txtNewPWChk" name="txtNewPWChk" placeholder="New Password Again">
				</div>
			</div>
	
			<!-- /section:plugins/input.autosize -->
			</div>
		</div>
	</form>
	</div>


</body>

<script type="text/javascript">

$(document).ready(function() {
	
	// 테이블 체크박스 전체선택
	$('#chk-all').click(function() {
		if ( $(this).prop("checked") == true) {
			$('.chk-idx').each(function() {
				$(this).prop("checked", true);
			});
		} else {
			$('.chk-idx').each(function() {
				$(this).prop("checked", false);
			});
		}
	});

	// 등록 버튼
	$('#btn-adding').click(function() {
		location.href = "${pageContext.request.contextPath}/cms_manager/account_manager/showUserDetail";
	});
	
	// 삭제 버튼
	$('#btn-deleting').click(function() {
		showAlert("선택한 회원을 비활성화 하시겠습니까? <br>비활성화 된 데이터는 복구를 할 수 없습니다.", "Warning", true, "deleteMultiUser();", null);
	});
	

	
});


var chgPasswd = function(sel_user_id) {
	$('#user_id').val( sel_user_id );
	$('#txtCurrentPW').val("");
	$('#txtNewPW').val("");
	$('#txtNewPWChk').val("");
	
	var dialog = $( "#dlg-password" ).removeClass('hide').dialog({
		modal: true,
		title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='ace-icon fa fa-check'></i> 비밀번호 변경</h4></div>",
		title_html: true,
		buttons: [ 
			{
				text: "Cancel",
				"class" : "btn btn-xs",
				click: function() {
					$( this ).dialog( "close" ); 
				} 
			},
			{
				text: "OK",
				"class" : "btn btn-primary btn-xs",
				click: function() {
					//$( this ).dialog( "close" ); 
					var thisDlg = $( this );
					
					if ( $('#txtNewPW').val() != $('#txtNewPWChk').val() ) {
						showAlert("새 비밀번호가 일치하지 않습니다.", "Warning");
						return;
					}
					
					$.ajax({
						url : "${pageContext.request.contextPath}/cms_manager/account_manager/setPassword",
						type : "POST",
						dataType : "json",
						data : $('#frmPassword').serialize(),
						async:true,
						clearForm:true,
						resetForm:true,
						success : function(data, statusText) {
							
							hideLoading();
							
							if ( data.RESULT == "FAIL" ) {
								//alert( data.RESULT + " : " + data.MSG );
								if ( data.MSG == "0" ) {
									showAlert("현재 비밀번호가 일치하지 않습니다.", "Warning");
								}
							} else {
								thisDlg.dialog("close");
								showAlert("비밀번호가 변경되었습니다.", "Success");
							}
														
						},
						error: function(request, status, error){
							hideLoading();
							alert("code:"+request.status+"\n"+"error:"+error);
						},
						beforeSend : function() {
							showLoading();
						},
						complete : function() {
						}
					});
					
				} 
			}
		]
	});
}

var chgUser = function(sel_user_id) {
	location.href = "${pageContext.request.contextPath}/cms_manager/account_manager/showUserDetail?user_id=" + sel_user_id;
}

var delUser = function(sel_user_id) {
	$('#user_id').val( sel_user_id );
	showAlert("해당 계정정보를 비활성화 시키겠습니까?", "Warning", true, "deleteUser();", null);
}




/**
 * 회원 탈퇴 처리
 */
var deleteUser = function() {
	
	doProcess("${pageContext.request.contextPath}/cms_manager/account_manager/deleteUsers", { "user_id" : $('#user_id').val() }, function (data) {
		location.reload();
	});
}

/**
 * 회원 다중 탈퇴
 */
var deleteMultiUser = function() {
	
	var i = 0;
	var chkUserId = new Array();
	$('.chk-idx').each(function() {
		if ( $(this).prop("checked") == true ) {
			chkUserId[i] = $(this).val();
			i++;
		}
	});

	if ( chkUserId.length > 0 ) {
		for (var j = 0; j < chkUserId.length; j++) {
			doProcess("${pageContext.request.contextPath}/cms_manager/account_manager/deleteUsers", { "user_id" : chkUserId[j] }, null );
		}

		location.reload();

	} else {
		showAlert("Information", "데이터가 선택되지 않았습니다.<br>다시 확인해 주세요.");
	}
	
}

</script>


</html>