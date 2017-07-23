<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-22
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- write -->
<form class="form-horizontal" role="form" id="frm" name="frm" method="POST" enctype="multipart/form-data">
	<input type="hidden" id="idx" name="idx" value="${ idx }" />
	<input type="hidden" id="pidx" name="pidx" value="${ pidx }" />
	<input type="hidden" id="tree_level" name="tree_level" value="${ tree_level }" />
	<input type="hidden" id="writer_key" name="writer_key" value="${ sessionScope.session_user.user_id}" />
	<input type="hidden" id="tb_name" name="tb_name" value="" />
	<input type="hidden" id="content" name="content" />
	<input type="hidden" id="opt1" name="opt1" value="" />
	<input type="hidden" id="file_idxs" name="file_idxs" />
	<input type="hidden" name="writer" id="writer" class="intA" style="width:150px;" value="${ sessionScope.session_user.user_name }" />
	<input type="hidden" name="title" id="title" value="Request for Repairs: " />
<table class="tblA_write">
	<colgroup>
		<col width="20%;">
		<col>
	</colgroup>
	<tbody>

	<tr>
		<td colspan="2">
			<%--<textarea name="cont" id="cont" class="sty1"></textarea>--%>

				<div class="sub-contents clearfix" id="repair_form">
					<h3 class="pointclr">* For Off campus residents, please report the facility problem to RA directly.</br>
					                       &nbsp&nbsp&nbsp외부 임대숙소 학생의 경우 조교에게 직접 문의하시기 바랍니댜. </h3>



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
							<th>건물명</br>Dormitory</th>
							<td><select name="dormitory_sel" id="dormitory_sel">
								<option value="[한누리관] Hannuri Residence Hall">Hannuri Residence Hall</option>
								<option value="[한양테크노숙사] Techno Residence Hall">Techno Residence Hall</option>
								<option value="[개나리관] Gaenari Residence Hall">Gaenari Residence Hall</option>
								<option value="[제1학생생활관] Student Rsidence Hall #1">Student Rsidence Hall #1</option>
							</select></td>
							<th>호실명</br>Room Number</th>
							<td><input type="text" name="room_number" id="room_number" /></td>
							<th>침대번호</br>Bed Number</th>
							<td><input type="radio" name="bed_number" id="radio" value="No.1" />No.1
								<input type="radio" name="bed_number" id="radio2" value="No.2" />No.2
								<input type="radio" name="bed_number" id="radio3" value="No.3" />No.3
								<input type="radio" name="bed_number" id="radio4" value="No.4" />No.4</td>
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
							<th>일반</br>General  Facilities</th>
							<th class="fwb">전기</br>Electricity</th>
							<td class="alf">전기가 안들어옵니다</br>There is no electricity</td>
							<td><input type="checkbox" name="electrictiy" value="전기가 안들어옵니다</br>There is no electricity" id="electrictiy" /></td>
						</tr>
						<tr>
							<th rowspan="13"><p>거실</br>Living Room</p></th>
							<th rowspan="8"  class="fwb"><p>시설 일반</br>Other facilities</p></th>
							<td class="alf">거실 전등 교체해주세요</br>Please change the light bulb in living room</td>
							<td><input type="checkbox" name="livingroom_1" id="checkbox2" value="거실 전등 교체해주세요</br>Please change the light bulb in living room" /></td>
						</tr>
						<tr>
							<td class="alf">신발장 전등을 교체해주세요</br>Please change the light bulb in front of the door</td>
							<td><input type="checkbox" name="livingroom_1" id="checkbox3" value="신발장 전등을 교체해주세요</br>Please change the light bulb in front of the door" /></td>
						</tr>
						<tr>
							<td class="alf">호실 내 전등을 교체해주세요</br>Please change the light bulb in the room</td>
							<td><input type="checkbox" name="livingroom_1" id="checkbox4" value="호실 내 전등을 교체해주세요</br>Please change the light bulb in the room" /></td>
						</tr>
						<tr>
							<td class="alf">침대 매트리스를 교체해주세요</br>Please change the mattress</td>
							<td><input type="checkbox" name="livingroom_1" id="checkbox5" value="침대 매트리스를 교체해주세요</br>Please change the mattress" /></td>
						</tr>
						<tr>
							<td class="alf">침대 서랍이 고장났습니다</br>Drawer under the bed is broken</td>
							<td><input type="checkbox" name="livingroom_1" id="checkbox6" value="침대 서랍이 고장났습니다</br>Drawer under the bed is broken" /></td>
						</tr>
						<tr>
							<td class="alf">옷장 문 경첩이 떨어졌습니다</br>Hinge on the closet was broken</td>
							<td><input type="checkbox" name="livingroom_1" id="checkbox7" value="옷장 문 경첩이 떨어졌습니다</br>Hinge on the closet was broken" /></td>
						</tr>
						<tr>
							<td class="alf">침대 위 옷걸이가 느슨합니다</br>Hanger on the bed is needed to be fixed</td>
							<td><input type="checkbox" name="livingroom_1" id="checkbox8" value="침대 위 옷걸이가 느슨합니다</br>Hanger on the bed is needed to be fixed" /></td>
						</tr>
						<tr>
							<td class="alf">화장실 문고리가 부서졌어요</br>Door handle of the bathroom door is broken</td>
							<td><input type="checkbox" name="livingroom_1" id="checkbox9" value="화장실 문고리가 부서졌어요</br>Door handle of the bathroom door is broken" /></td>
						</tr>
						<tr>
							<th rowspan="5"  class="fwb">냉난방시설</br>Heating/Cooling  facilities</th>
							<td class="alf">에어컨이 고장났어요</br>Air Conditioner is not working (no hot/cold wind)</td>
							<td><input type="checkbox" name="livingroom_2" id="checkbox10" value="에어컨이 고장났어요</br>Air Conditioner is not working (no hot/cold wind)" /></td>
						</tr>
						<tr>
							<td class="alf">에어컨 조절 스위치가 고장났어요</br>Switch on the air conditioner is broken </td>
							<td><input type="checkbox" name="facilities_2" id="checkbox11" value="에어컨 조절 스위치가 고장났어요</br>Switch on the air conditioner is broken" /></td>
						</tr>
						<tr>
							<td class="alf">히터가 고장났어요</br>Heater is not working</td>
							<td><input type="checkbox" name="livingroom_2" id="checkbox12" value="히터가 고장났어요</br>Heater is not working" /></td>
						</tr>
						<tr>
							<td class="alf">라디에이터 냉각수가 누수되었어요</br>Cooling water from heater is leaking </td>
							<td><input type="checkbox" name="livingroom_2" id="checkbox13" value="라디에이터 냉각수가 누수되었어요</br>Cooling water from heater is leaking" /></td>
						</tr>
						<tr>
							<td class="alf">라디에이터에서 이상한 소리가 납니다</br>There is a strange sound on radiator</td>
							<td><input type="checkbox" name="livingroom_2" id="checkbox14" value="라디에이터에서 이상한 소리가 납니다</br>There is a strange sound on radiator" /></td>
						</tr>
						<tr>
							<th rowspan="8">화장실</br>Bathroom</th>
							<th rowspan="2"  class="fwb">누수</br>Water  Leakage</th>
							<td class="alf">천장에 누수가 발생했어요</br>There is water leaking from the ceiling</td>
							<td><input type="checkbox" name="bathroom_1" id="checkbox15" value="천장에 누수가 발생했어요</br>There is water leaking from the ceiling" /></td>
						</tr>
						<tr>
							<td class="alf">세면대 밑 수도관에서 누수가 발생했어요</br>There is water leaking in the bathroom washstand pipe </td>
							<td><input type="checkbox" name="bathroom_1" id="checkbox16" value="세면대 밑 수도관에서 누수가 발생했어요</br>There is water leaking in the bathroom washstand pipe" /></td>
						</tr>
						<tr>
							<th rowspan="6"  class="fwb">시설 일반</br>Other  facilities</th>
							<td class="alf">화장실 문 잠금장치가 고장났어요</br>The lock on the bathroom is broken</td>
							<td><input type="checkbox" name="bathroom_2" id="checkbox18" value="화장실 문 잠금장치가 고장났어요</br>The lock on the bathroom is broken" /></td>
						</tr>
						<tr>
							<td class="alf">샤워기가 고장났어요</br>Shower head is broken</td>
							<td><input type="checkbox" name="bathroom_2" id="checkbox19" value="샤워기가 고장났어요</br>Shower head is broken" /></td>
						</tr>
						<tr>
							<td class="alf"><p>화장실 바닥 배수구가 막혔어요</br>Drain hole of the floor of bathroom is clogged</p></td>
							<td><input type="checkbox" name="bathroom_2" id="checkbox20" value="화장실 바닥 배수구가 막혔어요</br>Drain hole of the floor of bathroom is clogged" /></td>
						</tr>
						<tr>
							<td class="alf">세면대의 배수구가 막혔어요</br>Drain hole on the washstand is clogged</td>
							<td><input type="checkbox" name="bathroom_2" id="checkbox21" value="세면대의 배수구가 막혔어요</br>Drain hole on the washstand is clogged" /></td>
						</tr>
						<tr>
							<td class="alf"><p>변기가 막혔어요</br>Toilet is clogged</p></td>
							<td><input type="checkbox" name="bathroom_2" id="checkbox22" value="변기가 막혔어요</br>Toilet is clogged" /></td>
						</tr>
						<tr>
							<td class="alf"><p>화장실 전등이 나갔어요</br>Please change the light bulb in bathroom</p></td>
							<td><input type="checkbox" name="bathroom_2" id="checkbox23" value="화장실 전등이 나갔어요</br>Please change the light bulb in bathroom" /></td>
						</tr>
					</table>



					<table class="table-cen">
						<colgroup>
							<col width="200px" />
							<col width="" />
						</colgroup>
						<tr style="<c:if test="${ beanBBS.is_thumbnail == 'N' }">display:none;</c:if>">
							<th scope="row"><label for="thumbnail">thumbnail</label></th>
							<td>
								<input type="file" name="thumbnail" id="thumbnail"/>
							</td>
						</tr>
						<tr>
							<th>사진첨부</br>Photo</th>
							<td class="alf"><iframe id="ifr-uploader" name="ifr-uploader" src="${pageContext.request.contextPath}/file/showUploader" class="sty1" width="99%" height="270"></iframe></td>
					</table>

				</div>

		</td>
	</tr>

	</tbody>
