package bean;

import org.springframework.web.multipart.MultipartFile;

public class Products {
	private int p_no;							   
	private int p_type;							   
	private String p_seller_email;						  
	private String p_name;						   
	private int p_price;					  
	private String p_origin;	
	private int p_qty;							    
	private String p_image;							   
	private String p_image2;							    
	private String p_image3;							   
	private String remark;
		
	public Products() {}	

	
	

	private MultipartFile p_img;



	public MultipartFile getP_img() {
		return p_img;
	}

	public void setP_img(MultipartFile p_img) {
		if (this.p_img != null) {
			this.p_image = this.p_img.getOriginalFilename();
		}
	}


	@Override
	public String toString() {
		return "Product [p_no=" + p_no + ", p_type=" + p_type + ", p_seller_email=" + p_seller_email + ", p_name="
				+ p_name + ", p_price=" + p_price + ", p_origin=" + p_origin + ", p_qty=" + p_qty + ", p_image="
				+ p_image + ", p_image2=" + p_image2 + ", p_image3=" + p_image3 + ", ramark=" + remark + "]";
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public int getP_type() {
		return p_type;
	}
	public void setP_type(int p_type) {
		this.p_type = p_type;
	}
	public String getP_seller_email() {
		return p_seller_email;
	}
	public void setP_seller_email(String p_seller_email) {
		this.p_seller_email = p_seller_email;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_origin() {
		return p_origin;
	}
	public void setP_origin(String p_origin) {
		this.p_origin = p_origin;
	}
	public int getP_qty() {
		return p_qty;
	}
	public void setP_qty(int p_qty) {
		this.p_qty = p_qty;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public String getP_image2() {
		return p_image2;
	}
	public void setP_image2(String p_image2) {
		this.p_image2 = p_image2;
	}
	public String getP_image3() {
		return p_image3;
	}
	public void setP_image3(String p_image3) {
		this.p_image3 = p_image3;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String ramark) {
		this.remark = ramark;
	}
	
	
	
	
	
}
