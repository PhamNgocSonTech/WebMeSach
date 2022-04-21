package com.book.model;

import java.io.Serializable;

import com.book.controller.WellcomeController;

public class Product implements Serializable {
	private int id;
	private String name;
	private long price;
	private String image;
	private String des;
	private Category category;//cate_id
	private Publisher publisher; //publisher_id
	private String author;
	private String size;
	private String embedCode;
	
	public Product() {
		super();
	}

	public Product(int id, String name, long price, String image, String des, Category category) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.image = image;
		this.des = des;
		this.category = category;
	}
	

	public Product(int id, String name, long price, String image, String des, Category category, Publisher publisher,
			String author, String size, String embedCode) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.image = image;
		this.des = des;
		this.category = category;
		this.publisher = publisher;
		this.author = author;
		this.size = size;
		this.embedCode = embedCode;
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

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getEmbedCode() {
		return embedCode;
	}

	public void setEmbedCode(String embedCode) {
		this.embedCode = embedCode;
	}

	public Publisher getPublisher() {
		return publisher;
	}

	public void setPublisher(Publisher publisher) {
		this.publisher = publisher;
	}

	public String getImageForder() {
		return "D:/GitHub/WebMeSach/WebBanSach/WebContent/view/client/static/img/book-img";
	}


	
	
	
	

	
}
