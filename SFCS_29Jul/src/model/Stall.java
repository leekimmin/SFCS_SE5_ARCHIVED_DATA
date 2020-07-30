package model;

import java.io.Serializable;

public class Stall implements Serializable {
	private int id;
	private String name;
	private int item;
	private String des;
	private String image;

	public Stall() { super(); }
	
	public Stall(int id, String name, int item, String des, String image) {
		super();
		this.id = id;
		this.name = name;
		this.item = item;
		this.des = des;
		this.image = image;
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
	public int getItem() { 
		return item; 
	}
	public void setItem(int item) { 
		this.item = item; 
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
}
