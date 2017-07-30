package com.khane7.cms.Beans;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by khane7 on 2016-02-19.
 */
public class BeanFile implements Serializable {

	private int idx = 0;
	private int tb_idx = 0;
	private String tb_name = null;
	private String web_path = null;
	private String realfilename = null;
	private String filename = null;
	private String fileext = null;
	private String filesize = null;
	private Date regdate = new Date(Calendar.getInstance().getTimeInMillis());

	private boolean isSuccess = false;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getTb_idx() {
		return tb_idx;
	}

	public void setTb_idx(int tb_idx) {
		this.tb_idx = tb_idx;
	}

	public String getTb_name() {
		return tb_name;
	}

	public void setTb_name(String tb_name) {
		this.tb_name = tb_name;
	}

	public String getWeb_path() {
		return web_path;
	}

	public void setWeb_path(String web_path) {
		this.web_path = web_path;
	}

	public String getRealfilename() {
		return realfilename;
	}

	public void setRealfilename(String realfilename) {
		this.realfilename = realfilename;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFileext() {
		return fileext;
	}

	public void setFileext(String fileext) {
		this.fileext = fileext;
	}

	public String getFilesize() {
		return filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public boolean isSuccess() {
		return isSuccess;
	}

	public void setIsSuccess(boolean isSuccess) {
		this.isSuccess = isSuccess;
	}
}
