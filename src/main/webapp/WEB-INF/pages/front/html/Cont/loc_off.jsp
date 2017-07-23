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
        <h2>Location(Off Campus)</h2>

        <ul class="nav">
          <li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
          <li><a href="#">Contact Us</a></li>
          <li class="active"><a href="#">Location(Off Campus)</a></li>
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
		<div class="tc"><img src="/images/map3.jpg"  style="border:2px solid #333; "></div>
		
		<br>
		<h3>외부 임대기숙사</h3>
			<table class="table-cen">
				<colgroup>
					<col width="20%" />
					<col width="10%" />
					<col width="" />
				</colgroup>

				<caption></caption>
				<tbody>
					<tr>
						<td rowspan="2">Majang Ville</td>
						<td colspan="2">
							서울특별시 성동구 마장로46길 4 마장빌  우) 04757<br>
							Majang ville, 4, Majang-ro 46-gil, Seongdong-gu, Seoul 04757, Republic of Korea
						</td>
					</tr>
					<tr>
						<td>
							<a href="https://www.google.co.kr/maps/place/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EC%84%B1%EB%8F%99%EA%B5%AC+%EB%A7%88%EC%9E%A5%EB%8F%99+777-3/@37.5673081,127.0455697,19z/data=!4m5!3m4!1s0x357ca4ac813157d1:0x63f7a8ca9add19f5!8m2!3d37.56734!4d127.0457153?hl=ko" class="btn btn-default" target="_blank">지도</a>
						</td>
						<td>
							<img src="/images/map3_01.jpg"  alt="마장빌" />
						</td>
					</tr>
                    <tr>
                        <td rowspan="2">Rose Ville</td>
                        <td colspan="2">
                            서울특별시 성동구 사근동길 10 로즈빌 우) 04762<br>
                            Rose ville, 10, Sageundong-gil, Seongdong-gu,  Seoul 04762, Republic of Korea
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="https://www.google.co.kr/maps/place/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EC%84%B1%EB%8F%99%EA%B5%AC+%EC%82%AC%EA%B7%BC%EB%8F%99%EA%B8%B8+10/@37.5600772,127.0400267,17z/data=!3m1!4b1!4m5!3m4!1s0x357ca4a7b6d5fe89:0x432aa65efe911007!8m2!3d37.5600772!4d127.0422154?hl=ko" class="btn btn-default" target="_blank">지도</a>
                        </td>
                        <td>
                            <img src="/images/map3_02.jpg"  alt="로즈빌" />
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">Smart Ville</td>
                        <td colspan="2">
                            서울특별시 성동구 사근동길 8-1 스마트빌  우) 04762<br>
                            Smart ville, 8-1, Sageundong-gil, Seongdong-gu, Seoul 04762, Republic of Korea
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="https://www.google.co.kr/maps/place/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EC%84%B1%EB%8F%99%EA%B5%AC+%EC%82%AC%EA%B7%BC%EB%8F%99%EA%B8%B8+10/@37.5600772,127.0403749,17z/data=!3m1!4b1!4m5!3m4!1s0x357ca4a7b6d5fe89:0x432aa65efe911007!8m2!3d37.5600772!4d127.0422154?hl=ko" class="btn btn-default" target="_blank">지도</a>
                        </td>
                        <td>
                            <img src="/images/map3_03.jpg"  alt="스마트빌" />
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">Eton House</td>
                        <td colspan="2">
                            서울특별시 성동구 사근동12길 3 이튼하우스  우) 04762<br>
                            Eton House, 3, Sageundong 12-gil, Seongdong-gu, Seoul 04762, Republic of Korea
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="https://www.google.co.kr/maps/place/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+%EC%84%B1%EB%8F%99%EA%B5%AC+%EC%82%AC%EA%B7%BC%EB%8F%9912%EA%B8%B8+3/@37.5608032,127.0462371,17z/data=!3m1!4b1!4m5!3m4!1s0x357ca4afa4298a51:0xf97d9787567595ab!8m2!3d37.5608032!4d127.0484258?hl=ko" class="btn btn-default" target="_blank">지도</a>
                        </td>
                        <td>
                            <img src="/images/map3_04.jpg"  alt="eton House" />
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">
                            Domitory of hanyang institute of international education<br>
                            (Hyosung Viile)
                        </td>
                        <td colspan="2">
                            서울특별시 성동구 사근동 189번지<br />
                            189, Sageun-dong, Seongdong-gu, Seoul, Korea 222, Wangsimni-ro, Seongdong-gu, Seoul, Korea
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="http://map.naver.com/?menu=location&mapMode=0&lat=37.5610626&lng=127.0475206&dlevel=12&searchCoord=126.7898247%3B37.6557974&query=7ISc7Jq47Yq567OE7IucIOyEseuPmeq1rCDsgqzqt7zrj5kgMjA0LTPrsojsp4A%3D&mpx=02285560%3A37.6557974%2C126.7898247%3AZ11%3A0.0345383%2C0.0149344&tab=1&enc=b64" class="btn btn-default" target="_blank">지도</a>
                        </td>
                        <td>
                             <img src="/images/map3_05.jpg"  alt="eton House" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Download<br>(CAMPUS MAP)
                        </td>
                        <td colspan="2"><a href="http://www.hanyang.ac.kr/web/www/map_seoul"  target="_blank">http://www.hanyang.ac.kr/web/www/map_seoul</a></td>
                    </tr>
				</tbody>
			</table>
			<br/><br/>
			<div class="station-bx"> <div class="bus"> <h4 class="d-title2">Surrounding Stations</h4> <p class="place"><a href="http://map.naver.com/?dlevel=13&amp;x=127.0433461&amp;y=37.5567721&amp;stationId=106924&amp;enc=b64" target="_blank" title="새창으로 열기">Hanyang University Main Gate</a></p> <ul class="route"> <li><strong>Main Line</strong><a href="http://me2.do/FMUYIdBE" target="_blank" title="새창으로 열기">#121</a> , <a href="http://me2.do/FYDjlXKn" target="_blank" title="새창으로 열기">#302</a>, <a href="http://me2.do/FG0qb8pI" target="_blank" title="새창으로 열기">N62(Night Bus)</a></li> <li><strong>Branch Line</strong><a href="http://me2.do/GnupF6mx" target="_blank" title="새창으로 열기">#2012</a>, <a href="http://me2.do/xArIbgqB" target="_blank" title="새창으로 열기">#2014</a>, <a href="http://me2.do/5ctgaxFf" target="_blank" title="새창으로 열기">#2016</a>, <a href="http://me2.do/5wKBwOHT" target="_blank" title="새창으로 열기">#2222</a></li> </ul> </div> <div class="subway"> <h4 class="d-title2">Surrounding Subways</h4> <ul class="station"> <li><img alt="2호선 한양대, 이전역 왕십리, 다음역 뚝섬" src="https://www.hanyang.ac.kr/html-repositories/images/custom/eng/campus/subway1.png"><span><a href="http://me2.do/5U8fpBcV" target="_blank" title="새창으로 열기">Hanyang University Station, Subway Line #2, Exit #2</a></span></li> <li><img alt="2호선 용답역, 이전역 성수, 다음역 신답" src="https://www.hanyang.ac.kr/html-repositories/images/custom/eng/campus/subway2.png"><span><a href="http://me2.do/x5j6abWL" target="_blank" title="새창으로 열기">Yongdap Station, Subway Line #2</a></span></li> <li><img alt="분당 왕십리역, 다음역 서울숲" src="https://www.hanyang.ac.kr/html-repositories/images/custom/eng/campus/subway3.png"><span><a href="http://me2.do/GoJxNcS3" target="_blank" title="새창으로 열기">Wangsimni Station, Bundang Line</a></span></li> <li><img alt="경의중앙 왕십리역, 이전역 응봉, 다음역 청량리" src="https://www.hanyang.ac.kr/html-repositories/images/custom/eng/campus/subway4.png"><span><a href="http://me2.do/xsxomk7O" target="_blank" title="새창으로 열기">Wangsimni Station, Gyeongui Line</a></span></li> </ul> </div> </div>

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