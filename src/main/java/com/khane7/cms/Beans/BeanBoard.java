package com.khane7.cms.Beans;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by khane7 on 2016-02-17.
 */
public class BeanBoard implements Serializable {

	private int idx = 0;
	private int pidx = 0;
	private String tree_level = "";
	private int depth = 0;
	private String tb_name;
	private String writer_key;
	private String writer;
	private String writer_pw;
	private String title;
	private String content_text = "";
	private String content_html = "";
	private String is_use = "Y";
	private String is_notice = "N";
	private Date regdate = new Date(Calendar.getInstance().getTimeInMillis());
	private String reg_ip;
	private int views = 0;
	private String opt1;
	private String opt2;
	private String opt3;
	private String opt4;
	private String opt5;
	private String opt6;
	private String opt7;
	private String opt8;
	private String opt9;

	private BeanFile thumbnail;
	private List<BeanFile> attachList;
	private int comment_count = 0;

	private BeanBoard reply;

	private String is_new = "N";





	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getPidx() {
		return pidx;
	}

	public void setPidx(int pidx) {
		this.pidx = pidx;
	}

	public String getTree_level() {
		return tree_level;
	}

	public void setTree_level(String tree_level) {
		this.tree_level = tree_level;
		this.setDepth( tree_level.split("[.]").length );
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public String getTb_name() {
		return tb_name;
	}

	public void setTb_name(String tb_name) {
		this.tb_name = tb_name;
	}

	public String getWriter_key() {
		return writer_key;
	}

	public void setWriter_key(String writer_key) {
		this.writer_key = writer_key;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWriter_pw() {
		return writer_pw;
	}

	public void setWriter_pw(String writer_pw) {
		this.writer_pw = writer_pw;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent_text() {
		return content_text;
	}

	public void setContent_text(String content_text) {
		this.content_text = content_text;
	}

	public String getContent_html() {
		return content_html;
	}

	public void setContent_html(String content_html) {
		this.content_html = content_html;
	}

	public String getIs_use() {
		return is_use;
	}

	public void setIs_use(String is_use) {
		this.is_use = is_use;
	}

	public String getIs_notice() {
		return is_notice;
	}

	public void setIs_notice(String is_notice) {
		this.is_notice = is_notice;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;

		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, -7);
//		Date today = new Date(cal.getTimeInMillis());

		if ( this.regdate.getTime() > cal.getTimeInMillis() ) {
			this.setIs_new("Y");
		} else {
			this.setIs_new("N");
		}

	}

	public String getReg_ip() {
		return reg_ip;
	}

	public void setReg_ip(String reg_ip) {
		this.reg_ip = reg_ip;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public String getOpt1() {
		return opt1;
	}

	public void setOpt1(String opt1) {
		this.opt1 = opt1;
	}

	public String getOpt2() {
		return opt2;
	}

	public void setOpt2(String opt2) {
		this.opt2 = opt2;
	}

	public String getOpt3() {
		return opt3;
	}

	public void setOpt3(String opt3) {
		this.opt3 = opt3;
	}

	public String getOpt4() {
		return opt4;
	}

	public void setOpt4(String opt4) {
		this.opt4 = opt4;
	}

	public String getOpt5() {
		return opt5;
	}

	public void setOpt5(String opt5) {
		this.opt5 = opt5;
	}

	public String getOpt6() {
		return opt6;
	}

	public void setOpt6(String opt6) {
		this.opt6 = opt6;
	}

	public String getOpt7() {
		return opt7;
	}

	public void setOpt7(String opt7) {
		this.opt7 = opt7;
	}

	public String getOpt8() {
		return opt8;
	}

	public void setOpt8(String opt8) {
		this.opt8 = opt8;
	}

	public String getOpt9() {
		return opt9;
	}

	public void setOpt9(String opt9) {
		this.opt9 = opt9;
	}

	public BeanFile getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(BeanFile thumbnail) {
		this.thumbnail = thumbnail;
	}

	public List<BeanFile> getAttachList() {
		return attachList;
	}

	public void setAttachList(List<BeanFile> attachList) {
		this.attachList = attachList;
	}

	public int getComment_count() {
		return comment_count;
	}

	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}

	public BeanBoard getReply() {
		return reply;
	}

	public void setReply(BeanBoard reply) {
		this.reply = reply;
	}

	public String getIs_new() {
		return is_new;
	}

	public void setIs_new(String is_new) {
		this.is_new = is_new;
	}
}
