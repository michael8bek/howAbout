package howAbout.model;


import java.sql.Date;

public class Cart {
	private int cart_id;
	private Date cart_date;
	private Date cart_editdate;
	private String cart_state;
	private String mem_id;
	private int goods_qty;
	private int goods_id;
	private String goods_name;
	private int goods_price;
	private int goods_delprice;
	private String goods_color;
	private String goods_size;
	private String goods_img;
	private String grade_name;
	private String cp_benefit;
	
	
	public String getCp_benefit() {
		return cp_benefit;
	}
	public void setCp_benefit(String cp_benefit) {
		this.cp_benefit = cp_benefit;
	}
	public String getGrade_name() {
		return grade_name;
	}
	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}
	public int getGoods_qty() {
		return goods_qty;
	}
	public void setGoods_qty(int goods_qty) {
		this.goods_qty = goods_qty;
	}
	public String getGoods_img() {
		return goods_img;
	}
	public void setGoods_img(String goods_img) {
		this.goods_img = goods_img;
	}
	public String getGoods_color() {
		return goods_color;
	}
	public void setGoods_color(String goods_color) {
		this.goods_color = goods_color;
	}
	public String getGoods_size() {
		return goods_size;
	}
	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}
	public int getGoods_delprice() {
		return goods_delprice;
	}
	public void setGoods_delprice(int goods_delprice) {
		this.goods_delprice = goods_delprice;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public Date getCart_date() {
		return cart_date;
	}
	public void setCart_date(Date cart_date) {
		this.cart_date = cart_date;
	}
	public Date getCart_editdate() {
		return cart_editdate;
	}
	public void setCart_editdate(Date cart_editdate) {
		this.cart_editdate = cart_editdate;
	}
	public String getCart_state() {
		return cart_state;
	}
	public void setCart_state(String cart_state) {
		this.cart_state = cart_state;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
}