</table>
<div class="btn_area text-center">
	<a href="javascript:void(0)" id="btn-submit" title="확인" class="btn btn-default"><span class="button">Save</span></a>
	<a href="javascript:goList();" title="취소" class="btn btn-default"><span class="button">Cancle</span></a>
</div>
</form>

<script type="text/javascript">

	var idx = "";
	var tb_name = "";
	$(document).ready(function() {

		tb_name = getParameter("tb_name");
		idx = $('#idx').val();

		$('#tb_name').val( tb_name );

		$('#btn-submit').click(function() {
			saveBoard();
		});


		if ( idx != "" ) {

			getProcess4Front(  contextPath + "/board/getBoardOne", { "tb_name" : tb_name, "idx" : idx }, function (data) {
				if ( data.status == "OK" ) {
					//alert( obj.board );
					var item = data.beanBoard;

					$('#idx').val( item.idx );
					$('#pidx').val( item.pidx );
					$('#tree_level').val( item.tree_level );
					$('#content').val( item.content_html );
					$('#ifr-editor').contents().find('#editor').html( item.content_html );
					$('#ifr-uploader').prop("src", contextPath + "/file/showUploader?tb_name=" + tb_name + "&idx=" + idx );

					$('#title').val( item.title );
					$('#writer').val( item.writer );
					$('#writer_pw').val( item.writer_pw );

					$('#is_notice').prop("checked", "");
					if ( item.is_notice == "Y" ) {
						$('#is_notice').prop("checked", "checked");
					}
					$('#is_use').prop("checked", "");
					if ( item.is_use == "Y" ) {
						$('#is_use').prop("checked", "checked");
					}

					$('#opt1').val( item.opt1 );

					$('#editor').html( item.content_html );
				} else {
					//showAlert(data.msg);
				}

			});
		} else {
			$('#is_use').prop("checked", "checked");
		}



		/*$('html').keyup(function (e) {
			if (e.keyCode == 8) {
				goList();
			}
		});*/

	});


	var saveBoard = function() {

		$('#file_idxs').val( $('#ifr-uploader').contents().find('#file_idxs').val() );


		var bed_num = $('input:radio[name="bed_number"]:checked').val();
		$('#title').val($('#title').val() + " " + $('#dormitory_sel').val() + " " + $('#room_number').val() + " Bed " +  bed_num);

        var electrictiy_val = "";
        var livingroom1_val = "";
        var livingroom2_val = "";
        var bathroom1_val = "";
        var bathroom2_val = "";
        var repair_body = "<table class='table-cen'><tr>" +
			"<th style='width: 200px;'>건물명</br>Dormitory</th><td >" + $('#dormitory_sel').val() + "</td>" +
			"<th style='width: 15%;'>호실명</br>Room Number</th><td style='width: 10%;'>"+$('#room_number').val() + "</td>" +
			"<th style='width: 15%;'>침대번호</br>Bed Number</th><td style='width: 9%;'>"+bed_num+"</td></tr></table>";


        if($('#repair_form input[name="electrictiy"]').prop("checked"))
            electrictiy_val = $('#repair_form input[name="electrictiy"]').val();

        $('#repair_form input[name="livingroom_1"]').each(function() {
            if($(this).prop("checked"))
                livingroom1_val += $(this).val() + "<hr class='hr_line'>";
        });
        $('#repair_form input[name="livingroom_2"]').each(function() {
            if($(this).prop("checked"))
                livingroom2_val += $(this).val() + "<hr class='hr_line'>";
        });
        $('#repair_form input[name="bathroom_1"]').each(function() {
            if($(this).prop("checked"))
                bathroom1_val += $(this).val() + "<hr class='hr_line'>";
        });
        $('#repair_form input[name="bathroom_2"]').each(function() {
            if($(this).prop("checked"))
                bathroom2_val += $(this).val() + "<hr class='hr_line'>";
        });

        repair_body += "<table  class='table-cen'><tr>" +
			"<th style='width: 200px;'>일반</br>General Facilities</th><th style='width: 200px;'>전기</br>Electricity</th><td style='text-align: left;'>"+electrictiy_val+"</td></tr>";
        repair_body += "<tr><th rowspan='2' style='width: 200px;'>거실</br>Living Room </th><th style='width: 200px;'>		                                                          시설 일반</br>Other facilities</th> <td style='text-align: left;'>"+livingroom1_val+"</td></tr>";
        repair_body += "<tr><th style='width: 200px;'>냉난방시설</br>Heating/Cooling facilities</th><td style='text-align: left;'>"+livingroom2_val+"</td></tr>";
        repair_body += "<tr><th rowspan='2' style='width: 200px;'>화장실</br>Bathroom</th><th style='width: 200px;'>		                                                          누수</br>Water Leakage</th><td style='text-align: left;'>"+bathroom1_val+"</td></tr>";
        repair_body += "<tr><th style='width: 200px;'>시설 일반</br>Other facilities</th><td style='text-align: left;'>"+bathroom2_val+"</td></tr>";
        repair_body += "</table>";

        $('#content').val(repair_body);


        $("#frm").submit(function(event){

			//disable the default form submission
			event.preventDefault();

			var fd = new FormData($("#frm")[0]);

            $.ajax({
				url: contextPath + "/board/setBoardOne",
				type: "POST",
				data: fd,
				async: false,
				cache: false,
				contentType: false,
				processData: false,
				success:  function(data){

					if (data.status == "OK") {

						getProcess4Page(contextPath + "/board/list?tb_name=" + tb_name, data, function (data) {
							$('#div-board').html( data );
						});

					} else {
						alert(data.msg);
					}

					/* alert(data); if json obj. alert(JSON.stringify(data));*/
				},
				error: function(data) {
				    alert(data);
				}
			});


			return false;

		});

		$("form#frm").submit();

		/*var fd = new FormData($('#frm')[0]);
		getProcess4Front( contextPath + "/board/setBoardOne", fd, function (data) {

			if (data.status == "OK") {

				getProcess4Page(contextPath + "/board/list?tb_name=" + tb_name, data, function (data) {
					$('#div-board').html( data );
				});

			} else {
				alert(data.msg);
			}

		} );*/
	}


	var goList = function () {

		if ( idx != "" ) {

			var data = {
				"idx" : idx,
				"tb_name" : tb_name,
				"pageNum" : pageNum,
				"search_key" : search_key,
				"search_val" : search_val
			}
			getProcess4Page(contextPath + "/board/view", data, function (data) {
				$('#div-board').html( data );
			});
		} else {

			var data = {
				"tb_name" : tb_name,
				"pageNum" : pageNum,
				"search_key" : search_key,
				"search_val" : search_val
			}
			getProcess4Page(contextPath + "/board/list", data, function (data) {
				$('#div-board').html( data );
			});
		}
	}


</script>
