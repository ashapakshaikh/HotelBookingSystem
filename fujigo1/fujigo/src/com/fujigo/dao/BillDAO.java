package com.fujigo.dao;

import java.util.List;

import com.fujigo.beans.Bill;


/*
 * Author:Shalaka havele
 * Creation Date:19/03/2019(DD/MM/YYYY)
 * Modification Date:02/04/2019(DD/MM/YYYY)
 * Version:3.0
 * Copyright: Fujitsu consulting pvt ltd.All rights reserved.
 * Description:It represents DAO Interface
 * 			   Contains CRUD Operations methods
 */

	//DAO Interface-DAO Design Pattern

public interface BillDAO 
{

	List<Bill>getAllBills();
	Bill getBillById(int billId);
	void insert(Bill bill);
	void update(Bill bill);
	void delete(Bill bill);
	
	
}
