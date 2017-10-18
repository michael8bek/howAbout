package howAbout.model;

import java.sql.Date;

public class Payment {
	private int pay_id;
	private int goods_id;
	private int goods_qty;
	private String mem_id;
	private String pay_name;
	private String pay_phone;
	private String pay_email;
	private String pay_addr;
	private String pay_rename;
	private String pay_rephone;
	private String pay_required;
	private int pay_total;
	private Date pay_time;
	public int getPay_id() {
		return pay_id;
	}
	public void setPay_id(int pay_id) {
		this.pay_id = pay_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getGoods_qty() {
		return goods_qty;
	}
	public void setGoods_qty(int goods_qty) {
		this.goods_qty = goods_qty;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getPay_name() {
		return pay_name;
	}
	public void setPay_name(String pay_name) {
		this.pay_name = pay_name;
	}
	public String getPay_phone() {
		return pay_phone;
	}
	public void setPay_phone(String pay_phone) {
		this.pay_phone = pay_phone;
	}
	public String getPay_email() {
		return pay_email;
	}
	public void setPay_email(String pay_email) {
		this.pay_email = pay_email;
	}
	public String getPay_addr() {
		return pay_addr;
	}
	public void setPay_addr(String pay_addr) {
		this.pay_addr = pay_addr;
	}
	public String getPay_rename() {
		return pay_rename;
	}
	public void setPay_rename(String pay_rename) {
		this.pay_rename = pay_rename;
	}
	public String getPay_rephone() {
		return pay_rephone;
	}
	public void setPay_rephone(String pay_rephone) {
		this.pay_rephone = pay_rephone;
	}
	public String getPay_required() {
		return pay_required;
	}
	public void setPay_required(String pay_required) {
		this.pay_required = pay_required;
	}
	public int getPay_total() {
		return pay_total;
	}
	public void setPay_total(int pay_total) {
		this.pay_total = pay_total;
	}
	public Date getPay_time() {
		return pay_time;
	}
	public void setPay_time(Date pay_time) {
		this.pay_time = pay_time;
	}
	
	
	
}
