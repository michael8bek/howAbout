package howAbout.model;

import java.sql.Date;


public class Stylefeed {
	private int ts_id;
	private String ts_content;
	private Date ts_regdate;
	private String ts_del;
	private String mem_id;
	private String mem_name;
	private int ts_like;
	private int ts_readcount;
	private String ts_img_path;
	private String ts_img_name;
	
	private int reply_id;
	private String reply_content;
	private Date reply_regdate;
	private String reply_del;
	private int reply_count;
	
	public int getReply_count() {
		return reply_count;
	}
	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}
	public String getReply_del() {
		return reply_del;
	}
	public void setReply_del(String reply_del) {
		this.reply_del = reply_del;
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public Date getReply_regdate() {
		return reply_regdate;
	}
	public void setReply_regdate(Date reply_regdate) {
		this.reply_regdate = reply_regdate;
	}
	public int getTs_like() {
		return ts_like;
	}
	public void setTs_like(int ts_like) {
		this.ts_like = ts_like;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getTs_img_path() {
		return ts_img_path;
	}
	public void setTs_img_path(String ts_img_path) {
		this.ts_img_path = ts_img_path;
	}
	public String getTs_img_name() {
		return ts_img_name;
	}
	public void setTs_img_name(String ts_img_name) {
		this.ts_img_name = ts_img_name;
	}
	
	public int getTs_id() {
		return ts_id;
	}
	public void setTs_id(int ts_id) {
		this.ts_id = ts_id;
	}
	public String getTs_content() {
		return ts_content;
	}
	public void setTs_content(String input_content) {
		this.ts_content = input_content;
	}
	public Date getTs_regdate() {
		return ts_regdate;
	}
	public void setTs_regdate(Date ts_regdate) {
		this.ts_regdate = ts_regdate;
	}
	public String getTs_del() {
		return ts_del;
	}
	public void setTs_del(String ts_del) {
		this.ts_del = ts_del;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getTs_readcount() {
		return ts_readcount;
	}
	public void setTs_readcount(int ts_readcount) {
		this.ts_readcount = ts_readcount;
	}
	
}
