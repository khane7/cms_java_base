<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/cms_manager/getLayoutHeader" />

<body class="no-skin">

<jsp:include flush="false"  page="/cms_manager/getLayoutTop" />

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
  <script type="text/javascript">
    try{ace.settings.check('main-container' , 'fixed')}catch(e){}
  </script>

  <jsp:include flush="true" page="/cms_manager/getLayoutLeft" />
  <div class="main-content">
    <jsp:include page="/cms_manager/getLayoutNavigator" />
    <div class="page-content">
      <jsp:include page="/cms_manager/getLayoutRight" />


      <div class="page-header">
        <h1>
          회원관리
          <small>
            <i class="ace-icon fa fa-angle-double-right"></i>
            가입된 회원의 계정정보
          </small>
        </h1>
      </div>

      <div class="row">
        <div class="col-xs-12">
          <!-- PAGE CONTENT BEGINS -->




          <!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
      </div>
    </div><!-- /.page-content -->
  </div><!-- /.main-content -->
  <jsp:include page="/cms_manager/getLayoutBottom" />
</div><!-- /.main-container -->
<jsp:include page="/cms_manager/getLayoutTail" />



</body>




</html>