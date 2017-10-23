package howAbout.model;

import java.sql.Date;

public class Member {
	private String mem_id;
	private String mem_name;
	private String mem_pw;
	private Date mem_birth;
	private String mem_phone;
	private String mem_addr;
	private int mem_point;
	private String grade_name;
	private Date mem_regdate;
	private Date mem_exitdate;
	private String mem_exitstate;
	private String mem_email;
	private String mem_pic;
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public Date getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_addr() {
		return mem_addr;
	}
	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}
	
	public String getGrade_name() {
		return grade_name;
	}
	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}
	public Date getMem_regdate() {
		return mem_regdate;
	}
	public void setMem_regdate(Date mem_regdate) {
		this.mem_regdate = mem_regdate;
	}
	public Date getMem_exitdate() {
		return mem_exitdate;
	}
	public void setMem_exitdate(Date mem_exitdate) {
		this.mem_exitdate = mem_exitdate;
	}
	public String getMem_exitstate() {
		return mem_exitstate;
	}
	public void setMem_exitstate(String mem_exitstate) {
		this.mem_exitstate = mem_exitstate;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_pic() {
		return mem_pic;
	}
	public void setMem_pic(String mem_pic) {
		this.mem_pic = mem_pic;
	}
	
}
