package com.javatpoint;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import antlr.collections.List;

public class Product11 extends ActionSupport implements SessionAware{

	Map session;	

    public void setSession(Map session)
    {
    	this.session=session;
    }

	public String execute()
	{
		return SUCCESS;
	}

}

