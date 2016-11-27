package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO productDAO;
	@Autowired
	Product product;
	
	@RequestMapping("/product")
	public ModelAndView getProduct(Model m)
	{
		m.addAttribute("product",new Product());
		ModelAndView model= new ModelAndView("product");
		return model;
	}
	@RequestMapping(value="product/add", method=RequestMethod.POST)
	public String addProduct(Model model, @ModelAttribute("product")Product product)
	{
		productDAO.addProduct(product);
		return "redirect:/product";
	}
	
	@RequestMapping("product/remove/{pid}")
	public String deleteProduct(@PathVariable("pid") String id, ModelMap model) throws Exception 
	{

		try 
		{
			productDAO.delete(id);
			model.addAttribute("message", "Successfully deleted");
		}
		catch (Exception e) 
		{
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/product";
	}
	

	@RequestMapping("product/edit/{pid}")
	public String editProduct(@PathVariable("pid") String id, Model model) 
	{
		System.out.println("editProduct");
		model.addAttribute("product", this.productDAO.getProduct(id));
		model.addAttribute("productList", this.productDAO.list());
		return "product";
	}
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listCategories(Model model)
	{
			model.addAttribute("product", product);
			model.addAttribute("productList",this.productDAO.list());
			return "product";
		
	}
}
