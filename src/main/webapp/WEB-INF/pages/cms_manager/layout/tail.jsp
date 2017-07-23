<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath}/bootstrap/assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='${pageContext.request.contextPath}/bootstrap/assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath}/bootstrap/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/jquery-ui.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/jquery.ui.touch-punch.min.js"></script>



		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/chosen.jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/date-time/moment.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/date-time/daterangepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/date-time/bootstrap-datetimepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/jquery.knob.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/jquery.autosize.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/jquery.maskedinput.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/bootstrap-tag.min.js"></script>

		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/fullcalendar.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/bootbox.min.js"></script>

		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/css/ace.onpage-help.css" />
		<!-- <link rel="stylesheet" href="/bootstrap/docs/assets/js/themes/sunburst.css" />-->

		<script type="text/javascript"> ace.vars['base'] = '..'; </script>
		<script src="${pageContext.request.contextPath}/bootstrap/assets/js/ace/ace.onpage-help.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/rainbow.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/language/generic.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/language/html.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/language/css.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/language/javascript.js"></script>

		

<!-- Loading Dialog -->
<div id="dialog-loading" class="hide">
	<p id="dialog-loading-content1"></p>

	<!-- <div class="hr hr-12 hr-double"></div> -->

	<p id="dialog-loading-content2"></p>
</div><!-- #dialog-message -->


<!-- Message Dialog -->
<div id="dialog-message" class="hide">
	<p id="dialog-message-content1"></p>

	<!-- <div class="hr hr-12 hr-double"></div> -->

	<p id="dialog-message-content2"></p>
</div><!-- #dialog-message -->


<!-- Confirm Dialog -->
<div id="dialog-confirm" class="hide">
	<div class="alert alert-info bigger-110" id="dialog-confirm-content1"></div>

	<div class="space-6"></div>

	<p class="bigger-110 bolder center grey" id="dialog-confirm-content2">
		<i class="icon-hand-right blue bigger-120"></i>
	</p>
</div><!-- #dialog-confirm -->
		
<script type="text/javascript">

	//override dialog's title function to allow for HTML titles
	$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
		_title: function (title) {
			var $title = this.options.title || '&nbsp;'
			if (("title_html" in this.options) && this.options.title_html == true)
				title.html($title);
			else title.text($title);
		}
	}));


	var hideAlert = function () {
	    //alert($("#dialog-message").is(':data(dialog)'));
		$("#dialog-message").dialog("close");
	}

	var hideConfirm = function () {
	    $("#dialog-confirm").dialog("close");
	}

	var showLoading = function () {
		var progressBar = "";
		progressBar = '<div class="ui-progressbar ui-widget ui-widget-content ui-corner-all progress progress-striped active" id="progressbar" role="progressbar" aria-valuenow="37" aria-valuemin="0" aria-valuemax="100">'
		progressBar += '<div class="ui-progressbar-value ui-widget-header ui-corner-left progress-bar progress-bar-success" style="width: 100%;"></div>'
		progressBar += '</div>';
		showAlert(progressBar, "Loading", false);
	}

	var hideLoading = function () {
		$("#dialog-loading").dialog("close");
	}

	var showAlert = function (body) {
		showAlert( body, null);
	}
	var showAlert = function (body, title) {
		showAlert(body, title, false, null, null);
	}
	var showAlert = function (body, title, isConfirm, OK_Func) {
		showAlert(body, title, isConfirm, OK_Func, null);
	}
	var showAlert = function (body, title, isConfirm, OK_Func, body2) {
		
		var dialogName = "message";
		if ( title == "Loading" ) {
			dialogName = "loading";
		} else if ( title == null, title == undefined ) {
			title = "";
		}
		$('#dialog-' + dialogName + '-content1').html("");
		$('#dialog-' + dialogName + '-content2').html("");
		
		$('#dialog-' + dialogName + '-content1').html(body);
		$('#dialog-' + dialogName + '-content2').html(body2);

		var buttons = new Array();
		if (isConfirm == true) {
			buttons[0] = {
				text: "Cancel",
				"class": "btn btn-xs",
				click: function () {
					$(this).dialog("close");
					$('#hideAlert').modal("hide");
				}
			}
			buttons[1] = {
				text: "OK",
				"class": "btn btn-danger btn-xs",
				click: function () {
					if (OK_Func == null || OK_Func == undefined) {
						$(this).dialog("close");
					} else {
						eval(OK_Func);
						$(this).dialog("close");
					}
				}
			}
		} else {
			buttons[0] = {
				text: "OK",
				"class": "btn btn-primary btn-xs",
				click: function () {
					if (OK_Func == null || OK_Func == undefined) {
						$(this).dialog("close");
					} else {
						eval(OK_Func);
						$(this).dialog("close");
					}
				}
			}
		}

		var dialog = $("#dialog-" + dialogName).removeClass('hide').dialog({
            width: 480,
			modal: true,
			title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='icon-ok'></i> " + title  + "</h4></div>",
			title_html: true,
			buttons: buttons,
			show: {
			    effect: "fade",
			    duration: 300
			},
			hide: {
			    effect: "fade",
			    duration: 300
			}
		});

	}





//var showConfirm = function (title, content, OK_Func, NO_Func) {
//	e.preventDefault();

//	var dialog = $("#dialog-message").removeClass('hide').dialog({
//	    width: 480,
//		modal: true,
//		title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='icon-ok'></i> jQuery UI Dialog</h4></div>",
//		title_html: true,
//		buttons: [
//			{
//				text: "Cancel",
//				"class": "btn btn-xs",
//				click: function () {
//					if (NO_Func == null) {
//						$(this).dialog("close");
//					} else {
//						eval(NO_Func);
//					}
//				}
//			},
//			{
//				text: "OK",
//				"class": "btn btn-primary btn-xs",
//				click: function () {
//					if (OK_Func == null) {
//						$(this).dialog("close");
//					} else {
//						eval(OK_Func);
//					}
//				}
//			}
//		],
//		show: {
//		    effect: "fade",
//		    duration: 1000
//		},
//		hide: {
//		    effect: "fade",
//		    duration: 1000
//		}
//	});

//	dialog.data("uiDialog")._title = function (title) {
//		title.html(this.options.title);
//	};

//	/**
//	dialog.data( "uiDialog" )._title = function(title) {
//		title.html( this.options.title );
//	};
//	**/
//}


//var showConfirmAlert = function (title, content, OK_Func, NO_Func) {
//	e.preventDefault();

//	$("#dialog-confirm").removeClass('hide').dialog({
//		resizable: false,
//		modal: true,
//		title: "<div class='widget-header'><h4 class='smaller'><i class='icon-warning-sign red'></i> Empty the recycle bin?</h4></div>",
//		title_html: true,
//		buttons: [
//			{
//				html: "<i class='icon-trash bigger-110'></i>&nbsp; Delete all items",
//				"class": "btn btn-danger btn-xs",
//				click: function () {
//					$(this).dialog("close");
//				}
//			}
//			,
//			{
//				html: "<i class='icon-remove bigger-110'></i>&nbsp; Cancel",
//				"class": "btn btn-xs",
//				click: function () {
//					$(this).dialog("close");
//				}
//			}
//		]
//	});
//}


</script>