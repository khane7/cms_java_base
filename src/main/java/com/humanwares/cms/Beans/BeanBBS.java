package com.humanwares.cms.Beans;

import org.springframework.web.bind.annotation.ModelAttribute;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by khane7 on 2016-02-15.
 */
public class BeanBBS implements Serializable {

	private int idx = 0;
	private String board_key;
	private String board_name;
	private String skin;
	private String is_notice;
	private String is_comment;
	private int is_comment_level = 99;
	private String is_file;
	private String is_thumbnail;
	private String is_secret;
	private String is_nologin;
	private int write_level = 99;
	private int page_count = 15;
	private Date regdate = new Date(Calendar.getInstance().getTimeInMillis());


	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getBoard_key() {
		return board_key;
	}

	public void setBoard_key(String board_key) {
		this.board_key = board_key;
	}

	public String getBoard_name() {
		return board_name;
	}

	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}

	public String getSkin() {
		return skin;
	}

	public void setSkin(String skin) {
		this.skin = skin;
	}

	public String getIs_notice() {
		return is_notice;
	}

	public void setIs_notice(String is_notice) {
		this.is_notice = is_notice;
	}

	public String getIs_comment() {
		return is_comment;
	}

	public void setIs_comment(String is_comment) {
		this.is_comment = is_comment;
	}

	public int getIs_comment_level() {
		return is_comment_level;
	}

	public void setIs_comment_level(int is_comment_level) {
		this.is_comment_level = is_comment_level;
	}

	public String getIs_file() {
		return is_file;
	}

	public void setIs_file(String is_file) {
		this.is_file = is_file;
	}

	public String getIs_thumbnail() {
		return is_thumbnail;
	}

	public void setIs_thumbnail(String is_thumbnail) {
		this.is_thumbnail = is_thumbnail;
	}

	public String getIs_secret() {
		return is_secret;
	}

	public void setIs_secret(String is_secret) {
		this.is_secret = is_secret;
	}

	public String getIs_nologin() {
		return is_nologin;
	}

	public void setIs_nologin(String is_nologin) {
		this.is_nologin = is_nologin;
	}

	public int getWrite_level() {
		return write_level;
	}

	public void setWrite_level(int write_level) {
		this.write_level = write_level;
	}

	public Date getRegdate() {
		return regdate;
	}

	public int getPage_count() {
		return page_count;
	}

	public void setPage_count(int page_count) {
		this.page_count = page_count;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
