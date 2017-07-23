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
				<li class="active"><a href="offcam">Male 남성</a></li>
				<li><a href="offcam_f">Female 여성</a></li>
			</ul>

			<ul class="roomtype3 cearfix" id="tab-subBoxss" style="border-top:0;">
				<li><a href="offcam">Smart Ville 스마트빌</a></li>
				<li><a href="offcam2" class="on">Majang Ville 마장빌</a></li>
		    </ul>

			<table class="table-cen">
                <thead>
                    <tr>
                        <th colspan="2">TYPE</th>
                        <th>NUMBER</th>
                        <th>FLOOR</th>
                        <th colspan="5"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="36">TWIN</td>
                        <td rowspan="16">superior</td>
                        <td rowspan="16">32</td>
                        <td rowspan="2">2층</td>
                        <td>ROOM#</td>
                        <td>201</td>
                        <td>202</td>
                        <td>204</td>
                        <td>205</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>15.62</td>
                        <td>15.6</td>
                        <td>15.54</td>
                        <td>15.54</td>
                    </tr>
                    <tr>
                        <td rowspan="2">3층</td>
                        <td>ROOM#</td>
                        <td>301</td>
                        <td>302</td>
                        <td>304</td>
                        <td>305</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>15.62</td>
                        <td>15.6</td>
                        <td>15.54</td>
                        <td>15.54</td>
                    </tr>
                    <tr>
                        <td rowspan="2">4층</td>
                        <td>ROOM#</td>
                        <td>401</td>
                        <td>402</td>
                        <td>404</td>
                        <td>405</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>15.62</td>
                        <td>15.6</td>
                        <td>15.54</td>
                        <td>15.54</td>
                    </tr>
                    <tr>
                        <td rowspan="2">5층</td>
                        <td>ROOM#</td>
                        <td>501</td>
                        <td>502</td>
                        <td>504</td>
                        <td>505</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>15.62</td>
                        <td>15.6</td>
                        <td>15.54</td>
                        <td>15.54</td>
                    </tr>
                    <tr>
                        <td rowspan="2">6층</td>
                        <td>ROOM#</td>
                        <td>601</td>
                        <td>602</td>
                        <td>604</td>
                        <td>605</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>15.62</td>
                        <td>15.6</td>
                        <td>15.54</td>
                        <td>15.54</td>
                    </tr>
                    <tr>
                        <td rowspan="2">7층</td>
                        <td>ROOM#</td>
                        <td>701</td>
                        <td>702</td>
                        <td>704</td>
                        <td>705</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>15.62</td>
                        <td>15.6</td>
                        <td>15.54</td>
                        <td>15.54</td>
                    </tr>
                    <tr>
                        <td rowspan="2">8층</td>
                        <td>ROOM#</td>
                        <td>801</td>
                        <td>802</td>
                        <td>804</td>
                        <td>805</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>15.62</td>
                        <td>15.6</td>
                        <td>15.54</td>
                        <td>15.54</td>
                    </tr>
                    <tr>
                        <td rowspan="2">9층</td>
                        <td>ROOM#</td>
                        <td>901</td>
                        <td>902</td>
                        <td>904</td>
                        <td>905</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>15.62</td>
                        <td>15.6</td>
                        <td>15.54</td>
                        <td>15.54</td>
                    </tr>

                    <tr>
                        <td rowspan="16">Deluxe<br>(Twin Superior + Attic)</td>
                        <td rowspan="16">8</td>
                        <td rowspan="2">2층</td>
                        <td>ROOM#</td>
                        <td>203</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.14</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">3층</td>
                        <td>ROOM#</td>
                        <td>303</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.14</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <td rowspan="2">4층</td>
                        <td>ROOM#</td>
                        <td>403</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.14</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <td rowspan="2">5층</td>
                        <td>ROOM#</td>
                        <td>503</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.14</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <td rowspan="2">6층</td>
                        <td>ROOM#</td>
                        <td>603</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.14</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <td rowspan="2">7층</td>
                        <td>ROOM#</td>
                        <td>703</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.14</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <td rowspan="2">8층</td>
                        <td>ROOM#</td>
                        <td>803</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.14</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <td rowspan="2">9층</td>
                        <td>ROOM#</td>
                        <td>903</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>20.14</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

            <br><br>
            <h3>Facilities 시설 안내 </h3>
            <table class="table-cen">
                <tbody>
                    <tr>
                        <th>Address<br />주소 </th>
                        <td class="alf">서울특별시 성동구 마장로46길 4 마장빌 호실명  우) 04757<br />Room No. Majang ville, 4, Majang-ro 46-gil, Seongdong-gu, Seoul 04757, Republic of Korea</td>
                    </tr>
                    <tr>
                        <th>The distance from HYU to dormitory<br />학교와의 거리 </th>
                        <td class="alf">
                            20 min walk to Hanyang University 한양대학교에서 걸어서 20분<br>
                            5-10 min by bus to Hanyang University 한양대학교에서 버스로 5분 내지 10분
                        </td>
                    </tr>
                    <tr>
                        <th>Facilities Nearby<br />주변 지역 주요 시설</th>
                        <td class="alf">Convenience store, Restaurant, Supermarket (5 min walk)<br>편의점, 식당, 슈퍼마켓(5분거리)</td>
                    </tr>
                    <tr>
                        <th>Facilities inside the Apartment<br />방안 주요 시설</th>
                        <td class="alf">
                            Air-conditioning 에어컨, Refrigerator 냉장고, Bed 침대, Desk 책상(Only one per each room 호실 당 하나),<br> Chair 의자(Only one per each room 호실 당 하나), Book shelf 책장, Washing machine 세탁기, Kitchen (per room) 주방<br>
                            -Microwave on each floor (5 rooms share) 층 별로 전자레인지 비치<br>
                            -New Building &amp; Facilities: Elevator 건물 내에 엘리베이터 있음
                        </td>
                    </tr>
                    <tr>
                        <th>Internet<br />인터넷 사용 여부</th>
                        <td class="alf">WiFi available 와이파이 사용 가능</td>
                    </tr>
                    <tr>
                        <th>Deposit<br />공과금</th>
                        <td class="alf">Student needs to pay for utilities (gas/electricity/water) 학생이 수도세, 전기세, 가스비 공과금 부담</td>
                    </tr>
                </tbody>
            </table>

            <br><br>
            <h3>Photos 호실 사진</h3>
            <table class="table-cen">
                <tr>
                    <th>Twin Superior</th>
                    <td class="alf">
						<div class="fl room-preview"  style="width:auto; margin:15px; ">
						<ul>
							<li><img src="/images/sub/majang ville_twin deluxe_1.jpg" alt=""></li>
							<li><img src="/images/sub/majang ville_twin superior_2.jpg" alt=""></li>
						</ul>
						</div>
					 </td>
                </tr>
                <tr>
                    <th>Twin Deluxe</th>
                     <td class="alf">
						<div class="fl room-preview"  style="width:auto; margin:15px; ">
						<ul>
							<li><img src="/images/sub/majang ville_twin superior_1.jpg" alt=""></li>
							<li><img src="/images/sub/majang ville_twin deluxe_2.jpg" alt=""></li>
							<li><img src="/images/sub/majang ville_twin deluxe_3.jpg" alt=""></li>
							<li><img src="/images/sub/majang ville_twin deluxe_4.jpg" alt=""></li>
						</ul>
						</div>
					</td>
                </tr>
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