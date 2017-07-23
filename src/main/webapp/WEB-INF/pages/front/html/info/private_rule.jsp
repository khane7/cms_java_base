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
			<h2>학생생활관 내규</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관 소개</a></li>
				<li class="active"><a href="#">학생생활관 내규</a></li>
			</ul>
		</div>
		<!-- e : top nav -->

		<!-- s : top banner -->
		<div class="sub-top-bnr">
			<img src="/images/sub/bnr_top.jpg" alt="">
		</div>
		<!-- e : top banner -->

		<!-- s : sub contents -->
		<div class="sub-contents clearfix">

			<p>업데이트중.</p>

			<br><br><br>
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->


<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


<script>
	$(function () {
		$("body").on("click", ".guide-tab li a", function (e) {
			e.preventDefault();

			var target = $(this).attr("href");
			console.log(target);

			$(".guidebox").hide();
			$(target).show();
		});

		$(".other-site").click(function () {
			$(".link-list").toggle();
		});
	});
</script>