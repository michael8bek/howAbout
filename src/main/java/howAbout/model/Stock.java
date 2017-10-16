package howAbout.model;

import java.sql.Date;

public class Stock {
	private int stock_id;
	private int goods_id;
	private int stock_qty;
	private Date stock_regdate;
	private Date stock_editdate;
	private String stock_sale;
	
	public int getStock_id() {
		return stock_id;
	}
	public void setStock_id(int stock_id) {
		this.stock_id = stock_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getStock_qty() {
		return stock_qty;
	}
	public void setStock_qty(int stock_qty) {
		this.stock_qty = stock_qty;
	}
	public Date getStock_regdate() {
		return stock_regdate;
	}
	public void setStock_regdate(Date stock_regdate) {
		this.stock_regdate = stock_regdate;
	}
	public Date getStock_editdate() {
		return stock_editdate;
	}
	public void setStock_editdate(Date stock_editdate) {
		this.stock_editdate = stock_editdate;
	}
	public String getStock_sale() {
		return stock_sale;
	}
	public void setStock_sale(String stock_sale) {
		this.stock_sale = stock_sale;
	}
	
	
}
