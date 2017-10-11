package howAbout.model;

import org.springframework.web.multipart.MultipartFile;

public class Goods {
	private String goods_id;
	private String goods_bigc;
	private String goods_smc;
	private int goods_price;
	private String goods_brand;
	private String goods_color;
	private String goods_theme;
	private int goods_size;
	private String goods_patthernis;
	private String goods_img;
	private String goods_name;
	private int goods_delprice;
	/*이미지 */
	private MultipartFile file1; private MultipartFile file2;	
	
	
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_bigc() {
		return goods_bigc;
	}
	public void setGoods_bigc(String goods_bigc) {
		this.goods_bigc = goods_bigc;
	}
	public String getGoods_smc() {
		return goods_smc;
	}
	public void setGoods_smc(String goods_smc) {
		this.goods_smc = goods_smc;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public String getGoods_brand() {
		return goods_brand;
	}
	public void setGoods_brand(String goods_brand) {
		this.goods_brand = goods_brand;
	}
	public String getGoods_color() {
		return goods_color;
	}
	public void setGoods_color(String goods_color) {
		this.goods_color = goods_color;
	}
	public String getGoods_theme() {
		return goods_theme;
	}
	public void setGoods_theme(String goods_theme) {
		this.goods_theme = goods_theme;
	}
	public int getGoods_size() {
		return goods_size;
	}
	public void setGoods_size(int goods_size) {
		this.goods_size = goods_size;
	}
	public String getGoods_patthernis() {
		return goods_patthernis;
	}
	public void setGoods_patthernis(String goods_patthernis) {
		this.goods_patthernis = goods_patthernis;
	}
	public String getGoods_img() {
		return goods_img;
	}
	public void setGoods_img(String goods_img) {
		this.goods_img = goods_img;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public int getGoods_delprice() {
		return goods_delprice;
	}
	public void setGoods_delprice(int goods_delprice) {
		this.goods_delprice = goods_delprice;
	}


}
