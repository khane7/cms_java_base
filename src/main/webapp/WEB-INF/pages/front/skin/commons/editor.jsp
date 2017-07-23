<%--
  Created by IntelliJ IDEA.
  User: khane7
  Date: 2016-02-22
  Time: 오전 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet" href="${ pageContext.request.contextPath }/bootstrap/assets2/css/bootstrap.css" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/bootstrap/assets2/css/font-awesome.css" />

<!-- fonts -->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/bootstrap/assets2/css/ace-fonts.css" />


<link rel="stylesheet" href="${ pageContext.request.contextPath }/bootstrap/assets2/css/ace.css" />
<!--[if lte IE 9]>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/bootstrap/assets2/css/ace-ie.css" />
<![endif]-->


<div id="editor" class="wysiwyg-editor"></div>
<!-- <input type="hidden" name="wysiwyg-value" /> -->


<!-- basic scripts -->
<!--[if !IE]> -->
<script type="text/javascript">
	window.jQuery || document.write("<script src='${ pageContext.request.contextPath }/bootstrap/assets2/js/jquery.js'>"+"<"+"/script>");
</script>
<!-- <![endif]-->
<!--[if IE]>
<script type="text/javascript">
window.jQuery || document.write("<script src='${ pageContext.request.contextPath }/bootstrap/assets2/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->

<script src="${ pageContext.request.contextPath }/bootstrap/assets2/js/bootstrap.js"></script>

<script src="${ pageContext.request.contextPath }/bootstrap/assets2/js/bootstrap-wysiwyg.js"></script>

<!-- ace scripts -->
<script src="${ pageContext.request.contextPath }/bootstrap/assets2/js/ace-elements.js"></script>
<script src="${ pageContext.request.contextPath }/bootstrap/assets2/js/ace.js"></script>

<script type="text/javascript">
	jQuery(function($) {
		$('#editor').css({'height':'400px'}).ace_wysiwyg({
			toolbar:
					[
						{
							name: 'font',
							title: '폰트',
							values: ['나눔고딕', 'Arial', 'Courier', 'Comic Sans MS', 'Helvetica', 'Open Sans', 'Tahoma', 'Verdana']
						},
						null,
						{
							name:'fontSize',
							title:'Custom tooltip',
							values:{1 : 'Size#1 Text' , 2 : 'Size#1 Text' , 3 : 'Size#3 Text' , 4 : 'Size#4 Text' , 5 : 'Size#5 Text'}
						},
						null,
						{name:'bold', title:'Custom tooltip'},
						{name:'italic', title:'Custom tooltip'},
						{name:'strikethrough', title:'Custom tooltip'},
						{name:'underline', title:'Custom tooltip'},
						null,
						'insertunorderedlist',
						'insertorderedlist',
						'outdent',
						'indent',
						null,
						{name:'justifyleft'},
						{name:'justifycenter'},
						{name:'justifyright'},
						{name:'justifyfull'},
						null,
						{
							name:'createLink',
							placeholder:'Custom PlaceHolder Text',
							button_class:'btn-purple',
							button_text:'Custom TEXT'
						},
						{name:'unlink'},
						null,
						{
							name: 'insertImage',
							placeholder: '이미지 URL',
							button_class: 'btn-inverse',
							//choose_file:false,//hide choose file button
							button_text: '이미지 첨부',
							button_insert_class: 'btn-pink',
							button_insert: 'Image URL'
						},
						null,
						{
							name:'foreColor',
							title:'Custom Colors',
							values:['red','green','blue','navy','orange'],
							/**
							 You change colors as well
							 */
						},
					/**null,
					 {
						name:'backColor'
					},*/
						null,
						{name:'undo'},
						{name:'redo'},
						null,
						'viewSource'
					],
			//speech_button:false,//hide speech button on chrome

			'wysiwyg': {
				hotKeys : {} //disable hotkeys
			}

		}).prev().addClass('wysiwyg-style2');

	});
</script>



