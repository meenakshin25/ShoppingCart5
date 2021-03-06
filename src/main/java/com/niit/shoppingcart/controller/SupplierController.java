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

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class SupplierController 
{
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	Supplier supplier;
	
	@RequestMapping("/supplier")
	public ModelAndView getSupplier(Model m)
	{
		m.addAttribute("supplier",new Supplier());
		ModelAndView model= new ModelAndView("supplier");
		return model;
	}
	@RequestMapping(value="supplier/add", method=RequestMethod.POST)
	public String addSupplier(Model model, @ModelAttribute("supplier")Supplier supplier)
	{
		supplierDAO.addSupplier(supplier);
		return "redirect:/supplier";
	}
	
	@RequestMapping("supplier/remove/{sid}")
	public String deleteSupplier(@PathVariable("sid") String id, ModelMap model) throws Exception 
	{

		try 
		{
			supplierDAO.delete(id);
			model.addAttribute("message", "Successfully deleted");
		} 
		catch (Exception e) 
		{
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/supplier";
	}
	
	@RequestMapping("supplier/edit/{sid}")
	public String editSupplier(@PathVariable("sid") String id, Model model) 
	{
		System.out.println("editSupplier");
		model.addAttribute("supplier", this.supplierDAO.getSupplier(id));
		model.addAttribute("listSupplier", this.supplierDAO.list());
		return "supplier";
	}
	
	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
	public String listSuppliers(Model model)
	{
			model.addAttribute("supplier", supplier);
			model.addAttribute("supplierList",this.supplierDAO.list());
			return "supplier";
		
	}
}
