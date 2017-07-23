<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-09-17
  Time: 오후 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/cms_manager/getLayoutHeader"/>

<body class="no-skin">

<jsp:include flush="false" page="/cms_manager/getLayoutTop"/>

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<script type="text/javascript">
		try {
			ace.settings.check('main-container', 'fixed')
		} catch (e) {
		}
	</script>

	<jsp:include flush="true" page="/cms_manager/getLayoutLeft"/>
	<div class="main-content">
		<jsp:include page="/cms_manager/getLayoutNavigator"/>
		<div class="page-content">
			<jsp:include page="/cms_manager/getLayoutRight"/>


			<div class="page-header">
				<h1>
					일정 관리
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						일정 관리기능 제공
					</small>
				</h1>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->

					<!-- #section:plugins/data-time.calendar -->
					<div id="calendar"></div>

					<!-- /section:plugins/data-time.calendar -->

					<!-- PAGE CONTENT ENDS -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.main-content -->
	<jsp:include page="/cms_manager/getLayoutBottom"/>
</div>
<!-- /.main-container -->
<jsp:include page="/cms_manager/getLayoutTail"/>


</body>



<script src="${pageContext.request.contextPath}/bootstrap/assets/js/fullcalendar.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/assets/js/bootbox.min.js"></script>

<script type="text/javascript">
	jQuery(function ($) {

		/* initialize the external events
		 -----------------------------------------------------------------*/

		$('#external-events div.external-event').each(function () {

			// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
			// it doesn't need to have a start or end
			var eventObject = {
				title: $.trim($(this).text()) // use the element's text as the event title
			};

			// store the Event Object in the DOM element so we can get to it later
			$(this).data('eventObject', eventObject);

			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex: 999,
				revert: true,      // will cause the event to go back to its
				revertDuration: 0  //  original position after the drag
			});

		});


		/* initialize the calendar
		 -----------------------------------------------------------------*/

		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();


		var calendar = $('#calendar').fullCalendar({
			//isRTL: true,
			buttonText: {
				prev: '<i class="ace-icon fa fa-chevron-left"></i>',
				next: '<i class="ace-icon fa fa-chevron-right"></i>'
			},

			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			views: {
				month: { // name of view
					titleFormat: 'YYYY, MM'
					// other view-specific options here
				}
			}
			/*,events: [
				{
					title: 'All Day Event',
					start: new Date(y, m, 1),
					className: 'label-important'
				},
				{
					title: 'Long Event',
					start: new Date(y, m, d - 5),
					end: new Date(y, m, d - 2),
					className: 'label-success'
				},
				{
					title: 'Some Event',
					start: new Date(y, m, d - 3, 16, 0),
					allDay: false
				}
			]*/
			,
			editable: false,
			droppable: true, // this allows things to be dropped onto the calendar !!!
			drop: function (date, allDay) { // this function is called when something is dropped

				// retrieve the dropped element's stored Event Object
				var originalEventObject = $(this).data('eventObject');
				var $extraEventClass = $(this).attr('data-class');


				// we need to copy it, so that multiple events don't have a reference to the same object
				var copiedEventObject = $.extend({}, originalEventObject);

				// assign it the date that was reported
				copiedEventObject.start = date;
				copiedEventObject.allDay = allDay;
				if ($extraEventClass) copiedEventObject['className'] = [$extraEventClass];

				// render the event on the calendar
				// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
				$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

				// is the "remove after drop" checkbox checked?
				if ($('#drop-remove').is(':checked')) {
					// if so, remove the element from the "Draggable Events" list
					$(this).remove();
				}

			}
			,
			selectable: true,
			selectHelper: true,
			select: function (start, end, allDay) {

				bootbox.prompt("새로운 일정:", function (title) {
					if (title !== null) {

						setEvent(title, start.getTime(), end.getTime(), allDay, function (data) {

							if ( data.status == "OK" ) {

								calendar.fullCalendar('renderEvent',
										{
											idx : data.idx,
											title: title,
											start: start,
											end: end,
											allDay: allDay
										},
										true // make the event "stick"
								);
							} else {
								alert(data.result.msg);
							}

						});
						return;

						/*calendar.fullCalendar('renderEvent',
								{
									title: title,
									start: start,
									end: end,
									allDay: allDay
								},
								true // make the event "stick"
						);*/
					}
				});


				calendar.fullCalendar('unselect');
			}
			,
			eventClick: function (calEvent, jsEvent, view) {

				//display a modal
				var modal =
						'<div class="modal fade">\
						  <div class="modal-dialog">\
						   <div class="modal-content">\
							 <div class="modal-body">\
							   <button type="button" class="close" data-dismiss="modal" style="margin-top:-10px;">&times;</button>\
							   <form class="no-margin">\
								  <label>Change event name &nbsp;</label>\
								  <input class="middle" autocomplete="off" type="text" value="' + calEvent.title + '" />\
					 <button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> Save</button>\
				   </form>\
				 </div>\
				 <div class="modal-footer">\
					<button type="button" class="btn btn-sm btn-danger" data-action="delete"><i class="ace-icon fa fa-trash-o"></i> Delete Event</button>\
					<button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>\
				 </div>\
			  </div>\
			 </div>\
			</div>';


				var modal = $(modal).appendTo('body');
				modal.find('form').on('submit', function (ev) {
					ev.preventDefault();

					calEvent.title = $(this).find("input[type=text]").val();
					calendar.fullCalendar('updateEvent', calEvent);
					modal.modal("hide");
				});
				modal.find('button[data-action=delete]').on('click', function () {
					calendar.fullCalendar('removeEvents', function (ev) {
						removeEvent(calEvent.idx);
						return (ev._id == calEvent._id);
					})
					modal.modal("hide");
				});

				modal.modal('show').on('hidden', function () {
					modal.remove();
				});


				console.log(calEvent.id);
				console.log(jsEvent);
				console.log(view);

				// change the border color just for fun
				$(this).css('border-color', 'red');

			}

		});


		var setEvent = function (title, start, end, allDay, callback) {

			var params = {
				"title" : title,
				"start" : start,
				"end" : end,
				"allDay" : allDay
			}

			getProcess( CALENDAR + "/setEvent", params, callback);

		}



		var getEvents = function (y_, m_) {

			var params = {
				"start" : (y_-2) + "-" + (m_+1) + "-" + "01",
				"end" : (y_+2) + "-" + (m_+1) + "-" + "31"
			}

			getProcess( CALENDAR + "/getEventList", params, function (data) {

				if ( data.status == "OK" ) {

					var listEvents = data.listEvents;

					for (var i = 0; i < listEvents.length; i++) {

						var event = listEvents[i];

						var allDay = true;
						var className = "label-primary";
						if ( new Date(event.st_date).getHours() > 0 || new Date(event.ed_date).getHours() > 0 ) {
							allDay = false;
							className = "label-success";
						}

						calendar.fullCalendar('renderEvent',
								{
									idx : event.idx,
									title: event.title,
									start: new Date(event.st_date),
									end: new Date(event.ed_date),
									allDay: allDay,
									className : className
								},
								true // make the event "stick"
						);
					}

				}

			});

		}



		var removeEvent = function ( idx ) {

			getProcess(CALENDAR + "/removeEvent", { idx : idx }, function(data) {

				if ( data.status == "FAIL" ) {
					alert(data.msg);
				}

			});

		}


		getEvents(y, m);


	});


</script>


</html>