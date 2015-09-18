package com.hand.action;

import java.sql.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hand.dao.NormalDiscountDao;
import com.hand.dao.SpecialDiscountDao;
import com.hand.model.Discount_base;
import com.hand.model.Discount_type;
import com.hand.model.Om_special_discount;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class doSpecialDiscountAction extends ActionSupport {
	private int discount_id;
	private String discount_name;
	private String cust_code;
	private int amount;
	private int applied_amount;
	private int balance;
	private String activity;
	private int delet_id;
	private Date activity_date_from;
	private Date activity_date_to;
	

	ApplicationContext ac = new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-hibernate.xml"});
	SpecialDiscountDao specialdiscountDao = (SpecialDiscountDao)ac.getBean("specialdiscountDao");
	Om_special_discount om_special_discount = (Om_special_discount)ac.getBean("om_special_discount");
	public String add() throws Exception{
		om_special_discount.setDiscount_name(discount_name);
		om_special_discount.setAmount(amount);
		om_special_discount.setApplied_amount(applied_amount);
		om_special_discount.setBalance(balance);
		om_special_discount.setCust_code(cust_code);
		om_special_discount.setActivity(activity);
		om_special_discount.setActivity_date_from(activity_date_from);
		om_special_discount.setActivity_date_to(activity_date_to);
		specialdiscountDao.create(om_special_discount);
		return SUCCESS;
		
	}
	public String update() throws Exception{
		specialdiscountDao.update(delet_id, discount_name,cust_code, amount, applied_amount, balance,activity);
		return SUCCESS;
	}
	public String list() throws Exception{
		System.out.println("---------speciallist-----------");
		List<Om_special_discount> om_special_discount_List = specialdiscountDao.select();
		System.out.println(om_special_discount_List);
		ActionContext.getContext().put("om_special_discount_List", om_special_discount_List);
		/*
		for(Object m : om_special_discount_List){
			System.out.println(m);
		}*/
	
		//System.out.println(om_special_discount_List);

		return SUCCESS;
	}
	public String toupdate(){
		Om_special_discount om_special_discount = specialdiscountDao.find(delet_id);
		ActionContext.getContext().put("om_special_discount", om_special_discount);
		return "toupdate";
	}
	
	public String toadd(){
		
		return "toadd";
	}
	public int getDiscount_id() {
		return discount_id;
	}
	public void setDiscount_id(int discount_id) {
		this.discount_id = discount_id;
	}
	public String getDiscount_name() {
		return discount_name;
	}
	public void setDiscount_name(String discount_name) {
		this.discount_name = discount_name;
	}
	public String getCust_code() {
		return cust_code;
	}
	public void setCust_code(String cust_code) {
		this.cust_code = cust_code;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getApplied_amount() {
		return applied_amount;
	}
	public void setApplied_amount(int applied_amount) {
		this.applied_amount = applied_amount;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public int getDelet_id() {
		return delet_id;
	}
	public void setDelet_id(int delet_id) {
		this.delet_id = delet_id;
	}
	public Date getActivity_date_from() {
		return activity_date_from;
	}
	public void setActivity_date_from(Date activity_date_from) {
		this.activity_date_from = activity_date_from;
	}
	public Date getActivity_date_to() {
		return activity_date_to;
	}
	public void setActivity_date_to(Date activity_date_to) {
		this.activity_date_to = activity_date_to;
	}
	
}
