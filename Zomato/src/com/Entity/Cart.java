package com.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart {
@Id
@Column(name="id")
@GeneratedValue
private int id;
@Column(name="username")
private String username;
@Column(name="dishid")
private String dishid;
@Column(name="dishname")
private String dishname;
@Column(name="dishprice")
private String dishprice;
@Column(name="dishimage")
private String dishimage;

public Cart() {
	
	
}



public Cart(int id, String username, String dishid, String dishname, String dishprice, String dishimage) {
	super();
	this.id = id;
	this.username = username;
	this.dishid = dishid;
	this.dishname = dishname;
	this.dishprice = dishprice;
	this.dishimage = dishimage;
}



public int getId() {
	return id;
}



public void setId(int id) {
	this.id = id;
}



public String getDishid() {
	return dishid;
}



public void setDishid(String dishid) {
	this.dishid = dishid;
}



public String getDishname() {
	return dishname;
}



public void setDishname(String dishname) {
	this.dishname = dishname;
}



public String getDishprice() {
	return dishprice;
}



public void setDishprice(String dishprice2) {
	this.dishprice = dishprice2;
}



public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}




public String getDishimage() {
	return dishimage;
}



public void setDishimage(String dishimage) {
	this.dishimage = dishimage;
}



@Override
public String toString() {
	return "Cart [id=" + id + ", username=" + username + ", dishid=" + dishid + ", dishname=" + dishname
			+ ", dishprice=" + dishprice + ", dishimage=" + dishimage + "]";
}






}
