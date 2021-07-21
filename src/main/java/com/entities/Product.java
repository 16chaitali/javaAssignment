package com.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int no;
	private String  name; 
	private String suk;
	private String description;
	private int price;
	private int stock;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSuk() {
		return suk;
	}
	public void setSuk(String suk) {
		this.suk = suk;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	

public Product(String name, String suk, String description, int price, int stock) {
		super();
		this.name = name;
		this.suk = suk;
		this.description = description;
		this.price = price;
		this.stock = stock;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Product [no=" + no + ", name=" + name + ", suk=" + suk + ", description=" + description + ", price="
				+ price + ", stock=" + stock + "]";
	}
	
	

}
