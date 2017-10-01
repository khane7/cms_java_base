<!--
  Created by IntelliJ IDEA.
  User: khane
  Date: 2017-10-01
  Time: 오후 6:54
  To change this template use File | Settings | File Templates.
-->
<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="SITE_NAME" value="CMS" />


<script type="text/javascript">

	var TOMCAT_PATH = "${ pageContext.request.contextPath }";
	var CMS = TOMCAT_PATH + "/cms_manager";

	var ACCOUNT_MANAGER = CMS + "/account_manager";
	var BOARD_MANAGER = CMS + "/board_manager";
	var CALENDAR = CMS + "/calendar";
	var BOARD = CMS + "/board";
	var FILE = CMS + "/file";
	var COMMENT = CMS + "/comment";
	var BANNER = CMS + "/display_manager/banner";
	var POPUP = CMS + "/display_manager/popup";

</script>