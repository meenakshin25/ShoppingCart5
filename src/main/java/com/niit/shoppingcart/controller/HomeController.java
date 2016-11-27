package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Controller
public class HomeController 
{
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;

	@RequestMapping("/")
	public String getLanding()
	{
		return "index";
	}
	@RequestMapping("/register")
	public ModelAndView getRegister(Model m)
	{
		m.addAttribute("user",new User());
		ModelAndView model= new ModelAndView("register");
		return model;
	}
	@RequestMapping(value="register/add", method=RequestMethod.POST)
	public String addUser(Model model, @ModelAttribute("user")User user)
	{
		userDAO.addUser(user);
		return "redirect:/";
	}
	@RequestMapping("/admin")
	public String getAdmin()
	{
		return "admin";
	}
}