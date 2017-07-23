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
			<h2>생활관 일정</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">대학직영기숙사</a></li>
				<li class="active"><a href="#">생활관 일정</a></li>
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
		<p class="fcred fb" style="padding-bottom:10px;"> * 학생생활관 일정은 사정에 따라 변경될 수 있으므로 학생생활관 홈페이지 공지사항을 반드시 확인해야 함. </p>
          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="2"><img src="/images/sub/201703.jpg" /></td>
                <th>03.02(목) </th>
                <td>1학기 개강</td>
              </tr>
              <tr>
                <th>   03.23(목)</th>
                <td>정기소독일(3월)</td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="2"><img src="/images/sub/201704.jpg" /></td>
                <th>04.12(수) ~ 04.25(화)</th>
                <td>1학기 중간시험 대비 통금시간 연장 기간 </td>
              </tr>
              <tr>
                <th>04.27(목)  </th>
                <td>정기소독일(4월)</td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="2"><img src="/images/sub/201705.jpg" /></td>
                <th>05.25(목) </th>
                <td>정기소독일(5월)</td>
              </tr>
              <tr>
                <th>05.25(목) ~ 05.28(일) </th>
                <td>여름학기 방학연장 인터넷 신청 기간 - 1학기 정규입사 [학기] 거주자 대상</td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="8"><img src="/images/sub/201706.jpg" /></td>
                <th>06.02(금) ~ 6.05(월)</th>
                <td>여름학기 방학연장 신청자 생활관비 납부 기간</td>
              </tr>
              <tr>
                <th>06.07(수) ~ 6.20(화)</th>
                <td>1학기 기말시험 대비 통금시간 연장 기간</td>
              </tr>
              <tr>
                <th>06.13(화)</th>
                <td>여름학기 배정호실 확인–방학연장 신청자 및 [학기+방학] 거주자 중 호실이동 대상자</td>
              </tr>
              <tr>
                <th>06.15(목)</th>
                <td style="color:#06F">2017-2학기 정규입사 - 모집요강 공지 (16:00)  </td>
              </tr>
              <tr>
                <th>06.21(수)</th>
                <td>1학기 종강 </p></td>
              </tr>
              <tr>
                <th>06.21(수) ~ 06.22(목) </th>
                <td>1학기 정규입사 [학기]거주자 정규퇴사 기간</td>
              </tr>
              <tr>
                <th>06.22(목) </th>
                <td>정기소독일(6월)</td>
              </tr>
              <tr>
                <th>06.23(금)</th>
                <td>여름학기 신규호실 배정자 호실이동 기간</td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="6"><img src="/images/sub/201707.jpg" /></td>
                <th>07.10(월) ~ 07.13(목)   </th>
                <td style="color:#06F">2017-2학기 정규입사 - 인터넷 입사신청 기간
</td>
              </tr>
              <tr>
                <th>07.10(월) ~ 07.14(금)</th>
                <td style="color:#06F"> 2017-2학기 정규입사 - 인터넷 입사신청자 증빙서류 제출 기간  </td>
              </tr>
              <tr>
                <th>07.22(토)</th>
                <td>여름학기 방학(1개월) 거주자 퇴사기한 </td>
              </tr>
              <tr>
                <th>07.27(목) </th>
                <td>정기소독일(7월)</td>
              </tr>
              <tr>
                <th>07.28(금)</th>
                <td style="color:#06F"> 2017-2학기 정규입사 - 합격자 발표(15:00)</td>
              </tr>
              <tr>
                <th>07.28(금) ~ 07.31(월) </th>
                <td style="color:#06F">2017-2학기 정규입사 - 합격자 생활관비 납부 기간</td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="7"><img src="/images/sub/201708.jpg" /></td>
                <th>08.03(목) ~ 08.14(월) </th>
                <td style="color:#06F"> 2017-2학기 정규입사 - 미등록결원 추가합격자 선발 기간
</td>
              </tr>
              <tr>
                <th>08.10(목) ~ 08.13(일)</th>
                <td style="color:#06F"> 2017-2학기 정규입사 - 생활관비 납부자 호실배정 신청 기간
