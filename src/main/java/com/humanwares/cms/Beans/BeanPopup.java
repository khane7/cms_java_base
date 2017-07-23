package com.humanwares.cms.Beans;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by khane7 on 2016-03-17.
 */
public class BeanPopup implements Serializable {

	private int idx = 0;
	private String title = "";
	private String img_main = "";
	private String img_main_data = "";
	private int link_position_x = 0;
	private int link_position_y = 0;
	private int link_size_x = 0;
	private int link_size_y = 0;
	private int close_position_x = 0;
	private int close_position_y = 0;
	private String url = "";
	private int size_x  = 0;
	private int size_y = 0;
	private Date regdate = new Date(Calendar.getInstance().getTimeInMillis());
	private String is_use = "Y";


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

	public String getImg_main() {
		return img_main;
	}

	public void setImg_main(String img_main) {
		this.img_main = img_main;
	}

	public String getImg_main_data() {
		return img_main_data;
	}

	public void setImg_main_data(String img_main_data) {
		this.img_main_data = img_main_data;
	}

	public int getLink_position_x() {
		return link_position_x;
	}

	public void setLink_position_x(int link_position_x) {
		this.link_position_x = link_position_x;
	}

	public int getLink_position_y() {
		return link_position_y;
	}

	public void setLink_position_y(int link_position_y) {
		this.link_position_y = link_position_y;
	}

	public int getLink_size_x() {
		return link_size_x;
	}

	public void setLink_size_x(int link_size_x) {
		this.link_size_x = link_size_x;
	}

	public int getLink_size_y() {
		return link_size_y;
	}

	public void setLink_size_y(int link_size_y) {
		this.link_size_y = link_size_y;
	}

	public int getClose_position_x() {
		return close_position_x;
	}

	public void setClose_position_x(int close_position_x) {
		this.close_position_x = close_position_x;
	}

	public int getClose_position_y() {
		return close_position_y;
	}

	public void setClose_position_y(int close_position_y) {
		this.close_position_y = close_position_y;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getSize_x() {
		return size_x;
	}

	public void setSize_x(int size_x) {
		this.size_x = size_x;
	}

	public int getSize_y() {
		return size_y;
	}

	public void setSize_y(int size_y) {
		this.size_y = size_y;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getIs_use() {
		return is_use;
	}

	public void setIs_use(String is_use) {
		this.is_use = is_use;
	}
}
