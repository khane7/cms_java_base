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
				<li class="active">Male</li>
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
				<li class="active"><a href="oncam">Male 남성</a></li>
				<li><a href="oncam2">Female 여성</a></li>
			</ul>
			<table class="table-cen">
			  <colgroup>
			  <col width="30%">
			  <col width="25%">
			  <col width="">
			  <col width="20%">
			  <col width="">
			  </colgroup>
			  <tbody>
				<tr>
				  <th>Dormitory Name<br />숙소명</th>
				  <th>Room Type<br />호실타입</th>
				  <th>Type of Bed<br />침대타입</th>
				  <th>Toilet<br />화장실/샤워실 위치</th>
				  <th>Size of the Room<br />호실면적(m2)</th>
				</tr>
				<tr>
				  <td rowspan="3">Hanyang Techno Residence Hall<br />한양테크노숙사</td>
				  <td >Two Person Room<br />2인실</td>
				  <td >Single Bed<br />싱글침대</td>
				  <td >In the apartment<br />실내 </td>
				  <td >16.42</td>
				</tr>
				<tr>
				  <td><p>Three  Person Room<br />3인실 </p></td>
				  <td>Bunk Bed<br />이층침대</td>
				  <td>In the apartment<br />실내 </td>
				  <td>32.34</td>
				</tr>
				<tr>
				  <td><p>Four  Person Room<br />4인실<br />
					  (Single R.A. Room
					  + 3 person room, sharing living room) <br />*R.A.=Resident Assistant</p></td>
				  <td>Bunk Bed<br />이층침대</td>
				  <td>In the apartment<br />실내 </td>
				  <td>33.5</td>
				</tr>
				<tr>
				  <td>Student Residence Hall #1<br />제1학생생활관</td>
				  <td>Four Person Room<br />4인실</td>
				  <td>Bunk Bed<br />이층침대</td>
				  <td>On the Floor<br />층별공유</td>
				  <td>28.3</td>
				</tr>
			  </tbody>
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
				  <th rowspan="3">Hanyang Techno<br/>
				   Residence Hall<br/>한양테크노숙사 </th>
				  <th class="fwb">Two  Person Room<br/>2인실</th>
				  <td class="alf">
				    <div class="fl room-preview"  style="width:auto; margin:15px; ">
				  	<ul>
				  		<li><img src="/images/sub/oncam_m_2_1.JPG" alt=""></li>
				  		<li><img src="/images/sub/oncam_m_2_2.JPG" alt=""></li>
				  		<li><img src="/images/sub/oncam_m_2_3.jpg" alt=""></li>
				  	</ul>
					</div>
				  </td>
				</tr>
				<tr>
				  <th class="fwb">Three  Person Room<br/>3인실</th>
				  <td class="alf">
				    <div class="fl room-preview"  style="width:auto; margin:15px; ">
				  	<ul>
				  		<li><img src="/images/sub/oncam_m_3_1.jpg" alt=""></li>
				  		<li><img src="/images/sub/oncam_m_3_2.jpg" alt=""></li>
				  		<li><img src="/images/sub/oncam_m_3_3.jpg" alt=""></li>
						<li><img src="/images/sub/oncam_m_3_4.jpg" alt=""></li>
						<li><img src="/images/sub/oncam_m_3_5.png" alt=""></li>
						<li><img src="/images/sub/oncam_m_3_6.png" alt=""></li>
				  	</ul>
					</div>
				  </td>
				</tr>
				<tr>
				  <th class="fwb">Four  Person Room<br />4인실<br/>(Single room is for RA)</th>
				  <td class="alf">
				    <div class="fl room-preview"  style="width:auto; margin:15px; ">
				  	<ul>
				  		<li><img src="/images/sub/oncam_m_4_7.png" alt=""></li>
				  	</ul>
					</div>
				  </td>
				</tr>
				<tr>
				  <th>Student Residence hall #1<br/>제1학생생활관 </th>
				  <th class="fwb">Four Person Room<br/>4인실</th>
				  <td class="alf">
				    <div class="fl room-preview"  style="width:auto; margin:15px; ">
				  	<ul>
				  		<li><img src="/images/sub/oncam_m_4.png" alt=""></li>
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