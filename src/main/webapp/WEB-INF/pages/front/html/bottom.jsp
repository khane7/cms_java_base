<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- s : footer -->
<div id="footer" class="clearfix">
	<div class="inner-layout-cnt clearfix">
		<p class="fl">
			COPYRIGHT(C) 한양대학교 학생생활관. ALL rights reserved. <br>
			04763 서울시 성동구 왕십리로 222 한양대학교 학생생활관 | TEL : 02-2220-1471 | FAX : 02-2290-3404<br>
			홈페이지 책임자 : 학생생활관 부관장 백종호 / 홈페이지 관리자 : 오상분
		</p>

		<div class="fr">
			<div class="li">
				<a href="javascript:show_popup();" class="bold">개인정보처리방침</a>
				|
				<a href="javascript:show_popup2();" target="_blank" class="bold">이메일무단수집금지</a>
			</div>
			<div class="li">
				<div class="other-site">교내주요서비스 바로가기</div>
				<ul class="link-list hidden">
					<li><a href="http://www.hyili.hanyang.ac.kr/" target="_blank">국제어학원</a></li>
					<li><a href="http://examination.hanyang.ac.kr/" target="_blank">고시반</a></li>
					<li><a href="http://research.hanyang.ac.kr/" target="_blank">산학협력단</a></li>
					<li><a href="http://www.hvc.hanyang.ac.kr/" target="_blank">사회봉사단</a></li>
					<li><a href="http://cce.hanyang.ac.kr/" target="_blank">사회교육원</a></li>
					<li><a href="http://help.hanyang.ac.kr/" target="_blank">양성평등센터</a></li>
					<li><a href="http://iic.hanyang.ac.kr/" target="_blank">정보통신처</a></li>
					<li><a href="http://cbi.hanyang.ac.kr/" target="_blank">창업보육센터</a></li>
					<li><a href="http://job.hanyang.ac.kr/" target="_blank">커리어개발센터</a></li>
					<li><a href="http://counseling.hanyang.ac.kr/" target="_blank">한양상담센터</a></li>
					<li><a href="http://tesol.hanyang.ac.kr/" target="_blank">한양 TESOL</a></li>
					<li><a href="http://www.rhooters.com/" target="_blank">한양대학교 응원단</a></li>
					<li><a href="http://www.hyumc.com/" target="_blank">한양의료원</a></li>
				</ul>
			</div>

			<%--<div class="counter">
				<img src="/images/icon_visitor.gif" alt="방문자수">&nbsp;
				TODAY : 88 &nbsp;|&nbsp; TOTAL : 1,222,000
				</ul>
			</div>--%>

		</div>
	</div>
	<!-- e : footer -->

	<script>
		$(function () {
			$(".other-site").click(function () {
				$(".link-list").toggle();
			});
		});
	</script>
	</body>
	</html>