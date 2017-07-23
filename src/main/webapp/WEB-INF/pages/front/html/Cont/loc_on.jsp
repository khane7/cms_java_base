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
        <h2>Location(On Campus)</h2>

        <ul class="nav">
          <li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
          <li><a href="#">Contact Us</a></li>
          <li class="active"><a href="#">Location(On Campus)</a></li>
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
		<div class="tc"><img src="/images/map2.jpg"  style="border:2px solid #333; "></div>
		
		<br>
		<table class="table-cen">
			<caption></caption>
			<tbody>
				<tr>
					<th>
						제1생활관<br>
						Student Residence Hall Ⅰ 
					</th>
					<td>
						서울특별시 성동구 왕십리로 222, 한양대학교 제1학생생활관, 호실명<br>
						Room No., Student Residence Hall 1 , Hanyang University<br>
						   222 Wangsimni-ro, Seongdong-gu, Seoul 04763, Korea<br>
						* 04763 (New) = 133-791 ( Old)
					</td>
					<td>
						<a href="https://www.google.co.kr/maps/place/37%C2%B033'32.9%22N+127%C2%B002'48.9%22E/@37.559127,127.0458097,18z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d37.559127!4d127.046904" class="btn btn-default" target="_blank">바로가기</a>
					</td>
				</tr>
				<tr>
					<th>
						한누리관<br>
						Hannuri Residence Hall
					</th>
					<td>
						서울특별시 성동구 왕십리로 222 한양대학교 한누리관 ,  호실명<br>
						Room No. Hannuri Residence Hall, Hanyang University<br>
						222 Wangsimni-ro, Seongdong-gu, Seoul 04763, Korea 
					</td>
					<td>
						<a href="https://www.google.co.kr/maps/place/37%C2%B033'34.8%22N+127%C2%B002'58.1%22E/@37.559659,127.0488193,18z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d37.559659!4d127.04947" class="btn btn-default" target="_blank">바로가기</a>
					</td>
				</tr>
				<tr>
					<th>
						한양테크노숙사<br>
						Hanyang Techno Residence Hall
					</th>
					<td>
						서울특별시 성동구 왕십리로 222 한양대학교 한양테크노숙사, 호실명<br>
						Room No., Techno Dormitory, Hanyang University <br>
						222 Wangsimni-ro, Seongdong-gu, Seoul 04763, Korea 
					</td>
					<td>
						<a href="https://www.google.co.kr/maps/place/37%C2%B033'35.0%22N+127%C2%B002'59.1%22E/@37.559713,127.0475713,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d37.559713!4d127.04976" class="btn btn-default" target="_blank">바로가기</a>
					</td>
				</tr>
				<tr>
					<th>
						개나리관<br>
						Gaenari Residence Hall 
					</th>
					<td>
						서울특별시 성동구 왕십리로 222, 한양대학교 개나리관, 호실명<br>
						Room No., Gaenari Residence Hall , Hanyang University <br>
						222 Wangsimni-ro, Seongdong-gu, Seoul 04763, Korea 
					</td>
					<td>
						<a href="https://www.google.co.kr/maps/place/37%C2%B033'35.9%22N+127%C2%B002'58.8%22E/@37.559965,127.0485727,18z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d37.559965!4d127.049667" class="btn btn-default" target="_blank">바로가기</a>
					</td>
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