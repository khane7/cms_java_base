package com.khane7.cms.Dao;

import com.khane7.cms.Beans.BeanCalendar;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Created by khane7 on 2016-03-16.
 */
@Repository
public class DaoCalendar extends DaoBase {

	public List<BeanCalendar> getCalendarList ( Date st_date, Date ed_date ) {

		params = new HashMap<String, Object>();
		params.put("st_date", st_date);
		params.put("ed_date", ed_date);

		return sqlSession.selectList("CALENDAR.select_calendar", params);
	}

	public BeanCalendar getCalendarOne (int idx) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		return sqlSession.selectOne("CALENDAR.select_calendar", params);
	}

	public List<BeanCalendar> getCalendar (String title) {

		params = new HashMap<String, Object>();
		params.put("title", title);

		return sqlSession.selectOne("CALENDAR.select_calendar", params);
	}


	public int setCalendar ( BeanCalendar beanCalendar ) {

		if ( beanCalendar.getIdx() <= 0  ) {

			int max = 0;
			params = new HashMap<String, Object>();
			params.put("tb_name", "tb_calendar");
			if ( sqlSession.selectOne("COMMON.select_max_idx", params)  == null ) {
				max = 0;
			} else {
				max = sqlSession.selectOne("COMMON.select_max_idx", params );
			}
			beanCalendar.setIdx(max + 1);

			sqlSession.insert("CALENDAR.insert_calendar", beanCalendar);
		} else {
			sqlSession.update("CALENDAR.update_calendar", beanCalendar);
		}

		return beanCalendar.getIdx();
	}


	public void deleteCalendar ( int idx ) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		sqlSession.delete("CALENDAR.delete_calendar", params);
	}



}
