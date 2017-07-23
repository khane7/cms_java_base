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
			<h2>Off Campus Dormitory 외부 임대숙소</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">Hall Facilities</a></li>
				<li><a href="#">Off Campus Dormitory</a></li>
				<li class="active"><a href="#">Male</a></li>
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

			<ul class="guide-tab">
				<li class="active"><a href="Repair">Male 남성</a></li>
				<li><a href="offcam_f">Female 여성</a></li>
			</ul>

			<ul class="roomtype3 cearfix" id="tab-subBoxss" style="border-top:0;">
				<li><a href="offcam" class="on">Smart Ville 스마트빌</a></li>
				<li><a href="offcam2">Majang Ville 마장빌</a></li>
		    </ul>


            <!-- s : table -->
            <table class="table-cen">
                <thead>
                    <tr>
                        <th>TYPE</th>
                        <th>NUMBER</th>
                        <th>FLOOR</th>
                        <th colspan="5"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="2">standard (Basement)</td>
                        <td rowspan="2">2</td>
                        <td rowspan="2">BASEMENT</td>
                        <td>ROOM#</td>
                        <td>B1</td>
                        <td>B2</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.87</td>
                        <td>14.3</td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td rowspan="8">superior</td>
                        <td rowspan="8">8</td>
                        <td rowspan="2">1F</td>
                        <td>ROOM#</td>
                        <td>101</td>
                        <td>102</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.87</td>
                        <td>14.3</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">2F</td>
                        <td>ROOM#</td>
                        <td>201</td>
                        <td>202</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.87</td>
                        <td>14.3</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">3F</td>
                        <td>ROOM#</td>
                        <td>301</td>
                        <td>302</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.87</td>
                        <td>14.3</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">4F</td>
                        <td>ROOM#</td>
                        <td>401</td>
                        <td>402</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.87</td>
                        <td>14.3</td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td rowspan="2">standard (Basement)</td>
                        <td rowspan="2">2</td>
                        <td rowspan="2">BASEMENT</td>
                        <td>ROOM#</td>
                        <td>B4</td>
                        <td>B5</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>14.7</td>
                        <td>14.7</td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td rowspan="10">superior</td>
                        <td rowspan="10">12</td>
                        <td rowspan="2">BASEMENT</td>
                        <td>ROOM#</td>
                        <td>B3</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>29.06</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">1F</td>
                        <td>ROOM#</td>
                        <td>104</td>
                        <td>105</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>14.72</td>
                        <td>14.7</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">2F</td>
                        <td>ROOM#</td>
                        <td>203</td>
                        <td>204</td>
                        <td>205</td>
                        <td>206</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>14.72</td>
                        <td>14.7</td>
                        <td>14.72</td>
                        <td>14.72</td>
                    <tr>
                        <td rowspan="2">3F</td>
                        <td>ROOM#</td>
                        <td>303</td>
                        <td>304</td>
                        <td>305</td>
                        <td>306</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>14.72</td>
                        <td>14.7</td>
                        <td>14.72</td>
                        <td>14.72</td>
                    </tr>
                    <tr>
                        <td rowspan="2">5F</td>
                        <td>ROOM#</td>
                        <td>501</td>
                        <td colspan="2">Bathroom outside the apartment</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>23.34</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td rowspan="6">deluxe</td>
                        <td rowspan="6">4</td>
                        <td rowspan="2">1F</td>
                        <td>ROOM#</td>
                        <td>103</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>29.06</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">4F</td>
                        <td>ROOM#</td>
                        <td>403</td>
                        <td>404</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.34</td>
                        <td>20.5</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">5F</td>
                        <td>ROOM#</td>
                        <td>502</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>22.08</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                </tbody>
            </table>
            <!-- e : table -->

            <br><br>
            <h3>Facilities 시설 안내 </h3>
            <table class="table-cen">
                <tbody>
                    <tr>
                        <th>Address<br />주소</th>
                        <td class="alf">서울특별시 성동구 사근동길 8-1 스마트빌 호실명  우) 04762<br />Room No, Smart ville, 8-1, Sageundong-gil, Seongdong-gu, Seoul 04762, Republic of Korea</td>
                    </tr>
                    <tr>
                        <th>The distance from HYU to dormitory<br />학교와의 거리</th>
                        <td class="alf">
                            Located next to one of the university gates <br>
                            (near hospital). 한양대학교 병원과 인접함<br>
                            1 min walk to Hanyang University. 한양대학교에서 걸어서 1분 거리<br>
                            5 min walk from ‘Wangsimni’ station 왕십리역에서 걸어서 5분 거리<br>
                            (Line No. 2, Green Line) 2호선 초록색<br>
                            1 min walk from bus station 버스 정류장에서 걸어서 1분 거리(4211번 버스)
                        </td>
                    </tr>
                    <tr>
                        <th>Facilities Nearby<br />주변 지역 주요 시설 </th>
                        <td class="alf">
                            Convenience store, Restaurant,Supermarket (5 min walk) <br>
                            편의점, 식당, 슈퍼마켓(5분)
                        </td>
                    </tr>
                    <tr>
                        <th>Facilities inside the Apartment<br />방안 주요 시설</th>
                        <td class="alf">
                            Air-conditioning 에어컨, Refrigerator 냉장고, <br>
                            Microwave 전자레인지, Bed 침대, Desks 책상, Chair 의자, <br>
                            Book shelf 책장, Washing machine 세탁기, Induction cooker 인덕션(No sink 싱크대없음)<br>
                            (Only twin #501, 502 have induction cooker +sink 501,502호만 싱크대 비치)<br>
                            Bathroom(#501 has bathroom outside the room) 화장실(501호의 경우 화장실이 문 밖에 위치)
                        </td>
                    </tr>
                    <tr>
                        <th>Internet<br />인터넷 사용 여부</th>
                        <td class="alf">Wifi-available 와이파이 사용 가능</td>
                    </tr>
                    <tr>
                        <th>Deposit<br />공과금 </th>
                        <td class="alf">Student needs to pay for utilities (gas/electricity) 학생이 직접 가스 및 전기 공과금 부담</td>
                    </tr>
                </tbody>
            </table>

            <br><br>
            <h3>Photos 호실 사진</h3>
            <table class="table-cen">
                <tbody>
                    <tr>
                        <th>Single Standard (Basement)</th>
                        <td class="alf">
							<div class="fl room-preview"  style="width:auto; margin:15px; ">
							<ul>
								<li><img src="/images/sub/smart ville_single_1.png" alt=""></li>
								<li><img src="/images/sub/smart ville_single_2.png" alt=""></li>
								<li><img src="/images/sub/smart ville_single_3.png" alt=""></li>
								<li><img src="/images/sub/smart ville_single_4.png" alt=""></li>
								<li><img src="/images/sub/smart ville_single_5.png" alt=""></li>
								<li><img src="/images/sub/smart ville_single_6.png" alt=""></li>
							</ul>
							</div>
						 </td>
                    </tr>
                    <tr>
                        <th>Single Superior (Above the ground)</th>
                        <td class="alf">
							<div class="fl room-preview"  style="width:auto; margin:15px; ">
							<ul>
								<li><img src="/images/sub/smart ville_single_7.JPG" alt=""></li>
								<li><img src="/images/sub/smart ville_single_8.jpg" alt=""></li>
							</ul>
							</div>
						 </td>
                    </tr>
                    <tr>
                        <th>Twin Standard (Basement)</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Twin Superior (Above the ground)</th>
                        <td class="alf">
							<div class="fl room-preview"  style="width:auto; margin:15px; ">
							<ul>
								<li><img src="/images/sub/smart ville_twin_1.jpg" alt=""></li>
								<li><img src="/images/sub/smart ville_twin_2.jpg" alt=""></li>
								<li><img src="/images/sub/smart ville_twin_3.jpg" alt=""></li>
								<li><img src="/images/sub/smart ville_twin_4.jpg" alt=""></li>
							</ul>
							</div>
						 </td>
                    </tr>
                    <tr>
                        <th>Twin Deluxe</th>
                        <td class="alf">
							<div class="fl room-preview"  style="width:auto; margin:15px; ">
							<ul>
								<li><img src="/images/sub/smart ville_deluxe_1.jpg" alt=""></li>
								<li><img src="/images/sub/smart ville_deluxe_2.jpg" alt=""></li>
								<li><img src="/images/sub/smart ville_deluxe_3.jpg" alt=""></li>
								<li><img src="/images/sub/smart ville_deluxe_4.jpg" alt=""></li>
								<li><img src="/images/sub/smart ville_deluxe_5.jpg" alt=""></li>
							</ul>
							</div>
						 </td>
                    </tr>
                </tbody>
            </table>

		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->


<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->

<!-- <div class="dor-gallery-layer" style="padding:10px; display:none">
	<div class="fr btn-close" style="border:1px solid #ccc; padding:0 10px;">X</div>
	<img src="" id="show-image">
</div>


<script>

    $(function() {
      $("body").on("click", ".room-preview img", function() {
        var _img = $(this).attr("src");

        $(".dor-gallery-layer #show-image").attr("src", _img);
        $(".dor-gallery-layer").bPopup();
      });

      $(".btn-close").click(function() {
        $(".dor-gallery-layer").bPopup().close();
      });

      $(".other-site").click(function() {
        $(".link-list").toggle();
      });
    });


  </script> -->

  <!-- s : layer popup -->
<div class="layer dor-gallery-layer hidden">
<div><img src="" id="show-image"></div>

<div class="btn-close tc">CLOSE</div>
</div>
<!-- e : layer popup -->

  <script>
  $(function() {
      $("body").on("click", ".room-preview img", function() {
        var _img = $(this).attr("src");

        $(".dor-gallery-layer #show-image").attr("src", _img);
        $(".dor-gallery-layer").bPopup();
      });

      $(".btn-close").click(function() {
        $(".dor-gallery-layer").bPopup().close();
      });

      $(".other-site").click(function() {
        $(".link-list").toggle();
      });
  });
  </script>