package model;

import java.io.Serializable;

public class Product implements Serializable {
	private int id;
	private String name;
	private int price;
	private int quantity;
	private int discount;
	private String image;
	private String des;
	private Category category;
	private Stall stall;

	public Product() {
		super();
	}

	public Product(int id, String name, int price, int quantity, int discount, String image, String des, Category category, Stall stall) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.discount = discount;
		this.image = image;
		this.des = des;
		this.category = category;
		this.stall = stall;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() { 
		return quantity; 
	}
	public void setQuantity(int quantity) { 
		this.quantity = quantity; 
	}
	public int getDiscount() { 
		return discount; 
	}
	public void setDiscount(int discount) { 
		this.discount = discount; 
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Stall getStall() { 
		return stall; 
	}
	public void setStall(Stall stall) { 
		this.stall = stall; 
	}
	
}
