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
			<h2>Check Out 체크 아웃 안내 </h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">Check In/Out</a></li>
				<li class="active"><a href="#">Check Out</a></li>
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
			
			<h3>On Campus Dormitory 교내 생활관</h3>
			<ul class="chlist-cwd fx">	
				<li><p><span>1</span></p><div><span class="fb2">Submit the Check out application form </span> <br/>It will be distributed by administration Team 2~4 weeks before the actual check out date<br><br/><span class="fb">퇴사원서 작성 및 행정팀 제출</span><br/>행정팀에서 퇴사시기로부터       2-4주전 배부 예정 </div></li>
				<li><p><span>2</span></p><div><span class="fb2">Get the inspection by R.A.</span><br> 조교 점검<br>  *R.A.=Resident Assistant</div></li>
				<li class="end"><p><span>3</span></p><div><span class="fb2">Leave the dorm </span><br>퇴사 </div></li>
			</ul>
			<br/><br/>

			<h3>Off Campus Dormitory 외부 임대숙소</h3>
			<ul class="chlist-cwd fx">	
				<li><p><span>1</span></p><div><span class="fb2">Submit the Check out application form in time <em>with a copy of Bank Account (for deposit refund)</em></span> <br/>It will be distributed by administration Team 2~4 weeks before the actual check out date<br><br/><span class="fb"><em>통장 사본(환불용)</em>과 함께 퇴사원서 제출</span><br/>행정팀에서 퇴사시기로부터       2-4주전 배부 예정 </div></li>
				<li><p><span>2</span></p><div><span class="fb2">Get the inspection by R.A.</span><br> 조교 점검<br>*R.A.=Resident Assistant  </div></li>
				<li class="end"><p><span>3</span></p><div><span class="fb2">Leave the dorm </span><br>퇴사 </div></li>
			</ul>
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


<script>
	

	$(window).load(function() {
		var _hash = location.hash;
		if(_hash) {
			$(".guide-tab li").each(function() {
				var _target = $("a", this).attr("href");

				if(_hash == _target) {
					$("a", this).trigger("click");
					return;
				}
			});
		}
	});
</script>