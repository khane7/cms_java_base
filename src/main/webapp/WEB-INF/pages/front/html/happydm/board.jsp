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
				<li><a href="#">행복기숙사</a></li>
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
		<%--<ul class="guide-tab">
			<li class="active"><a href="#">일반공지</a></li>
			<li><a href="#">입사/퇴사 공지</a></li>
			<li><a href="#">모집안내</a></li>
			<li><a href="#">시설사용안내</a></li>
			<li><a href="#">안전교육자료실</a></li>
		</ul>--%>

		<div class="bbsnotice">글 작성은 로그인 후 이용할 수 있습니다.<br/>
		개인정보 또는 저작권에 관련된 게시물은 예고없이 삭제될 수 있습니다.<br/>
		타인의 개인정보를 도용/유출/노출하거나 저작권(동영상, 사진, 음원, 기사)이 포함된 자료를 무단으로 게시할 경우 작성자가 개인정보보호법 또는 지적재산권 침해로 처벌받을 수 있으니<br/> 주의하시기 바랍니다.
		</div>


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

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
