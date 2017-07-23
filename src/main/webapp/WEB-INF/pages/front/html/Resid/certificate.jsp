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
			<h2>Certificate of Residence 거주확인서  </h2>

			<ul class="nav">
				<li><img src="/images/sub/icon_home.gif" alt="홈"></li>
				<li>Residential Life</li>
				<li class="active"><a href="#">Certificate of Residence </a></li>
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
			<div class="boxtype1 ">
				<h3>Few cautions about getting certificate of residence 행정팀 방문 거주확인서 발급 시 주의사항  </h3>

				<ul class="nodot">	
					<li><span class="fb">1. You can get the certificate of residence 1 day after the application </span>
						<p>(e.g. : Apply at 5:47 Friday <span class="fb">→</span> Get documents on Tuesday <br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Apply at 5:47 Wednesday <span class="fb">→</span>  Get documents on Friday<br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Apply at 5:10  Wednesday<span class="fb">→</span> Get documents on Thursday)
						</p>
						<p>신청일 이후 다음 근무일에 수령 가능합니다. <br/>
							(예시 : 금요일 5:47 신청 <span class="fb">→</span> 화요일 수령 가능 <br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 수요일 5:47 신청 <span class="fb">→</span>  금요일 수령 가능 <br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 수요일 5:10 신청 <span class="fb">→</span>  목요일 수령 가능 ) <br/>

						</p>
					</li>
					<li><span class="pointclr">2. For the Student who did not submit TB test, Residence Hall do not give out certificate of residence.<br/>        결핵검진서 미제출자에게는 거주확인서 발급을 하지 않습니다.</span></li>
				</ul>
				

			</div>
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->
