<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-05-31
  Time: 오전 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
	.bg_login {width:450px; margin:0 auto; border:1px solid #ddd; border-radius: 10px; height:130px; box-shadow: 1px 1px 2px #d2d2d2;}
	.qnaBox label {display:block; float: left; width:100px; padding:5px ; margin-right:10px; text-align:right; font-weight:700;}
	.log_role{float:left;.width:92px;margin:0px 0 0 12px;.margin-top:2px;text-align:left;}
	.log_role .chkbox {margin-bottom:20px;}
	.text {width:144px;background:#fff;border:1px solid #d7d7d7;height:22px;line-height:22px;padding:2px 7px 2px; float: left;}
	.txt_normal_pop {font-size:18px; text-align: center; color:#1f5285; padding:20px 0;}
	.logBtns {padding:20px 0;}
	.btn {
		display:inline-block;
		padding:6px 12px;
		margin-bottom:0;
		font-size:14px;
		font-weight:400;
		line-height:1.42857143;
		text-align:center;
		white-space:nowrap;
		vertical-align:middle;
		-ms-touch-action:manipulation;
		touch-action:manipulation;
		cursor:pointer;
		-webkit-user-select:none;
		-moz-user-select:none;
		-ms-user-select:none;
		user-select:none;
		background-image:none;
		border:1px solid transparent;
		border-radius:4px
	}
	.btn.active.focus,.btn.active:focus,.btn.focus,.btn:active.focus,.btn:active:focus,.btn:focus {
		outline:thin dotted;
		outline:5px auto -webkit-focus-ring-color;
		outline-offset:-2px
	}
	.btn.focus,.btn:focus,.btn:hover {
		color:#333;
		text-decoration:none
	}
	.btn.active,.btn:active {
		background-image:none;
		outline:0;
		-webkit-box-shadow:inset 0 3px 5px rgba(0,0,0,.125);
		box-shadow:inset 0 3px 5px rgba(0,0,0,.125)
	}
	.btn-login {
		color:#fff;
		background-color:#337ab7;
		border-color:#2e6da4;
		padding:4px 15px;
	}
	.btn-login.active,.btn-login.focus,.btn-login:active,.btn-login:focus,.btn-login:hover,.open>.dropdown-toggle.btn-login {
		color:#fff;
		background-color:#286090;
		border-color:#204d74
	}
	.btn-login.active,.btn-login:active,.open>.dropdown-toggle.btn-login {
		background-image:none
	}
</style>




<div id="ajax-password" class="qnaBox bg_login" style="display: none;  position: fixed; background: #ffffff;left: 50%;top:50%;transform: translate(-50%, -50%); z-index: 100;">
	<p class="txt_normal_pop">비밀번호를 입력해주세요</p>
	<div class="loginBox">
		<input type="hidden" id="pop-mode" name="pop-mode" value="" >
		<input type="hidden" id="pop-idx" name="pop-idx" value="" >
		<label for="pop-pwd">비밀번호</label> <input type="password" class="text" title="비밀번호" name="pop-pwd" id="pop-pwd">
		<div class="log_role">
			<a id="pop-btn-ok" class="btn btn-login">확인</a>
			<a id="pop-btn-cancel" class="btn btn-login">취소</a>
		</div>
	</div>
</div>

<%--
<div class="loader" id="ajax-password" style="display: none;">
	<div class="pwbox" style="display: block;">
		<input type="hidden" id="pop-mode" name="pop-mode" value="" >
		<input type="hidden" id="pop-idx" name="pop-idx" value="" >
		비밀번호 <input style="width: 100px;" type="password" id="pop-pwd" name="pop-pwd" value="" >
		<a class="btn btn-sm" id="pop-btn-ok" >확인</a> <a class="btn btn-sm" id="pop-btn-cancel" >취소</a>
	</div>
</div>
--%>
