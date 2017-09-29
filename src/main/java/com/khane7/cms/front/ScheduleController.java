package com.khane7.cms.front;

import com.khane7.cms.Application;
import com.khane7.cms.manager.calendar.vo.BeanCalendar;
import com.khane7.cms.manager.calendar.dao.DaoCalendar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by kang on 17. 5. 17.
 */
@Controller
@RequestMapping(value = Application.FRONT  + "/schedule")
public class ScheduleController extends Application {

    @Autowired
    HttpSession httpSession;

    @Autowired
	DaoCalendar daoCalendar;

    @RequestMapping(value = {"/"})
    public String index (@RequestParam Map<String, String> map, ModelMap model) {


            String tb_year = map.get("tb_year");
            String tb_month = map.get("tb_month");

            Map<String, Object> results = new HashMap<String, Object>();

            try {

                Date st_date = new SimpleDateFormat("yyyy-MM-dd").parse(tb_year + "-" + tb_month + "-01");
                Date ed_date = new SimpleDateFormat("yyyy-MM-dd").parse(tb_year + "-" + tb_month + "-31");

                List<BeanCalendar> listEvents = daoCalendar.getCalendarList(st_date, ed_date);

                results.put("status", "OK");
                results.put("listEvents", listEvents);

            } catch (Exception e) {
                e.printStackTrace();
                results.put("status", "FAIL");
                results.put("msg", e.getMessage());
            }



        return "[{aaaa}]";
    }

    @RequestMapping(value = {"/getData"})
    public @ResponseBody  ArrayList<Map<String, Object>> getData () {

        Map<String, Object> jsonSubObject = null;
        ArrayList<Map<String, Object>> jsonList = new ArrayList<Map<String, Object>>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
//            Date st_date = new SimpleDateFormat("yyyy-MM-dd").parse( "2017-01-01");
//            Date ed_date = new SimpleDateFormat("yyyy-MM-dd").parse("2018-03-01");
            List<BeanCalendar> listEvents = daoCalendar.getCalendarList(null, null);

            for(int i=0; i<listEvents.size(); i++) {

                BeanCalendar bc = listEvents.get(i);

                //시작일
                String str_date = sdf.format(bc.getSt_date()).toString();

                //종료일
                String end_date = sdf.format(bc.getEd_date()).toString();

                //시작일과 종료일이 다를 경우
                int date_compare = (int) (bc.getEd_date().getTime() - bc.getSt_date().getTime()) / ( 24 * 60 * 60 * 1000);


                if(date_compare == 0) {

                    jsonSubObject = new HashMap<String, Object>();
                    jsonSubObject.put("date",str_date);
                    jsonSubObject.put("badge", true);
                    jsonSubObject.put("title", "Hall Schedule");
                    jsonSubObject.put("body", bc.getTitle());
                    jsonSubObject.put("footer", "HANYANG UNIVERSITY DORMITORY");
                    jsonSubObject.put("classname", "purple-event");
                    jsonList.add(jsonSubObject);
                } else {
                    for(int d=0; d<=date_compare; d++) {

                        Calendar t_date = Calendar.getInstance();
                        t_date.setTime(bc.getSt_date());
                        t_date.add(Calendar.DATE, d);

                        String getDate = sdf.format(new Date(t_date.getTimeInMillis())).toString();

                        try {
                            jsonSubObject = new HashMap<String, Object>();
                            jsonSubObject.put("date", getDate);
                            jsonSubObject.put("badge", true);
                            jsonSubObject.put("title", "Hall Schedule");
                            jsonSubObject.put("body", bc.getTitle());
                            jsonSubObject.put("footer", "HANYANG UNIVERSITY DORMITORY");
                            jsonSubObject.put("classname", "purple-event");
                            jsonList.add(jsonSubObject);
                        } catch (Exception e) {
                            jsonSubObject = new HashMap<String, Object>();
                            jsonSubObject.put("error", e.toString());
                            jsonList.add(jsonSubObject);
                        }
                    }
                }

            }

        } catch (Exception e) {

        }

        return jsonList;
    }

    @RequestMapping(value = {"/getDataTerm"})
    public @ResponseBody  ArrayList<Map<String, Object>> getDataTerm (@RequestParam Map<String, String> map, ModelMap model) {

        String tb_year_month = map.get("tb_year_month");
        String tb_start = tb_year_month + "-01";
        String tb_end = tb_year_month + "-31";

        Map<String, Object> jsonObject = new HashMap<String, Object>();
        Map<String, Object> jsonSubObject = null;
        ArrayList<Map<String, Object>> jsonList = new ArrayList<Map<String, Object>>();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
            Date st_date = new SimpleDateFormat("yyyy-MM-dd").parse( tb_start);
            Date ed_date = new SimpleDateFormat("yyyy-MM-dd").parse(tb_end);
            List<BeanCalendar> listEvents = daoCalendar.getCalendarList(st_date, ed_date);

            for(int i=0; i<listEvents.size(); i++) {

                BeanCalendar bc = listEvents.get(i);

                //시작일
                String str_date = sdf.format(bc.getSt_date()).toString();

                //종료일
                String end_date = sdf.format(bc.getEd_date()).toString();

                String term_date = "";
                if(str_date.equals(end_date)) {
                    term_date = str_date;
                } else {
                    term_date = str_date + " ~ " + end_date;
                }

                jsonSubObject = new HashMap<String, Object>();
                jsonSubObject.put("date",term_date);
                jsonSubObject.put("body", bc.getTitle());
                jsonList.add(jsonSubObject);


            }

        } catch (Exception e) {

        }


        return jsonList;
    }

}
