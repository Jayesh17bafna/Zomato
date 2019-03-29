package com.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Dao.UserDao;
import com.Entity.Cart;
import com.Entity.Contents;
import com.Entity.UserData;


public interface UserService {

	public void saveUser(UserData ud);

	public UserData getUser(String username);

	public List<Contents> fetchdata();

	public void savecart(Cart cartdata);

	public void deleteCustomer(String u,int id);

	public void deleteAll(String username);

	public List<Contents> fetchItems();

	public List<Contents> fetchSnacks();

	public List<Contents> fetchBevarages();

	
	
	

	

}
