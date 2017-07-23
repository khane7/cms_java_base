<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-28
  Time: 오전 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<title>한양대학교 학생생활관</title>

	<link rel="stylesheet" type="text/css" href="/css/style.css"/>
	<script src="/js/jquery/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script src="/js/utility.js" type="text/javascript"></script>
	<script src="/js/bpopup.js" type="text/javascript"></script>

	<script src="/js/plugins/aes.js" type="text/javascript"></script>
	<script src="/js/plugins/app.js" type="text/javascript"></script>
	<script src="/js/plugins/dbsesmt.js" type="text/javascript"></script>

	<script type="text/javascript">
        function show_popup() {
            var popOption = "width=960, height=880, resizable=no, scrollbars=yes, status=no;";
                window.open("http://www.dormitory.hanyang.ac.kr/html/banner/privacy", "", popOption);
            }
		 function show_popup2() {
            var popOption = "width=620, height=210, resizable=no, scrollbars=no, status=no;";
                window.open("http://www.hanyang.ac.kr/member2/protection2_email.html", "", popOption);
            }
    </script>
</head>
<body>

<!-- s : header -->
<div id="header">
	<div class="top-nav inner-layout-cnt clearfix">
		<div class="top-search">
			<input type="text" placeholder="한양대 검색">
			<input type="image" src="/images/btn_search.png" alt="검색">
		</div>
		<ul>
			<c:if test="${ sessionScope.session_user.user_id == null }">
				<li><a href="javascript:DbsEsmt.login();">Login</a></li>
			</c:if>
			<c:if test="${ sessionScope.session_user.user_id != null }">
				<li><a href="javascript:logout();">Logout</a></li>
			</c:if>
			<li><a href="http://www.hanyang.ac.kr" target="_blank">HANYANG UNIVERSITY</a></li>
			<li><a href="http://dormitory.hanyang.ac.kr/" target="_blank">Korean</a></li>
			<li class="last"><a href="http://www.hanyang.ac.kr/web/www/search_phone1#none"  target="_blank">한양대학교 전화번호 검색</a></li>
		</ul>
	</div>
	<div class="top-header inner-layout-cnt clearfix">
		<h1><a href="http://www.hanyang.ac.kr" target="_blank"><img src="/images/logo.jpg" alt="한양대학교"></a><a href="/"><img src="/images/logo2.jpg" alt="학생생활관"></a></h1>
		<div id="menuLayout">
		<ul class="gnb" id="ul-menu">
			<li class="sm1"><a href="/html/Cont/contactus"><span class="">Contact Us</span></a></li>
			<li class="sm2"><a href="/html/Facil/oncam"><span class="">Hall Facilities</span></a></li>
			<li class="sm3"><a href="/html/Check/checkin"><span class="">Check In/Out</span></a></li>
			<li class="sm4"><a href="/html/Resid/schedule"><span class="">Residential Life</span></a></li>
			<li class="last sm5"><a href="/html/community/notice?tb_name=notice"><span class="">Community </span></a></li>
		</ul>
		<!-- 서브메뉴 s : 전체보기형식입니다.  -->
		<div id="div-allmenu" class="allmenu" style="display:none;"> 
			<div class="clearfix">
				<ul style="width:140px;">
					<li><a href="/html/Cont/contactus">Contact Us</a></li>
					<li><a href="/html/Cont/loc_on"> Location(On Campus)</a></li>
					<li><a href="/html/Cont/loc_off"> Location(Off Campus)</a></li>
				</ul>
				<ul style="width:110px;">
					<li><a href="/html/Facil/oncam">On Campus</a></li>
					<li><a href="/html/Facil/offcam">Off Campus</a></li>
					<li><a href="/html/Facil/notice?tb_name=repair">Repair(On Campus Only)</a></li>
				</ul>
				<ul>	
					<!-- <li><a href="/html/Check/application">Application</a></li> -->
					<li><a href="/html/Check/checkin">Check-In Procedure</a></li>
					<li><a href="/html/Check/checkout">Check-Out Procedure  </a></li>
					<li><a href="/html/Check/midway">Midway Check Out</a></li>		
					<li><a href="/html/Check/refund">Refund Policy</a></li>		
				</ul>
				<ul>			
					<li><a href="/html/Resid/schedule">Hall Schedule </a></li>
					<li><a href="/html/Resid/policy">Regulation of Residence Hall</a></li>
					<li><a href="/html/Resid/inspection">Room Inspection </a></li>
					<li><a href="/html/Resid/certificate">Certificate of Residence </a></li>
				</ul>
				<ul style="width:90px;">
					<li><a href="/html/community/notice?tb_name=notice">Notice</a></li>
					<li><a href="/html/community/notice?tb_name=faq">FAQ</a></li>
					<li><a href="/html/community/notice?tb_name=guidebook">Guidebook</a></li>
				</ul>
			</div>
			
		</div>
		<!-- 서브메뉴 e : 전체보기형식입니다. -->
		</div>
	</div>

</div>
<!-- e : header -->


<script type="text/javascript">

	$(document).ready(function () {
		$("#menuLayout").mouseover(function() {
			$("#div-allmenu").slideDown(150);
		})
		.mouseleave(function() {
			$("#div-allmenu").slideUp(150);
		});
		/*
		$('#ul-menu').mouseover(function () {
			$('#div-allmenu').slideDown(150);
		});

		$('#div-allmenu').mouseleave(function () {
			$('#div-allmenu').slideUp(150);
		});
		*/
	});

</script>