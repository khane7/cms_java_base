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
				<li><a href="#">Off Campus Dormitory</a></li>
				<li class="active"><a href="#">Female</a></li>
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
				<li><a href="offcam">Male 남성</a></li>
				<li class="active"><a href="offcam_f">Female 여성</a></li>
			</ul>

			<ul class="roomtype3 cearfix" id="tab-subBoxss" style="border-top:0;">
				<li><a href="offcam_f">Rose Ville 로즈빌</a></li>
				<li><a href="offcam_f2" class="on">Eton House 이튼하우스</a></li>
		    </ul>


            <table class="table-cen">
                <thead>
                    <tr>
                        <th colspan="2">TYPE</th>
                        <th>NUMBER</th>
                        <th>FLOOR</th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="6">SINGLE</td>
                        <td rowspan="6">standard</td>
                        <td rowspan="6">12</td>
                        <td rowspan="2">2F</td>
                        <td>ROOM#</td>
                        <td>202</td>
                        <td>203</td>
                        <td>204</td>
                        <td>206</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.1</td>
                        <td>12.5</td>
                        <td>12.76</td>
                        <td>15.49</td>
                    </tr>
                    <tr>
                        <td rowspan="2">3F</td>
                        <td>ROOM#</td>
                        <td>302</td>
                        <td>303</td>
                        <td>304</td>
                        <td>306</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.1</td>
                        <td>12.5</td>
                        <td>12.76</td>
                        <td>15.49</td>
                    </tr>
                    <tr>
                        <td rowspan="2">4F</td>
                        <td>ROOM#</td>
                        <td>402</td>
                        <td>403</td>
                        <td>404</td>
                        <td>406</td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.1</td>
                        <td>12.5</td>
                        <td>12.76</td>
                        <td>12.8</td>
                    </tr>

                    <tr>
                        <td rowspan="12">TWIN</td>
                        <td rowspan="8">standard</td>
                        <td rowspan="8">12</td>
                        <td rowspan="2">2F</td>
                        <td>ROOM#</td>
                        <td>201</td>
                        <td>205</td>
                        <td>207</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>16.64</td>
                        <td>13.1</td>
                        <td>14.17</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">3F</td>
                        <td>ROOM#</td>
                        <td>301</td>
                        <td>305</td>
                        <td>307</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>16.64</td>
                        <td>13.1</td>
                        <td>14.17</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">4F</td>
                        <td>ROOM#</td>
                        <td>401</td>
                        <td>405</td>
                        <td>407</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>16.64</td>
                        <td>13.1</td>
                        <td>14.17</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td rowspan="2">5F</td>
                        <td>ROOM#</td>
                        <td>501</td>
                        <td>502</td>
                        <td>503</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)</td>
                        <td>12.9</td>
                        <td>13.5</td>
                        <td>12.04</td>
                        <td></td>
                    </tr>

                    <tr>
                        <td rowspan="2">superior</td>
                        <td rowspan="2">2</td>
                        <td rowspan="2">5F</td>
                        <td>ROOM#</td>
                        <td>504</td>
                        <td>505</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>AREA(㎡)#</td>
                        <td>12.85</td>
                        <td>16.2</td>
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
                        <td class="alf">서울특별시 성동구 사근동12길 3 이튼하우스,호실명  우) 04762<br />Room No., Eton House, 3, Sageundong 12-gil, Seongdong-gu, Seoul 04762, Republic of Korea</td>
                    </tr>
                    <tr>
                        <th>The distance from HYU to dormitory<br />학교와의 거리 </th>
                        <td class="alf">
                            5-10 min walk to Hanyang University 한양대학교에서 걸어서 5분 내지 10분 거리<br>
                            10 min walk from ‘Wangsimni’ station(Line no. 2, Green Line)<br>
                            왕십리역에서 걸어서 10분 거리(2호선, 초록색 라인)<br>
                            5 min walk from ‘Yongdap’ station <br>
                            (Line no. 2, Green Line). 용답역에서 걸어서 5분 거리(2호선, 초록색 라인)
                        </td>
                    </tr>
                    <tr>
                        <th>Facilities Nearby<br />주변 지역 주요 시설</th>
                        <td class="alf">Convenience store, Restaurant, Supermarket (5 min walk)<br>편의점, 식당, 슈퍼마켓(5분)</td>
                    </tr>
                    <tr>
                        <th>Facilities inside the Apartment<br />방안 주요 시설</th>
                        <td class="alf">
                            Air-conditioning 에어컨, Refrigerator 냉장고, Microwave 전자레인지, Kitchen (per room) 주방, Bed 침대, Desks 책상, Chair 의자,<br> Book shelf 책장, Washing machine 세탁기, Bathroom 욕실
                        </td>
                    </tr>
                    <tr>
                        <th>Internet<br />인터넷 사용 여부</th>
                        <td class="alf">WiFi available 와이파이 사용 가능</td>
                    </tr>
                    <tr>
                        <th>Deposit<br />공과금</th>
                        <td class="alf">Student needs to pay for utilities(gas/electricity/water/internet) 학생이 가스비, 수도세, 전기세 부담</td>
                    </tr>
                </tbody>
            </table>

            <br><br>
            <h3>Photos 호실 사진</h3>
            <table class="table-cen">
                <tr>
                    <th>Single Standard</th>
                    <td class="alf">
						<div class="fl room-preview"  style="width:auto; margin:15px; ">
						<ul>
							<li><img src="/images/sub/eton house_single standard_1.jpg" alt=""></li>
							<li><img src="/images/sub/eton house_single standard_2.jpg" alt=""></li>
							<li><img src="/images/sub/eton house_single standard_3.jpg" alt=""></li>
						</ul>
						</div>
					 </td>
                </tr>
                <tr>
                    <th>Twin Standard</th>
                    <td class="alf">
						<div class="fl room-preview"  style="width:auto; margin:15px; ">
						<ul>
							<li><img src="/images/sub/eton house_twin standard_1.jpg" alt=""></li>
							<li><img src="/images/sub/eton house_twin standard_2.jpg" alt=""></li>
							<li><img src="/images/sub/eton house_twin standard_3.jpg" alt=""></li>
							<li><img src="/images/sub/eton house_twin standard_4.jpg" alt=""></li>
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