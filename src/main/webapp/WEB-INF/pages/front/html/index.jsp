<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- s : header -->
<jsp:include page="top.jsp"/>
<!-- e : header -->


<!-- s : contents -->
<div id="contents" class="clearfix">
	<div class="inner-layout">
		<!-- s : slider -->
		<div class="slider">
			<img src="./images/bnr_sample.jpg" alt="">
		</div>
		<!-- e : slider -->

		<div class="division clearfix">
			<div class="lside">


			   <div class="box">
					<h3 style="color:#7a8c01;">QUICK Link</h3>
					<ul class="greenBox">
						<li class="ql1"><a href="/html/Resid/schedule"><span>Hall Schedule 생활관 일정</span></a></li>
						<li class="ql2"><a href="/html/Facil/notice?tb_name=repair"><span>Repair 고장 수리 접수</span></a></li>
						<li class="ql3"><a href="/html/Cont/contactus"><span>Contact Us 찾아오시는 길</span></a></li>
						<li class="ql4"><a href="/html/community/notice?tb_name=guidebook"><span>Guidebook 생활 가이드</span></a></li>
						<!-- <li class="ql5"><a href="/html/rc/board?tb_name=rc_free"><span>RC 상담신청</span></a></li> -->
					</ul>
				</div>

				<!-- <div class="box">
					<h3><img src="./images/txt_qlink.gif" alt="학생생활관 QUICK링크"></h3>
					<ul class="greenBox">
						<li class="ql1"><a href="/html/info/schedule"><span>생활관 일정</span></a></li>
						<li class="ql2"><a href="/html/guide/checkin#guide4"><span>건물별 호실안내</span></a></li>
						<li class="ql3"><a href="/html/community/board?tb_name=as"><span>고장수리및접수</span></a></li>
						<li class="ql4"><a href="/html/intro/map"><span>찾아오는 길</span></a></li>
						<li class="ql5"><a href="http://www.hanyang.ac.kr/web/www/-2-" target="_blank"><span>제2생활관 금주메뉴</span></a></li>
					</ul>
				</div>  -->

				<div class="box board">
					<h2 style=" font-size:20px; font-weight:700;border-bottom:2px solid #094885; padding:5px 8px 8px 0; margin-bottom:7px; width:97%; position:relative;"><a href="javascript:showBoard1('notice','/html/community/notice');">Notice</a></h2>
					<!--<ul class="tabk">
						<li class="board1 active" id="li-come_info"><a href="javascript:showBoard1('come_info');">Notice</a></li>
						 <li class="board1" id="li-direct_notice"><a href="javascript:showBoard1('direct_notice');">대학직영기숙사</a></li>
						<li class="board1" id="li-happy_notice"><a href="javascript:showBoard1('happy_notice');">행복기숙사</a></li>
						<li class="board1" id="li-rc_notice"><a href="javascript:showBoard1('rc_notice');">RC 교육</a></li>
						<li class="board1" id="li-structure_safe_pds"><a href="javascript:showBoard1('structure_safe_pds');">자료실</a></li>
					</ul>-->
					<!-- <ul class="tabk">
						<li class="board1 active" id="li-normal_notice"><a href="javascript:showBoard1('normal_notice');">일반공지</a></li>
						<li class="board1" id="li-inout_notice"><a href="javascript:showBoard1('inout_notice');">입사/퇴사공지</a></li>
						<li class="board1" id="li-come_info"><a href="javascript:showBoard1('come_info');">모집안내</a></li>
						<li class="board1" id="li-structure_info"><a href="javascript:showBoard1('structure_info');">시설사용안내</a></li>
						<li class="board1" id="li-safe_pds"><a href="javascript:showBoard1('safe_pds');">안전교육자료실</a></li>
					</ul> -->

					<div class="ktab1 tab-content">
						<ul id="ul-board1">
							<li><a href="#"></a> <span></span></li>
							<li><a href="#"></a> <span></span></li>
							<li><a href="#"></a> <span></span></li>
							<li><a href="#"></a> <span></span></li>
							<li><a href="#"></a> <span></span></li>
						</ul>
						<div class="more"><a href="/html/community/notice?tb_name=notice" id="a-more-1"><span>+ More</span></a></div>
					</div>
					<%--<div class="ktab2 tab-content skip">
						<ul>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
						</ul>
					</div>
					<div class="ktab3 tab-content skip">
						<ul>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
						</ul>
					</div>
					<div class="ktab4 tab-content skip">
						<ul>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
						</ul>
					</div>
					<div class="ktab5 tab-content skip">
						<ul>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
							<li><a href="#">[생활과학관] 2016년도 1학기정규입사...</a> <span>2015-12-20</span></li>
						</ul>
					</div>--%>
				</div>

			</div>

			<div class="rside">
				<div class="box">
					<h3 style="color:#af6401">Regulation</h3>
					<ul class="orangeBox">
						<li class="ru1"><a href="/html/Resid/policy"><span>Policy 생활관 규정</span></a></li>
						<li class="ru2"><a href="/html/Resid/inspection"><span>Room inspection 호실점검</span></a></li>
						<!-- <li class="ru3"><a href="/html/info/ruledetail2"><span>생활규정</span></a></li>
						<li class="ru4"><a href="/html/intro/timetable"><span>비상연락처</span></a></li>
						<li class="ru5"><a href="http://www.hanyang.ac.kr/web/www/-2-" target="_blank"><span>오늘의메뉴</span></a></li> -->
					</ul>
				</div>

				<!-- <div class="box board">
					<h2 style="color:#fff; font-size:17px; font-weight:700; background-color:#094885; padding:0px 8px; margin-bottom:7px; width:166px;">For Foreign Students</h2>
					<ul class="tabe">
						<li class="board2 active" id="li-notice"><a href="javascript:showBoard2('notice');">Notice</a></li>
						<li class="board2" id="li-board"><a href="javascript:showBoard2('board');">Board</a></li>
						<li class="board2" id="li-required_document"><a href="javascript:showBoard2('required_document');">Required Document</a></li>
					</ul>

					<div class="etab1 tab-content">
						<ul id="ul-board2">
							<li><a href="#"></a> <span></span></li>
							<li><a href="#"></a> <span></span></li>
							<li><a href="#"></a> <span></span></li>
							<li><a href="#"></a> <span></span></li>
							<li><a href="#"></a> <span></span></li>
						</ul>
					</div> -->
					<%--<div class="etab2 tab-content skip">
						<ul>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
						</ul>
					</div>
					<div class="etab3 tab-content skip">
						<ul>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
							<li><a href="#">How do we give everyone a fair...</a> <span>2015-12-20</span></li>
						</ul>
					</div>--%>
				</div>
			</div>
		</div>

		<!-- s : 바로가기
		<div class="link clearfix">
			<div class="lbox freshman">
				<div class="ibox">
					<h4><img src="./images/txt_info_link.png" alt="신입생용 교내정보시스템 바로가기"></h4>
					<ul>
						<c:forEach var="banner" items="${ bannerList }">
							<li><a href="${ banner.link }" target="${ banner.link_type }">${ banner.title }</a></li>
						</c:forEach>
						<%--<li><a href="https://portal.hanyang.ac.kr/haksa/ShwsAct/indexForm.do?scheduleGb=002S" target="_blank">생활관 입사신청</a></li>
						<li><a href="https://portal.hanyang.ac.kr/haksa/ShwsAct/indexForm.do?scheduleGb=003" target="_blank">생활관 합격자조회</a></li>
						<li><a href="https://portal.hanyang.ac.kr/haksa/ShwsAct/indexForm.do?scheduleGb=006" target="_blank">호실배정 신청</a></li>
						<li><a href="https://portal.hanyang.ac.kr/haksa/ShwsAct/indexForm.do?scheduleGb=010" target="_blank">입사포기 신청</a></li>
						<li><a href="https://portal.hanyang.ac.kr/haksa/ShwsAct/indexForm.do?scheduleGb=008" target="_blank">생활관 입사신청 조회</a></li>
						<li><a href="https://portal.hanyang.ac.kr/haksa/ShwsAct/indexForm.do?scheduleGb=005" target="_blank">생활관비 납부 확인</a></li>
						<li><a href="https://portal.hanyang.ac.kr/haksa/ShwsAct/indexForm.do?scheduleGb=006" target="_blank">호실배정 조회/취소</a></li>--%>
					</ul>
				</div>
			</div>
			<div class="lbox"><a href="#"><img src="./images/bnr_hyin.png" alt="한양인 포탈"></a></div>
			<div class="lbox lp9"><a href="https://portal.hanyang.ac.kr/sso/lgin.do" target="_blank"><img src="./images/bnr_potal.png" alt="재학생용 교내정보시스템 바로가기"></a></div>
			<div class="lbox lp9"><a href="http://www.dormitory.hanyang.ac.kr/html/info/facilities#guide3"><img src="./images/bnr_guesthouse.png" alt="게스트하우스안내"></a></div>
		</div>
		 e : 바로가기 -->

	</div>
