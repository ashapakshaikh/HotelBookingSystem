package com.fujigo.beans;

import java.io.Serializable;
import java.time.LocalDate;
import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
/*
 * Author:Shalaka havele
 * Creation Date:19/03/2019(DD/MM/YYYY)
 * Modification Date:02/04/2019(DD/MM/YYYY)
 * Version:7.0
 * Copyright: Fujitsu consulting pvt ltd.All rights reserved.
 * Description:It represents database entity
 * 				It is Java Bean class
 * 
 */

@Component
@Entity
@Table(name="bills")

public class Bill implements Serializable 
{
	@Id
	@GeneratedValue(generator="increment")
	@Column(name="bill_id")
	private int billId;
	
	@Column
	private float total_amt;
	
	@Column
	private Date bill_date;
	
	@OneToOne(cascade=CascadeType.ALL)
	//@JoinColumn(name="paymentId")
    private Payment payment;
    
   
    @Autowired
	public Bill() {
		// TODO Auto-generated constructor stub
	}
	

	
	public Bill(int billId, int total_amt, Date bill_date, Payment paymentId) {
		super();
		this.billId = billId;
		this.total_amt = total_amt;
		this.bill_date = bill_date;
		this.payment = payment;
	}


	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public float getTotal_amt() {
		return total_amt;
	}

	public void setTotal_amt(float total_amt) {
		this.total_amt = total_amt;
	}

	


	public Date getBill_date() {
		return bill_date;
	}



	public void setBill_date(Date bill_date) {
		this.bill_date = bill_date;
	}



	public Payment getPayment() {
		return payment;
	}



	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	
	
	
}
