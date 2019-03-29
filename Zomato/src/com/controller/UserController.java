package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.engine.transaction.jta.platform.internal.SynchronizationRegistryBasedSynchronizationStrategy;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.Entity.Cart;
import com.Entity.Contents;
import com.Entity.UserData;
import com.Service.UserService;
import com.dto.UserLog;

@Controller
@SessionAttributes("userlog")
public class UserController {

	@Autowired
	private UserService us;

	@Autowired
	private SessionFactory sessionFactory;

	@RequestMapping("/register")
	public String saveDaa() {
		return "register";
	}

	@RequestMapping("/login")
	public String log() {
		
		return "login";
	}

	@RequestMapping("/")
	public String login() {
		return "redirect:/login";
	}

	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") UserData udata) {

		us.saveUser(udata);

		return "login";
	}

	@RequestMapping("/welcome")
	@Transactional
	public String userlogin(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("userlog") UserLog ulog)

	{
		String user=null;
		String pass=null;
		Session currentsession = sessionFactory.getCurrentSession();
		SQLQuery theQuery = currentsession.createSQLQuery("SELECT uname,password FROM Userdata where uname=:username and password=:password");
		theQuery.setParameter("username", ulog.getUsername());
		theQuery.setParameter("password", ulog.getPass());
		
		List<Object[]> list = theQuery.list();
		
		if(list.size()==0)
			return "error";
		   else 
		return "welcome";
	}
	
	@ModelAttribute("userlog")
	public UserLog setUpUserForm() {
		return new UserLog();
	}
	
	

	@RequestMapping("/north")
	public String getNorth(Model model) {

		
		List<Contents> con = us.fetchdata();
		System.out.println("COntent data: " + con);

		model.addAttribute("listValues", con);
	
		return "north";
	}

	@RequestMapping("/north1")
	@Transactional
	public String log1(@ModelAttribute("userlog") UserLog ulog,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("cartdata") Cart cartdata,Model model) {
	
		
		cartdata.setUsername(ulog.getUsername());
		
		System.out.println("++++++++++++++++*************&&&&&&&&&"+ulog.getUsername());
		
		us.savecart(cartdata);
		
		return "redirect:/getlist";
}
	
	
	@RequestMapping("/getlist")
	@Transactional
	public String getItemList(Model model,@ModelAttribute("userlog") UserLog ulog) {
		
		Session currentsession = sessionFactory.getCurrentSession();
		Query<Cart> theQuery = currentsession.createQuery("from Cart where username=:username",Cart.class).setString("username", ulog.getUsername());
		List<Cart> pass =  theQuery.list();
	
		model.addAttribute("list",pass);
		
		return "items";
	}
	
	@RequestMapping("/deleteall")
	@Transactional
	public String deleteAll(Model model,@ModelAttribute("userlog") UserLog ulog) {
		
		us.deleteAll(ulog.getUsername());
		 return "redirect:/welcome";
	}

	
	
	

	@RequestMapping("/chinese")
	public String getChinese(Model model) {
		List<Contents> data = us.fetchItems();
	
		model.addAttribute("listofchinese", data);
	
	
		return "chinese";
	}

	@RequestMapping("/snacks")
	public String getSnacks(Model model) {
		List<Contents> data = us.fetchSnacks();
		
		model.addAttribute("listofsnacks", data);

		return "snacks";
	}

	@RequestMapping("/bevarages")
	public String getBevarages(Model model) {
		
        List<Contents> data = us.fetchBevarages();
		
		model.addAttribute("listofbevarages", data);

		return "bevarages";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("Username") String u,@RequestParam("itemId") int id)
	{
		System.out.println("id"+u);
		us.deleteCustomer(u,id);
		return "redirect:/getlist";
	}
	
}
