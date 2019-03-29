package com.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.UserDao;
import com.Entity.Cart;
import com.Entity.Contents;
import com.Entity.UserData;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao udao;
	
	
	@Override
	@Transactional
	public void saveUser(UserData udata) {

		udao.saveCustomer(udata);
		
	}


	@Override
	@Transactional
	public UserData getUser(String username) {
          
		return udao.getUser(username);
	}


	@Override
    @Transactional
	public  List<Contents> fetchdata() {

		return udao.fetchdata();
	}


	@Override
	@Transactional
	public void savecart(Cart cartdata) {
		udao.savecart(cartdata);
		
	}


	@Override
	@Transactional
	public void deleteCustomer(String u,int id) {
          udao.deleteCustomer(u,id);
		
	}


	@Override
	@Transactional
	public void deleteAll(String username) {
		udao.deleteAll(username);
	}


	@Override
	@Transactional
	public List<Contents> fetchItems() {
		return udao.fetchItems();
	}


	@Override
	@Transactional
	public List<Contents> fetchSnacks() {
		return udao.fetchSnacks();
	}


	@Override
	@Transactional
	public List<Contents> fetchBevarages() {
		return udao.fetchBevarages();
	}


	


	
}
