<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-03-22
  Time: 오전 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="/js/jquery/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="/js/utility.js" type="text/javascript"></script>

<script src="/js/plugins/aes.js" type="text/javascript"></script>
<script src="/js/plugins/app.js" type="text/javascript"></script>
<script src="/js/plugins/dbsesmt.js" type="text/javascript"></script>

<script type="text/javascript">

	function userInfoDetail4Site() {
		DbsEsmt.api( "get", "https://api.hanyang.ac.kr/rs/user/loginInfo.json", { },  userTotalCallback4Site );
	}

	function userTotalCallback4Site( data ) {
		var titleEl,
				$targetEl;
		titleEl = "<h2> userTotal success </h2>" ;
		$targetEl = $("#idUserTotal");
		$targetEl.html('<pre>' + titleEl + JSON.stringify(data, null, 2) + '</pre>');

		console.log("유저 이름 : "+ data.response.item.userNm);
		console.log("유저 아이디 : "+ data.response.item.loginId);
		console.log("유저 구분 : "+ data.response.item.userGbNm);  //학생 , 교직원 , 일반

		var users= new Object();
		users.user_id = data.response.item.loginId;
		users.user_name = data.response.item.userNm;
		users.passwd = data.response.item.uuid;

		switch (data.response.item.userGbNm) {
			case "일반인" :
				users.level = 50;
				break;
			case "학생" :
				users.level = 50;
				break;
			case "재학생" :
				users.level = 50;
				break;
			case "휴학생" :
				users.level = 50;
				break;
			case "편입생" :
				users.level = 50;
				break;
			case "학부생" :
				users.level = 50;
				break;
			case "학원생" :
				users.level = 50;
				break;
			case "대학원생" :
				users.level = 50;
				break;
			case "교직원" :
				users.level = 99;
				break;
			case "직원" :
				users.level = 99;
				break;
			default :
				users.level = 50;
				break;
		}

		getProcess4Front("${pageContext.request.contextPath}/cms_manager/doLogin4SSO", users, function (data) {

			if ( data.status == "OK" ) {
				location.href = "${pageContext.request.contextPath}/";
			}

		});

	}

	$(document).ready(function () {
		userInfoDetail4Site();
	});
</script>


<div class="loader" id="ajax-loading" style="display: block; width: 100%; height: 800px; text-align: center; padding-top: 400px;"><img src="${pageContext.request.contextPath}/images/bbs/712.GIF" alt="loading이미지"></div>