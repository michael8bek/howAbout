package howAbout.model;

import java.sql.Date;

public class Couponlist {
	private	int cplist_id;
	private String cplist_regdate;
	private String cplist_expire;
	private String cplist_use;
	private String cp_id;
	private String mem_id;
	private int cp_benefit;
	
	public int getCplist_id() {
		return cplist_id;
	}
	public void setCplist_id(int cplist_id) {
		this.cplist_id = cplist_id;
	}
	public String getCplist_regdate() {
		return cplist_regdate;
	}
	public void setCplist_regdate(String cplist_regdate) {
		this.cplist_regdate = cplist_regdate;
	}
	public String getCplist_expire() {
		return cplist_expire;
	}
	public void setCplist_expire(String cplist_expire) {
		this.cplist_expire = cplist_expire;
	}
	public String getCplist_use() {
		return cplist_use;
	}
	public void setCplist_use(String cplist_use) {
		this.cplist_use = cplist_use;
	}
	public String getCp_id() {
		return cp_id;
	}
	public void setCp_id(String cp_id) {
		this.cp_id = cp_id;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getCp_benefit() {
		return cp_benefit;
	}
	public void setCp_benefit(int cp_benefit) {
		this.cp_benefit = cp_benefit;
	}
	
	
	
}
