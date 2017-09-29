package com.khane7.cms.manager.calendar.vo;

import java.util.Date;

/**
 * Created by khane7 on 2016-09-17.
 */
public class BeanCalendar {


	int idx = 0;
	String user_id;
	String title;
	String content = "";
	Date st_date = new Date();
	Date ed_date = new Date();

	Date regdate = new Date();

	String is_open = "Y";
	String is_loop = "N";


	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getSt_date() {
		return st_date;
	}

	public void setSt_date(Date st_date) {
		this.st_date = st_date;
	}

	public Date getEd_date() {
		return ed_date;
	}

	public void setEd_date(Date ed_date) {
		this.ed_date = ed_date;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getIs_open() {
		return is_open;
	}

	public void setIs_open(String is_open) {
		this.is_open = is_open;
	}

	public String getIs_loop() {
		return is_loop;
	}

	public void setIs_loop(String is_loop) {
		this.is_loop = is_loop;
	}
}
