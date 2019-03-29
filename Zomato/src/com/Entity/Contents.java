package com.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contents")
public class Contents {

	@Id
	@Column(name = "id")
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "price")
	private double price;
	@Column(name = "rating")
	private double rating;
	@Column(name = "cat")
	private String cat;
	@Column(name = "image")
	private String image;

	public Contents() {

	}



	public Contents(int id, String name, double price, double rating, String cat, String image) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.rating = rating;
		this.cat = cat;
		this.image = image;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public String getCat() {
		return cat;
	}

	public void setCat(String cat) {
		this.cat = cat;
	}
	
	

	public int getId() {
		return id;
	}



	public int setId(int id) {
		return this.id = id;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}



	@Override
	public String toString() {
		return "Contents [id=" + id + ", name=" + name + ", price=" + price + ", rating=" + rating + ", cat=" + cat
				+ ", image=" + image + "]";
	}



	

}