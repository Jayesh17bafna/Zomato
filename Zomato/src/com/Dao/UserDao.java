package com.Dao;


import java.util.List;

import com.Entity.Cart;
import com.Entity.Contents;
import com.Entity.UserData;

public interface UserDao {
	


	public void saveCustomer(UserData udata);

	public UserData getUser(String username);

	public List<Contents> fetchdata();

	public void savecart(Cart cartdata);

	public void deleteCustomer(String u,int id);

	public void deleteAll(String username);

	public List<Contents> fetchItems();

	public List<Contents> fetchSnacks();

	public List<Contents> fetchBevarages();


	

}