</td>
              </tr>
              <tr>
                <th>08.20(일) ~ 08.21(월) </th>
                <td>[학기+방학] 거주자 및 방학(2개월) 거주자 정규퇴사 기간</td>
              </tr>
              <tr>
                <th style="color:#F03">08.22(화) ~ 08.28(월) </th>
                <td style="color:#F03">휴관기간 (7일)</td>
              </tr>
              <tr>
                <th>08.24(목)  </th>
                <td> 정기소독일(8월)</td>
              </tr>
              <tr>
                <th style="color:#06F">08.29(화)          </th>
                <td style="color:#06F"> 2017-2학기 정규입사 - 입사개시일 (10:00부터 입사 가능)</td>
              </tr>
              <tr>
                <th style="color:#06F">08.29(화) ~ 08.31(목)</th>
                <td style="color:#06F"> 2017-2학기 정규입사 - 입사등록(입사) 기간</td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="2"><img src="/images/sub/201709.jpg" /></td>
                <th>09.01(금) </th>
                <td>2학기 개강 </td>
              </tr>
              <tr>
                <th>09.28(목)   </th>
                <td>정기소독일(9월)</td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="2"><img src="/images/sub/201710.jpg" /></td>
                <th>10.12(목) ~ 10.25(수)</th>
                <td> 2학기 중간시험 대비 통금시간 연장 기간 </td>
              </tr>
              <tr>
                <th>10.26(목)</th>
                <td>정기소독일(10월)</td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="3"><img src="/images/sub/201711.jpg" /></td>
                <th>11.23(목)    </th>
                <td>정기소독일(11월)</td>
              </tr>
              <tr>
                <th>11.23(목) ~ 11.26(일)</th>
                <td>겨울학기 방학연장 인터넷 신청 기간 - 2학기 정규입사 [학기] 거주자 대상</td>
              </tr>
              <tr>
                <th>11.30(목) </th>
                <td style="color:#06F"> 2018-1학기 정규입사 - 학부 신입생(재외국민+수시합격자)용 모집요강 공지(16:00)  </td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="9"><img src="/images/sub/201712.jpg" /></td>
                <th>12.01(금) ~ 12.04(월)</th>
                <td> 겨울학기 방학연장 신청자 생활관비 납부 기간</td>
              </tr>
              <tr>
                <th>12.07(목) ~ 12.20(수)</th>
                <td> 2학기 기말시험 대비 통금시간 연장 기간</td>
              </tr>
              <tr>
                <th>12.12(화)  </th>
                <td> 겨울학기 배정호실 확인–방학연장 신청자 및 [학기+방학] 거주자 중 호실이동 대상자</td>
              </tr>
              <tr>
                <th>12.15(금) </th>
                <td><span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcblue">학부 재학생 및 대학원생용 모집요강 공지 (16:00)</span><br/>
 <span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcblue">학부 신입생(정시합격자)용 모집요강 공지 (16:00)</span></td>
              </tr>
              <tr>
                <th>12.21(목) </th>
                <td>2학기 종강 </td>
              </tr>
              <tr>
                <th>12.21(목) ~ 12.22(금)</th>
                <td>2학기 정규입사 [학기]거주자 정규퇴사 기간</td>
              </tr>
              <tr>
                <th>12.23(토) </th>
                <td> 겨울학기 신규호실 배정자 호실이동 기간</td>
              </tr>
              <tr>
                <th>12.28(목) </th>
                <td>정기소독일(12월)</td>
              </tr>
              <tr>
                <th>12.28(목) ~ 1.2(화)</th>
                <td><span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcbrown">학부 신입생(재외국민+수시합격자)용 인터넷 입사신청 기간 </span></td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="11"><img src="/images/sub/201801.jpg" /></td>
                <th>01.05(금)</th>
                <td><span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcbrown">학부 신입생(재외국민+수시합격자)용 합격자 발표(15:00)</span></td>
              </tr>
              <tr>
                <th>01.05(금) ~ 01.08(월)</th>
                <td><span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcbrown">학부 신입생(재외국민+수시합격자)용 합격자 생활관비 납부 기간</span></td>
              </tr>
              <tr>
                <th>01.08(월) ~ 01.11(목)   </th>
                <td> <span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcblue">학부 재학생 및 대학원생용 인터넷 입사신청 기간 </span>   </td>
              </tr>
              <tr>
                <th>01.08(월) ~ 01.12(금)</th>
                <td> <span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcblue">학부 재학생 및 대학원생용 입사신청자 증빙서류 제출 기간</span>  </td>
              </tr>
              <tr>
                <th>01.08(월) ~ 01.17(수)</th>
                <td> <span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcbrown">학부 신입생(재외국민+수시합격자)용 합격자 증빙서류 제출 기간 </span></td>
              </tr>
              <tr>
                <th>01.12(금)</th>
                <td> <span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcbrown">학부 신입생(재외국민+수시합격자)용 미등록결원 추가합격자 발표</span></td>
              </tr>
              <tr>
                <th>01.21(일)  </th>
                <td> 겨울학기 방학(1개월) 거주자 퇴사기한  </td>
              </tr>
              <tr>
                <th>01.25(목) </th>
                <td> 정기소독일(1월)</td>
              </tr>
              <tr>
                <th>01.26(금) </th>
                <td> <span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcblue">학부 재학생 및 대학원생용 합격자 발표(15:00)</span></td>
              </tr>
              <tr>
                <th>01.26(금) ~ 01.29(월)</th>
                <td> <span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcblue">학부 재학생 및 대학원생용 합격자 생활관비 납부 기간</span></td>
              </tr>
              <tr>
                <th>미정</th>
                <td> <span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcbrown">학부 신입생(정시합격자)용 인터넷 입사신청 기간  </span></td>
              </tr>
            </tbody>
          </table>

          <table class="table tbl_schdl">
            <colgroup>
              <col width="25%">
              <col width="20%">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <td rowspan="8"><img src="/images/sub/201802.jpg" /></td>
                <th>02.01(목) ~ 02.12(월) </th>
                <td><span class="fcgreen">2018-1학기 정규입사</span> - <span class="fcblue">학부 재학생 및 대학원생용 미등록결원 추가합격자 선발 기간</span></td>
              </tr>
              <tr>
                <th>02.08(목)~ 02.11(일) </th>
                <td><span class="fcgreen">2018-1학기 정규입사</span> -  <span class="fcblue">생활관비 납부자 호실배정 신청기간</span>  </td>
              </tr>
              <tr>
                <th>02.19(월) ~ 02.20(화) </th>
                <td> [학기+방학] 거주자 및 방학(2개월) 거주자 정규퇴사 기간</td>
              </tr>
              <tr>
                <th class="fcred">02.21(수)~ 02.26(월) </th>
                <td class="fcred"> 휴관기간(6일)</td>
              </tr>
              <tr>
                <th>02.22(목) </th>
                <td> 정기소독일(2월)</td>
              </tr>
              <tr>
                <th class="fcgreen">02.27(화) </th>
                <td class="fcgreen"> 2018-1학기 정규입사 - 입사개시일(10:00부터 입사 가능)</td>
              </tr>
              <tr>
                <th class="fcgreen">02.27(화) ~ 03.01(목) </th>
                <td class="fcgreen"> 2018-1학기 정규입사 - 입사등록(입사) 기간</td>
              </tr>
              <tr>
                <th>02.28(수)</th>
                <td> 2018학년도 입학식</td>
              </tr>
            </tbody>
          </table>

      </div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : layer popup -->
<div class="layer dor-gallery-layer hidden">
	<div><img src="" id="show-image"></div>

	<div class="btn-close tc">CLOSE</div>
</div>
<!-- e : layer popup -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


<script>
	$(function () {
		$("body").on("click", ".room-preview img", function () {
			var _img = $(this).attr("src");

			$(".dor-gallery-layer #show-image").attr("src", _img);
			$(".dor-gallery-layer").bPopup();
		});

		$(".btn-close").click(function () {
			$(".dor-gallery-layer").bPopup().close();
		});

		$(".other-site").click(function () {
			$(".link-list").toggle();
		});
	});
</script>