package com.niit.shoppingcart.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Product 
{
	@Id
	private String pid;
	private String pname;
	private int pprice;
	private String pdescription;
	
	public String getPid() 
	{
		return pid;
	}
	public void setPid(String pid) 
	{
		this.pid = pid;
	}
	public String getPname() 
	{
		return pname;
	}
	public void setPname(String pname) 
	{
		this.pname = pname;
	}
	public int getPprice() 
	{
		return pprice;
	}
	public void setPprice(int pprice) 
	{
		this.pprice = pprice;
	}
	public String getPdescription() 
	{
		return pdescription;
	}
	public void setPdescription(String pdescription) 
	{
		this.pdescription = pdescription;
	}
	
	
}
