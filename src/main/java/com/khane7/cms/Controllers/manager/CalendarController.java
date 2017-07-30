package com.khane7.cms.Controllers.manager;

import com.khane7.cms.Application;
import com.khane7.cms.Beans.BeanCalendar;
import com.khane7.cms.Beans.BeanUsers;
import com.khane7.cms.Common.Utility;
import com.khane7.cms.Dao.DaoCalendar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-09-17.
 */
@Controller
@RequestMapping(value = Application.MANAGER_URL + "/calendar")
public class CalendarController extends Application {

	@Autowired
	DaoCalendar daoCalendar;


	@RequestMapping(value = "/")
	public String index ( @RequestParam Map<String, String> map, ModelMap model) {

		return Application.MANAGER_URL + "/calendar/index";
	}


	@RequestMapping(value = "/setEvent")
	public @ResponseBody Map<String, Object> setEvent (@RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			BeanUsers beanUsers = (BeanUsers) session.getAttribute("session_user");

			BeanCalendar beanCalendar = new BeanCalendar();
			beanCalendar.setTitle(map.get("title"));
			beanCalendar.setUser_id(beanUsers.getUser_id());
			beanCalendar.setSt_date(new Date(Long.valueOf(map.get("start").toString())));
			beanCalendar.setEd_date(new Date(Long.valueOf(map.get("end").toString())));

			int idx = daoCalendar.setCalendar(beanCalendar);
			results.put("status", "OK");
			results.put("idx", idx);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("result", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}





	@RequestMapping(value = "/getEventList")
	@ResponseBody
	public Map<String, Object> getEventList ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			Date st_date = new SimpleDateFormat("yyyy-MM-dd").parse(map.get("start"));
			Date ed_date = new SimpleDateFormat("yyyy-MM-dd").parse(map.get("end"));

			List<BeanCalendar>listEvents = daoCalendar.getCalendarList(st_date, ed_date);

			results.put("status", "OK");
			results.put("listEvents", listEvents);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}




	@RequestMapping(value = "/getEventOne")
	@ResponseBody
	public Map<String, Object> getEventOne ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			BeanCalendar beanCalendar= daoCalendar.getCalendarOne(Integer.parseInt(map.get("idx")));

			String fullDate = "yyyy-MM-dd";
			String fullTime = "HH:mm";
			results.put("status", "OK");
			results.put("beanCalendar", beanCalendar);
			results.put("DATE_ST", new SimpleDateFormat(fullDate).format( beanCalendar.getSt_date() ) );
			results.put("DATE_ED", new SimpleDateFormat(fullDate).format( beanCalendar.getEd_date() ) );
			results.put("TIME_ST", new SimpleDateFormat(fullTime).format( beanCalendar.getSt_date() ) );
			results.put("TIME_ED", new SimpleDateFormat(fullTime).format( beanCalendar.getEd_date() ) );
			results.put("WEEK_ST", Utility.getDateDay(String.valueOf(results.get("DATE_ST")), fullDate) );
			results.put("WEEK_ED", Utility.getDateDay(String.valueOf(results.get("DATE_ED")), fullDate) );

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}




	@RequestMapping(value = "/removeEvent")
	@ResponseBody
	public Map<String, Object> removeEvent ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			int idx = Integer.parseInt(map.get("idx"));
			daoCalendar.deleteCalendar(idx);

			results.put("status", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}





}
