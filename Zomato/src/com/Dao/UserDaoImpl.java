package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.model.source.spi.SubclassEntitySource;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Entity.Cart;
import com.Entity.Contents;
import com.Entity.UserData;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveCustomer(UserData udata) {

		Session currentsession = sessionFactory.getCurrentSession();

		currentsession.save(udata);

	}

	@Override
	public UserData getUser(String username) {

		Session currentsession = sessionFactory.getCurrentSession();

		SQLQuery theQuery = currentsession.createSQLQuery("SELECT password FROM Userdata where uname=:username");
		theQuery.addEntity(UserData.class);
		theQuery.setParameter("username", username);

		String pass = (String) theQuery.uniqueResult();

		UserData localuser = new UserData();

		localuser.setPassword(pass);

		return localuser;
	}

	@Override
	public List<Contents> fetchdata() {

		Session currentsession = sessionFactory.getCurrentSession();

		SQLQuery query = currentsession.createSQLQuery("Select * from contents where cat='north'");
		List<Object[]> objs = query.getResultList();
		List<Contents> contents = new ArrayList<Contents>();

		for (Object[] o : objs) {

			Contents contant = new Contents();
			contant.setName((String) o[0]);
			contant.setPrice((double) o[1]);
			contant.setRating((double) o[2]);
			contant.setCat((String) o[3]);
			contant.setImage((String) o[5]);
			contant.setId((int) o[4]);
			contents.add(contant);

		}

		return contents;

	}

	@Override
	public void savecart(Cart cartdata) {
		Session currentsession = sessionFactory.getCurrentSession();

		currentsession.save(cartdata);

	}

	@Override
	public void deleteCustomer(String u, int id) {

		Session currentsession = sessionFactory.getCurrentSession();

		SQLQuery query = currentsession.createSQLQuery("delete from cart where username=:Username and id=:itemId");

		query.setParameter("Username", u);

		query.setParameter("itemId", id);

		query.executeUpdate();
	}

	@Override
	public void deleteAll(String username) {
		Session currentsession = sessionFactory.getCurrentSession();

		SQLQuery query = currentsession.createSQLQuery("delete from cart where username=:username");

		query.setParameter("username", username);

		query.executeUpdate();

	}

	@Override
	public List<Contents> fetchItems() {
		Session currentsession = sessionFactory.getCurrentSession();

		SQLQuery query = currentsession.createSQLQuery("Select * from contents where cat='chinese'");
		List<Object[]> objs = query.getResultList();

		List<Contents> contents = new ArrayList<Contents>();

		for (Object[] o : objs) {

			Contents contant = new Contents();
			contant.setName((String) o[0]);
			contant.setPrice((double) o[1]);
			contant.setRating((double) o[2]);
			contant.setCat((String) o[3]);
			contant.setImage((String) o[5]);
			contant.setId((int) o[4]);
			contents.add(contant);

		}

		return contents;
	}

	@Override
	public List<Contents> fetchSnacks() {
		Session currentsession = sessionFactory.getCurrentSession();

		SQLQuery query = currentsession.createSQLQuery("Select * from contents where cat='snacks'");
		List<Object[]> objs = query.getResultList();

		List<Contents> contents = new ArrayList<Contents>();

		for (Object[] o : objs) {

			Contents contant = new Contents();
			contant.setName((String) o[0]);
			contant.setPrice((double) o[1]);
			contant.setRating((double) o[2]);
			contant.setCat((String) o[3]);
			contant.setImage((String) o[5]);
			contant.setId((int) o[4]);
			contents.add(contant);

		}

		return contents;

	}

	@Override
	public List<Contents> fetchBevarages() {
		Session currentsession = sessionFactory.getCurrentSession();

		SQLQuery query = currentsession.createSQLQuery("Select * from contents where cat='bevarages'");
		List<Object[]> objs = query.getResultList();

		List<Contents> contents = new ArrayList<Contents>();

		for (Object[] o : objs) {

			Contents contant = new Contents();
			contant.setName((String) o[0]);
			contant.setPrice((double) o[1]);
			contant.setRating((double) o[2]);
			contant.setCat((String) o[3]);
			contant.setImage((String) o[5]);
			contant.setId((int) o[4]);
			contents.add(contant);

		}

		return contents;
	}
	

}
