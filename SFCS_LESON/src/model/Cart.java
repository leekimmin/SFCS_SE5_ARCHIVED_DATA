package model;

import java.io.Serializable;
import java.sql.Date;

public class Cart implements Serializable {
	private int id;
	private User buyer;
	private Date buyDate;
	private OrderStatus status;
	
	public Cart() {
		super();
	}
	public Cart(int id, User buyer, Date buyDate, OrderStatus status) {
		super();
		this.id = id;
		this.buyer = buyer;
		this.buyDate = buyDate;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getBuyer() {
		return buyer;
	}
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	public OrderStatus getStatus() { 
		return status; 
	}
	public void setStatus(OrderStatus status) { 
		this.status = status; 
	}
	
}
