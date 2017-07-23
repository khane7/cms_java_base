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
			<h2>On Campus Dormitory 교내 기숙사 </h2>

			<ul class="nav">
				<li><img src="/images/sub/icon_home.gif" alt="홈"></li>
				<li>Hall Facilities</li>
				<li>On Campus Dormitory</li>
				<li class="active">Female</li>
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
				<li><a href="oncam">Male 남성</a></li>
				<li class="active"><a href="oncam2">Female 여성</a></li>
			</ul>
			<table class="table-cen">
			  <tr>
				<th>Dormitory Name<br />숙소명</th>
				<th>Room Type<br />호실타입</th>
				<th>Type of Bed<br />침대타입</th>
				<th>Toilet<br />화장실/샤워실 위치</th>
				<th>Size of the Room<br />호실면적(m2)</th>
			  </tr>
			  <tr>
				<td rowspan="2">Hannuri Residence hall<br />한누리관</td>
				<td>Single Room<br />1인실</td>
				<td>Single<br />싱글침대</td>
				<td>In the apartment<br />실내</td>
				<td>19.5</td>
			  </tr>
			  <tr>
				<td>Two Person Room<br />2인실</td>
				<td>Single<br />싱글침대</td>
				<td>In the apartment<br />실내</td>
				<td>19.5</td>
			  </tr>
			  <tr>
				<td>Gaenari Residence Hall<br />개나리관</td>
				<td>Single Room<br />1인실</td>
				<td>Single<br />싱글침대</td>
				<td>In the apartment<br />실내</td>
				<td>19.5</td>
			  </tr>
			  <tr>
				<td>Residence Hall #1<br />제1학생생활관</td>
				<td>Three Person Room<br />3인실</td>
				<td>Single<br />싱글침대</td>
				<td>On the Floor<br />층별공용</td>
				<td>32.5</td>
			  </tr>
			</table>
			<br/><br/>
			<h3>Photos 사진</h3>
			<table class="table-cen">
			  <colgroup>
			  <col width="20%">
			  <col width="20%">
			  <col width="">
			  </colgroup>
			  <tbody>
				<tr>
				  <th rowspan="2">Hannuri Residence hall<br />한누리관</th>
				  <td class="fwb">Two  Person Room<br />2인실</td>
				  <td class="alf">
				    <div class="fl room-preview"  style="width:auto; margin:15px; ">
				  	<ul>
				  		<li><img src="/images/sub/oncam_f_hannuri_2_1.JPG" alt=""></li>
				  		<li><img src="/images/sub/oncam_f_hannuri_2_2.JPG" alt=""></li>
				  		<li><img src="/images/sub/oncam_f_hannuri_2_3.JPG" alt=""></li>
					</ul>
					</div>
				  </td>
				</tr>
				<tr>
				  <td class="fwb">Single Room<br />1인실</td>
				  <td class="alf">
				    <div class="fl room-preview"  style="width:auto; margin:15px; ">
				  	<ul>
				  		<li><img src="/images/sub/oncam_f_hannuri_1_1.jpg" alt=""></li>
				  		<li><img src="/images/sub/oncam_f_hannuri_1_2.jpg" alt=""></li>
				  		<li><img src="/images/sub/oncam_f_hannuri_1_3.jpg" alt=""></li>
					</ul>
					</div>
				  </td>
				 <tr>
				  <th>Gaenari Residence hall<br />개나리관 </th>
				  <td class="fwb">Single Room<br />1인실</td>
				  <td class="alf">
				    <div class="fl room-preview"  style="width:auto; margin:15px; ">
				  	<ul>
				  		<li><img src="/images/sub/oncam_f_gaenari_1_1.jpg" alt=""></li>
				  		<li><img src="/images/sub/oncam_f_gaenari_1_2.jpg" alt=""></li>
				  		<li><img src="/images/sub/oncam_f_gaenari_1_3.jpg" alt=""></li>
					</ul>
					</div>
				  </td>
				</tr>
				 <tr>
				  <th>Residence hall #1<br />제1학생생활관</th>
				  <td class="fwb">Three Person Room<br />3인실</td>
				  <td class="alf">
				    <div class="fl room-preview"  style="width:auto; margin:15px; ">
				  	<ul>
				  		<li><img src="/images/sub/oncam_f_residence_3_1.jpg" alt=""></li>
				  		<li><img src="/images/sub/oncam_f_residence_3_2.jpg" alt=""></li>
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

<!-- s : popup -->
<div id="photoFrame"></div>

<script>
$(function() {
	$("body").on("click", ".showBig", function() {
		var _src = $(this).attr("src");
		$("#photoFrame").html("<img src='" + _src + "'>").css("background-color", "#fff");
		$("#photoFrame").bPopup();
	});
});
</script>
<!-- e : popup -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


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
