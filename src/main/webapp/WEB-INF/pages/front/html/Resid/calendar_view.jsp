<%--
  Created by IntelliJ IDEA.
  User: kang
  Date: 17. 5. 18
  Time: 오후 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script src="/js/jquery/jquery-1.11.0.min.js" type="text/javascript"></script>

    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="/css/zabuto_calendar.min.css"/>
    <script src="/js/plugins/zabuto_calendar.min.js" type="text/javascript"></script>
    <script type="application/javascript">


        $(document).ready(function () {
            $("#schedule-calendar").zabuto_calendar({
                language: "en",
                cell_border: true,
                today: true,
                show_days: true,
                weekstartson: 0,
                nav_icon : {
                    prev: '<i class="fa fa-chevron-circle-left"></i>',
                    next: '<i class="fa fa-chevron-circle-right"></i>'
                },
                ajax : {
                    url: "/schedule/getData",
                    modal: true
                },
                action_nav : function() {
                    return naviChangeFunction(this.id)
                }
            });

            initScheduleFunction();
        });

        function initScheduleFunction() {
            var dt = new Date();
            var yearmonth = dt.getFullYear() + "-" + (dt.getMonth()+1);
            $.getJSON("/schedule/getDataTerm?tb_year_month="+yearmonth, function(data) {
                var schedule = "";

                $.each(data, function(ei, e) {
                    schedule += "<span style='display: inline-block; width: 17%; color: #0B1022; margin-top: 10px;'>"+e.date+"</span> : <span style='font-weight: bold; margin-top: 10px;'>"+e.body+"</span><br />";
                });

                if(schedule != "") {
                    $("#schedule-table").show();
                    $("#schedule-content").html(schedule);
                }
                else {
                    $("#schedule-table").hide();
                }

                setFrameHeight();
            });
        }

        function naviChangeFunction(id) {
            $("#schedule-content").html("");

            var to = $("#" + id).data("to");
            var yearmonth = to.year + "-" + to.month;
            $.getJSON("/schedule/getDataTerm?tb_year_month="+yearmonth, function(data) {
               var schedule = "";

               $.each(data, function(ei, e) {
                   schedule += "<span style='display: inline-block; width: 17%; color: #0B1022; margin-top: 10px;'>"+e.date+"</span> : <span style='font-weight: bold; margin-top: 10px;'>"+e.body+"</span><br />";
               });
               if(schedule != "") {
                    $("#schedule-table").show();
                   $("#schedule-content").html(schedule);
               }
               else {
                   $("#schedule-table").hide();
               }

               setFrameHeight();
            });

        }

        function setFrameHeight() {
            var h = $(document).contents().height() + 30;

            $(top.document).find("#calendar_view").css("height",h + "px");
        }

    </script>

</head>
<body>
<div  id="schedule-calendar">
</div>

<div >
    <table id="schedule-table" style="border: 1px #cccccc solid; width: 100%; margin-top: 25px;">
        <tr>
            <td id="schedule-content" style=" padding-bottom: 10px; padding-left: 10px;">

            </td>
        </tr>
    </table>

</div>
</body>
</html>
