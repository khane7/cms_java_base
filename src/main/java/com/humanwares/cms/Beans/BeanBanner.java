package com.humanwares.cms.Beans;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by khane7 on 2016-03-16.
 */
public class BeanBanner implements Serializable {

	private int idx = 0;
	private String title = "";
	private String link = "";
	private String link_type = "_blank";
	private String banner_img = "";
	private String banner_img_preview = "";
	private String banner_img_data = "";
	private int ordering = 99;
	private Date regdate = new Date(Calendar.getInstance().getTimeInMillis());




	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getLink_type() {
		return link_type;
	}

	public void setLink_type(String link_type) {
		this.link_type = link_type;
	}

	public String getBanner_img() {
		return banner_img;
	}

	public void setBanner_img(String banner_img) {
		this.banner_img = banner_img;
	}

	public String getBanner_img_preview() {
		return banner_img_preview;
	}

	public void setBanner_img_preview(String banner_img_preview) {
		this.banner_img_preview = banner_img_preview;
	}

	public String getBanner_img_data() {
		return banner_img_data;
	}

	public void setBanner_img_data(String banner_img_data) {
		this.banner_img_data = banner_img_data;
	}

	public int getOrdering() {
		return ordering;
	}

	public void setOrdering(int ordering) {
		this.ordering = ordering;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
