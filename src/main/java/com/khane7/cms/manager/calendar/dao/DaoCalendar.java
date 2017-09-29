package com.khane7.cms.manager.calendar.dao;

import com.khane7.cms.manager.calendar.vo.BeanCalendar;
import com.khane7.cms.manager.system.dao.DaoBase;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-03-16.
 */
@Repository
public class DaoCalendar extends DaoBase {

	public List<BeanCalendar> getCalendarList ( Date st_date, Date ed_date ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("st_date", st_date);
		params.put("ed_date", ed_date);

		return getSqlSession().selectList("CALENDAR.select_calendar", params);
	}

	public BeanCalendar getCalendarOne (int idx) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		return getSqlSession().selectOne("CALENDAR.select_calendar", params);
	}

	public List<BeanCalendar> getCalendar (String title) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("title", title);

		return getSqlSession().selectOne("CALENDAR.select_calendar", params);
	}


	public int setCalendar ( BeanCalendar beanCalendar ) {

		if ( beanCalendar.getIdx() <= 0  ) {

			int max = 0;
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("tb_name", "tb_calendar");
			if ( getSqlSession().selectOne("COMMON.select_max_idx", params)  == null ) {
				max = 0;
			} else {
				max = getSqlSession().selectOne("COMMON.select_max_idx", params );
			}
			beanCalendar.setIdx(max + 1);

			getSqlSession().insert("CALENDAR.insert_calendar", beanCalendar);
		} else {
			getSqlSession().update("CALENDAR.update_calendar", beanCalendar);
		}

		return beanCalendar.getIdx();
	}


	public void deleteCalendar ( int idx ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		getSqlSession().delete("CALENDAR.delete_calendar", params);
	}



}
