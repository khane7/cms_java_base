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
			<h2>Repair (On Campus Only) 고장 수리 접수</h2>

			<ul class="nav">
				<li><img src="/images/sub/icon_home.gif" alt="홈"></li>
				<li>Hall Facilities</li>
				<li class="active">Repair</li>
			</ul>
		</div>
		<!-- e : top nav -->

		<!-- s : top banner -->
		<div class="sub-top-bnr">
			<img src="/images/sub/bnr_top.jpg" alt="">
		</div>
		<!-- e : top banner -->

		<!-- s : sub contents -->
		<div class="sub-contents clearfix" id="repair_form">
			<h3 class="pointclr">* For Off campus residents, please report the facility problem to RA directly.</h3>
			<table class="table-cen">
				<colgroup>
					<col width="200px" />
					<col width="" />
					<col width="" />
					<col width="" />
					<col width="" />
					<col width="" />
				</colgroup>
			  <tr>
				<th>Dormitory</th>
				<td><select name="dormitory_sel" id="dormitory_sel">
					<option value="한양테크노숙사">한양테크노숙사</option>
					<option value="한누리관">한누리관</option>
					<option value="개나리관">개나리관</option>
					<option value="제1학생생활관">제1학생생활관</option>
				  </select></td>
				<th>Room Number</th>
				<td><input type="text" name="room_number" id="room_number" /></td>
				<th>Bed Number</th>
				<td><input type="radio" name="bed_number" id="radio" value="1" />1
				  <input type="radio" name="bed_number" id="radio2" value="2" />2
				  <input type="radio" name="bed_number" id="radio3" value="3" />3
				  <input type="radio" name="bed_number" id="radio4" value="4" />4</td>
			  </tr>
			</table>
			<table class="table-cen">
				<colgroup>
					<col width="200px" />
					<col width="" />
					<col width="" />
					<col width="" />
				</colgroup>
			  <tr>
				<th>General  Facilities</th>
				<td class="fwb">Electricity</td>
				<td class="alf">There is no electricity</td>
				<td><input type="checkbox" name="electrictiy" value="There is no electricity" id="electrictiy" /></td>
			  </tr>
			  <tr>
				<th rowspan="13"><p>Living Room</p></th>
				<td rowspan="8"  class="fwb"><p>Other facilities</p></td>
				<td class="alf">Please change the light bulb in living room</td>
				<td><input type="checkbox" name="livingroom_1" id="checkbox2" value="Please change the light bulb in living room" /></td>
			  </tr>
			  <tr>
				<td class="alf">Please change the light bulb in front of the door</td>
				<td><input type="checkbox" name="livingroom_1" id="checkbox3" value="Please change the light bulb in front of the door" /></td>
			  </tr>
			  <tr>
				<td class="alf">Please change the light bulb in the room</td>
				<td><input type="checkbox" name="livingroom_1" id="checkbox4" value="Please change the light bulb in the room" /></td>
			  </tr>
			  <tr>
				<td class="alf">Please change the mattress</td>
				<td><input type="checkbox" name="livingroom_1" id="checkbox5" value="Please change the mattress" /></td>
			  </tr>
			  <tr>
				<td class="alf">Drawer under the bed is broken</td>
				<td><input type="checkbox" name="livingroom_1" id="checkbox6" value="Drawer under the bed is broken" /></td>
			  </tr>
			  <tr>
				<td class="alf">Hinge on the closet was broken</td>
				<td><input type="checkbox" name="livingroom_1" id="checkbox7" value="Hinge on the closet was broken" /></td>
			  </tr>
			  <tr>
				<td class="alf">Hanger on the bed is needed to be fixed</td>
				<td><input type="checkbox" name="livingroom_1" id="checkbox8" value="Hanger on the bed is needed to be fixed" /></td>
			  </tr>
			  <tr>
				<td class="alf">Door handle of the bathroom door is broken</td>
				<td><input type="checkbox" name="livingroom_1" id="checkbox9" value="Door handle of the bathroom door is broken" /></td>
			  </tr>
			  <tr>
				<td rowspan="5"  class="fwb">Heating/Cooling  facilities</td>
				<td class="alf">Air Conditioner is not working (no hot/cold wind)</td>
				<td><input type="checkbox" name="livingroom_2" id="checkbox10" value="Air Conditioner is not working (no hot/cold wind)" /></td>
			  </tr>
			  <tr>
				<td class="alf">Switch on the air conditioner is broken </td>
				<td><input type="checkbox" name="facilities_2" id="checkbox11" value="Switch on the air conditioner is broken" /></td>
			  </tr>
			  <tr>
				<td class="alf">Heater is not working</td>
				<td><input type="checkbox" name="livingroom_2" id="checkbox12" value="Heater is not working" /></td>
			  </tr>
			  <tr>
				<td class="alf">Cooling water from heater is leaking </td>
				<td><input type="checkbox" name="livingroom_2" id="checkbox13" value="Cooling water from heater is leaking" /></td>
			  </tr>
			  <tr>
				<td class="alf">There is a strange sound on radiator</td>
				<td><input type="checkbox" name="livingroom_2" id="checkbox14" value="There is a strange sound on radiator" /></td>
			  </tr>
			  <tr>
				<th rowspan="8">Bathroom</th>
				<td rowspan="3"  class="fwb">Water  Leakage</td>
				<td class="alf">There is water leaking from the ceiling</td>
				<td><input type="checkbox" name="bathroom_1" id="checkbox15" value="There is water leaking from the ceiling" /></td>
			  </tr>
			  <tr>
				<td class="alf">There is water leaking in the bathroom washstand pipe </td>
				<td><input type="checkbox" name="bathroom_1" id="checkbox16" value="There is water leaking in the bathroom washstand pipe" /></td>
			  </tr>
			  <tr>
				<td class="alf">The lock on the bathroom is broken</td>
				<td><input type="checkbox" name="bathroom_1" id="checkbox17" value="The lock on the bathroom is broken" /></td>
			  </tr>
			  <tr>
				<td rowspan="5"  class="fwb">Other  facilities</td>
				<td class="alf">Shower head is broken</td>
				<td><input type="checkbox" name="bathroom_2" id="checkbox18" value="Shower head is broken" /></td>
			  </tr>
			  <tr>
				<td class="alf"> Drain hole of the floor of bathroom is clogged</td>
				<td><input type="checkbox" name="bathroom_2" id="checkbox19" value="Drain hole of the floor of bathroom is clogged" /></td>
			  </tr>
			  <tr>
				<td class="alf"><p>Drain hole on the  washstand is clogged&#13;</p></td>
				<td><input type="checkbox" name="bathroom_2" id="checkbox20" value="Drain hole on the  washstand is clogged" /></td>
			  </tr>
			  <tr>
				<td class="alf">Toilet is clogged</td>
				<td><input type="checkbox" name="bathroom_2" id="checkbox21" value="Toilet is clogged" /></td>
			  </tr>
			  <tr>
				<td class="alf"><p>Please change the  light bulb in bathroom&#13;</p></td>
				<td><input type="checkbox" name="bathroom_2" id="checkbox22" value="Please change the  light bulb in bathroom" /></td>
			  </tr>
			</table>
			<table class="table-cen">
				<colgroup>
					<col width="200px" />
					<col width="" />
				</colgroup>
			  <tr>
				<th>Photo</th>
				<td class="alf"><input type="file" name="fileField" id="fileField" /></td>
			</table>
			<br/>
			<div class="tc"><a href="javascript:void(0)" class="btn btn-default" id="form_save">저장</a></div>
			
		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<script type="text/javascript">
$(document).ready(function() {
    $("#form_save").on("click",function() {

        var electrictiy_val = "";
        var livingroom1_val = "";
        var livingroom2_val = "";
        var bathroom1_val = "";
        var bathroom2_val = "";
        var as_body = "";

        if($('#repair_form input[name="electrictiy"]').prop("checked"))
            electrictiy_val = $('#repair_form input[name="electrictiy"]').val();

        $('#repair_form input[name="livingroom_1"]').each(function() {
           if($(this).prop("checked"))
            livingroom1_val += $(this).val() + "<br>";
		});
        $('#repair_form input[name="livingroom_2"]').each(function() {
            if($(this).prop("checked"))
                livingroom2_val += $(this).val() + "<br>";
        });
        $('#repair_form input[name="bathroom_1"]').each(function() {
            if($(this).prop("checked"))
                bathroom1_val += $(this).val() + "<br>";
        });
        $('#repair_form input[name="bathroom_2"]').each(function() {
            if($(this).prop("checked"))
                bathroom2_val += $(this).val() + "<br>";
        });



	});
});

</script>

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


