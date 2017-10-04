<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-03-16
  Time: 오후 2:03
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8"%>

<jsp:include page="../include/declare.jsp" />

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