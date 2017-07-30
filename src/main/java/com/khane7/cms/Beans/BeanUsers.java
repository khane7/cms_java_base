package com.khane7.cms.Beans;

import java.io.Serializable;
import java.util.Date;

public class BeanUsers implements Serializable {

	private int idx = 0;
	private String user_id;
	private String passwd;
	private String user_name;
	private int level = 0;
	private Date regdate;
	private String is_admin = "N";
	private String is_delete = "N";

	private String themes_name;

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

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getIs_admin() {
		return is_admin;
	}

	public void setIs_admin(String is_admin) {
		this.is_admin = is_admin;
	}

	public String getIs_delete() {
		return is_delete;
	}

	public void setIs_delete(String is_delete) {
		this.is_delete = is_delete;
	}

	public String getThemes_name() {
		return themes_name;
	}

	public void setThemes_name(String themes_name) {
		this.themes_name = themes_name;
	}


}