</div>
<!-- e : contents -->

<script type="text/javascript">
    var showBoard1 = function (tb_name1, tb_url) {

        $('.board1').each(function () {
            $(this).removeClass("active");
        });
        $('#li-' + tb_name1).addClass("active");

        getProcess4Front("/board/partial_list" + "?dt=" + new Date().getTime(), {
            "tb_name": tb_name1,
            "viewCount": 5
        }, function (data) {

            //showBoard2('notice');
            $('#a-more-1').attr("href", tb_url+"?tb_name=" + tb_name1 );

            if (data.status == "OK") {

                var html1 = "";
                $('#ul-board1').html(html1);

                for (var i = 0; i < 5; i++) {
                    if (data.boardList[i] != undefined) {
                        html1 += "<li class='elip'><a href='"+tb_url+"?tb_name=" + tb_name1 + "&idx=" + data.boardList[i].idx + "'>" + data.boardList[i].title + "</a> <span>" + convertTimestamp(data.boardList[i].regdate) + "</span></li>"
                    } else {
                        html1 += "<li>&nbsp;<span> </span></li>"
                    }
                }
                $('#ul-board1').html(html1);

            }
            return;

        });

    }

    showBoard1('notice','/html/community/notice');


	var showBoard2 = function (tb_name2) {

		$('.board2').each(function () {
			$(this).removeClass("active");
		});
		$('#li-' + tb_name2).addClass("active");

		getProcess4Front("/board/partial_list" + "?dt=" + new Date().getTime(), {
			"tb_name": tb_name2,
			"viewCount": 5
		}, function (data) {
			if (data.status == "OK") {

                var html2 = "";
                $('#ul-board2').html(html2);

                for (var i = 0; i < 5; i++) {

                    if (data.boardList[i] != undefined) {
						html2 += "<li><a href='/html/community/board?tb_name=" + tb_name2 + "&idx=" + data.boardList[i].idx + "'>" + data.boardList[i].title + "</a> <span>" + convertTimestamp(data.boardList[i].regdate) + "</span></li>"
                    } else {
						html2 += "<li>&nbsp;<span> </span></li>"
                    }
                }
                $('#ul-board2').html(html2);
            }
            return;

		});

	}

	showBoard2('notice');



	<c:set var="leftPosition" value="0" />
	<c:forEach var="popup" items="${ popupList }" varStatus="status">
		<c:set var="leftPosition" value="${ ( popup.size_x + 20 ) * status.index }"/>;
		<c:if test="${ popup.is_use ne '' && popup.is_use eq 'Y' }">
			if ( getCookie('popup_${ popup.idx }') != 'done' ) {
				window.open( '${pageContext.request.contextPath}/cms_manager/display_manager/popup/view?idx=${ popup.idx }', 'popup_name_${ popup.idx }', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=${ popup.size_x },height=${ popup.size_y },top=0,left=${ leftPosition }' );
			}
	</c:if>
	</c:forEach>

</script>




<!-- s : footer -->
<jsp:include page="bottom.jsp"/>
<!-- e : footer -->
