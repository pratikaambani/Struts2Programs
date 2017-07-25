package com.javatpoint;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.*;
import antlr.collections.List;

public class Product1 extends ActionSupport implements SessionAware{
	private String user,pass,roll,marks,address;

	private Map session;

	public Map<String, String> getSession() {
         return session;
    }
    public void setSession(Map session) {
         this.session = session;
    }
/*    public String getLoginStatus(){
         session.put("user", "Pratik");
		return user;  
    }	
*/	
	
	
/*
private String name;
private float price;
*/

public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}


public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}



public String getRoll() {
	return roll;
}
public void setRoll(String roll) {
	this.roll = roll;
}



public String getMarks() {
	return marks;
}
public void setMarks(String marks) {
	this.marks = marks;
}




public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}

ArrayList l1 = new ArrayList();
/*public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}*/

public String execute(){
	
	session.put("marks", marks);
	session.put("roll",roll);
	session.put("address",address);
	session.put("user",user);
	
	if(this.getUser().equals("p") && this.getPass().equals("a"))	{
		session.put("un", user);

		
		return "success";
	}
	else
		return "failure";
}



//		INTERCEPTORS
		/*		try {
			Thread.sleep(7000);
			System.out.println("executed");
		} catch (InterruptedException e) {
			System.out.println("issue ");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
*/
		
		public void validate(){
			if("p".equals(getUser())){
				addActionMessage("You are valid user!");
			}else{
				addActionError("check credentials!!!!!!");
			}
		}




/*public String logout() throws Exception	{
	Map session1 = ActionContext.getContext().getSession();
	session1.remove("loggedin");
	session1.remove("date");
	return "success";
*/


}