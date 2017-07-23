<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- s : header -->
<jsp:include page="../top.jsp"/>
<!-- e : header -->

<!-- s : contents -->
<div id="contents" class="clearfix">
	<div class="inner-layout">
		<!-- s : top nav -->
		<div class="top-sub-nav clearfix">
			<h2>${ beanBBS.board_name }</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">community</a></li>
				<li class="active"><a href="#">${ beanBBS.board_name }</a></li>
			</ul>
		</div>
		<!-- e : top nav -->

		<!-- s : top banner -->
		<div class="sub-top-bnr">
			<img src="/images/sub/bnr_top.jpg" alt="">
		</div>
		<!-- e : top banner -->

		<!-- s : sub contents -->
		<br/><br/>
		<ul class="guide-tab">
			<!-- <li id="li-normal_notice"><a href="./board_tab?tb_name=normal_notice">일반공지</a></li> -->
			<!-- <li id="li-inout_notice"><a href="./board_tab?tb_name=inout_notice">입사/퇴사 공지</a></li> -->
			<li id="li-come_info"><a href="./board_tab?tb_name=come_info">모집안내</a></li>
			<li id="li-structure_safe_pds"><a href="./board_tab?tb_name=structure_safe_pds">자료실</a></li>
			<!-- <li id="li-safe_pds"><a href="./board_tab?tb_name=safe_pds">안전교육자료실</a></li> -->
		</ul>
		<jsp:include page="/board/"/>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : layer popup -->
<div class="layer dor-gallery-layer hidden">
	<h4>title</h4>

	<div><img src="" id="show-image"></div>
	<p id="image-desc"></p>

	<div class="btn-close tc">CLOSE</div>
</div>
<!-- e : layer popup -->


<script type="text/javascript">
	$(document).ready(function () {

		if ( getParameter("tb_name") != "" ) {
			$('#li-' + getParameter("tb_name")).addClass("active");
		}

	});
</script>


<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
