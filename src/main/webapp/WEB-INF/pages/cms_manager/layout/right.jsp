<%@page language="java" contentType="text/html;charset=utf-8"%>

<jsp:include page="../include/declare.jsp" />

					<!-- #section:settings.box -->
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-150"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left width-50">
								<!-- #section:settings.skins -->
								<div class="ace-settings-item">
									<div class="pull-left">
										<select id="skin-colorpicker" class="hide">
											<option data-skin="no-skin" value="#438EB9">#438EB9</option>
											<option data-skin="skin-1" value="#222A2D">#222A2D</option>
											<option data-skin="skin-2" value="#C6487E">#C6487E</option>
											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
										</select>
									</div>
									<span>&nbsp; Choose Skin</span>
								</div>

								<!-- /section:settings.skins -->

								<!-- #section:settings.navbar -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" value="Y" />
									<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
								</div>

								<!-- /section:settings.navbar -->

								<!-- #section:settings.sidebar -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" value="Y" />
									<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
								</div>

								<!-- /section:settings.sidebar -->

								<!-- #section:settings.breadcrumbs -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" value="Y" />
									<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
								</div>

								<!-- /section:settings.breadcrumbs -->

								<!-- #section:settings.rtl -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" value="Y" />
									<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
								</div>

								<!-- /section:settings.rtl -->

								<!-- #section:settings.container -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" value="Y" />
									<label class="lbl" for="ace-settings-add-container">
										Inside
										<b>.container</b>
									</label>
								</div>

								<!-- /section:settings.container -->
							</div><!-- /.pull-left -->

							<div class="pull-left width-50">
								<!-- #section:basics/sidebar.options -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" value="Y" />
									<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" value="Y" />
									<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" value="Y" />
									<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
								</div>

								<!-- /section:basics/sidebar.options -->
							</div><!-- /.pull-left -->
						</div><!-- /.ace-settings-box -->
					</div><!-- /.ace-settings-container -->

					<!-- /section:settings.box -->


<script type="text/javascript">

	$(document).ready(function () {

		//ace.settings.set('add-container' , 'fixed');

		getThemes();

		$('#skin-colorpicker').change(function () {
			setThemes();
		});

		$('#ace-settings-navbar, #ace-settings-sidebar, #ace-settings-breadcrumbs, #ace-settings-rtl, ' +
			'#ace-settings-add-container, #ace-settings-hover, #ace-settings-compact, #ace-settings-highlight').click(function () {
			setThemes();
		});

	});

	function getThemes () {

		getProcess( CMS + "/account/getThemes", null, function (data) {

			/*$('body').removeClass();
			$('#skin-colorpicker').val(data.colorpicker);
			$('body').addClass(data.colorpicker);*/

			/*if ($('#skin-colorpicker').prop("selectedIndex") <= 0 ) {
				$('body').addClass("no-skin");
			} else {
				$('body').addClass("skin-" + ($('#skin-colorpicker').prop("selectedIndex") + 1) );
			}*/


			if ( data.navbar == "Y" ) {
				$('#ace-settings-navbar').prop("checked", true);
				ace.settings.navbar_fixed(true, true);
			} else {
				$('#ace-settings-navbar').prop("checked", false);
				ace.settings.navbar_fixed(false, true);
			}

			if ( data.sidebar == "Y" ) {
				$('#ace-settings-sidebar').prop("checked", true);
				ace.settings.sidebar_fixed(true, true);
			} else {
				$('#ace-settings-sidebar').prop("checked", false);
				ace.settings.sidebar_fixed(false, false);
			}

			if ( data.breadcrumbs == "Y" ) {
				$('#ace-settings-breadcrumbs').prop("checked", true);
				ace.settings.breadcrumbs_fixed(true, true);
			} else {
				$('#ace-settings-breadcrumbs').prop("checked", false);
				ace.settings.breadcrumbs_fixed(false, false);
			}

			if ( data.rtl == "Y" ) {
				$('#ace-settings-rtl').prop("checked", true);
				//ace.switch_direction(jQuery);
				//$('#ace-settings-rtl').trigger("click");
			} else {
				$('#ace-settings-rtl').prop("checked", false);
				//ace.settings_rtl(jQuery);
				//$('#ace-settings-rtl').trigger("click");
			}

			if ( data.container == "Y" ) {
				$('#ace-settings-add-container').prop("checked", true);
				ace.settings.main_container_fixed(true, true);
			} else {
				$('#ace-settings-add-container').prop("checked", false);
				ace.settings.main_container_fixed(false, true);
			}

			if ( data.hover == "Y" ) {
				$('#ace-settings-hover').prop("checked", true);
			} else {
				$('#ace-settings-hover').prop("checked", false);
			}

			if ( data.compact == "Y" ) {
				$('#ace-settings-compact').prop("checked", true);
			} else {
				$('#ace-settings-compact').prop("checked", false);
			}

			if ( data.highlight == "Y" ) {
				$('#ace-settings-highlight').prop("checked", true);
			} else {
				$('#ace-settings-highlight').prop("checked", false);
			}

		});

	}


	function setThemes () {

		var colorpicker = $('#skin-colorpicker').find(":selected").attr("data-skin");
		var navbar = ($('#ace-settings-navbar').prop("checked")) ? $('#ace-settings-navbar').val() : "";
		var sidebar = ($('#ace-settings-sidebar').prop("checked")) ? $('#ace-settings-sidebar').val() : "";
		var breadcrumbs = ($('#ace-settings-breadcrumbs').prop("checked")) ? $('#ace-settings-breadcrumbs').val() : "";
		var rtl = ($('#ace-settings-rtl').prop("checked")) ? $('#ace-settings-rtl').val() : "";
		var container = ($('#ace-settings-add-container').prop("checked")) ? $('#ace-settings-add-container').val() : "";
		var hover = ($('#ace-settings-hover').prop("checked")) ? $('#ace-settings-hover').val() : "";
		var compact = ($('#ace-settings-compact').prop("checked")) ? $('#ace-settings-compact').val() : "";
		var highlight = ($('#ace-settings-highlight').prop("checked")) ? $('#ace-settings-highlight').val() : "";

		var themes = {

			'colorpicker' : colorpicker,
			'navbar' : navbar,
			'sidebar' : sidebar,
			'breadcrumbs' : breadcrumbs,
			'rtl' : rtl,
			'container' : container,
			'hover' : hover,
			'compact' : compact,
			'highlight' : highlight

		};
		/*themes.colorpicker = $('#skin-colorpicker').val();
		themes.navbar = $('#skin-navbar').val();
		themes.sidebar = $('#skin-sidebar').val();
		themes.breadcrumbs = $('#skin-breadcrumbs').val();
		themes.rtl = $('#skin-rtl').val();
		themes.container = $('#skin-container').val();
		themes.hover = $('#skin-hover').val();
		themes.compact = $('#skin-compact').val();
		themes.highlight = $('#skin-highlight').val();*/

		doProcess( CMS + "/account/setThemes", themes, function (data) {
			getThemes();
		});


	}

</script>