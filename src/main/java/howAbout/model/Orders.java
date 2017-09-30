package howAbout.model;

import java.sql.Date;

public class Orders {
	private	String orders_id;
	private Date orders_date;
	private String orders_type;
	private String cplist_id;
	private String cart_id;
	public String getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(String orders_id) {
		this.orders_id = orders_id;
	}
	public Date getOrders_date() {
		return orders_date;
	}
	public void setOrders_date(Date orders_date) {
		this.orders_date = orders_date;
	}
	public String getOrders_type() {
		return orders_type;
	}
	public void setOrders_type(String orders_type) {
		this.orders_type = orders_type;
	}
	public String getCplist_id() {
		return cplist_id;
	}
	public void setCplist_id(String cplist_id) {
		this.cplist_id = cplist_id;
	}
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	
}
