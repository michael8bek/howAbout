package howAbout.model;

import java.sql.Date;


public class Mdtext {
	private int mdtext_id; 
	private String mdtext_type; 
	private String mdtext_goods; 
	private String mdtext_content; 
	private Date mdtext_regdate; 
	private String mdtext_del; 
	private String mem_id; 
	private int mdtext_readcount;
	
	public int getMdtext_id() {
		return mdtext_id;
	}
	public void setMdtext_id(int mdtext_id) {
		this.mdtext_id = mdtext_id;
	}
	public String getMdtext_type() {
		return mdtext_type;
	}
	public void setMdtext_type(String mdtext_type) {
		this.mdtext_type = mdtext_type;
	}
	public String getMdtext_content() {
		return mdtext_content;
	}
	public void setMdtext_content(String mdtext_content) {
		this.mdtext_content = mdtext_content;
	}
	public Date getMdtext_regdate() {
		return mdtext_regdate;
	}
	public void setMdtext_regdate(Date mdtext_regdate) {
		this.mdtext_regdate = mdtext_regdate;
	}
	public String getMdtext_del() {
		return mdtext_del;
	}
	public void setMdtext_del(String mdtext_del) {
		this.mdtext_del = mdtext_del;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getMdtext_readcount() {
		return mdtext_readcount;
	}
	public void setMdtext_readcount(int mdtext_readcount) {
		this.mdtext_readcount = mdtext_readcount;
	}
	
	public String getMdtext_goods() {
		return mdtext_goods;
	}
	public void setMdtext_goods(String mdtext_goods) {
		this.mdtext_goods = mdtext_goods;
	}
	
}
