package com.fujigo.dao;
import java.util.List;

import com.fujigo.beans.Customer;






/*
 * Author:Pratiksha Nalge
 * Creation Date:4/04/2019 (DD/MM/YYYY)
 * Modification Date:04/04/2019 (DD/MM/YYYY)
 * Version:1.0
 * Description:It represents DAO  Component Interface 
 * 			   of Persistent Layer 
 * Copyright:Fujitsu Consulting India Pvt.Ltd.All rights reserved.
 */

// DAO Interface-DAO Design Pattern
public interface CustomerDAO {
	
	
	//CRUD
	List<Customer> getAllCustomer();
	
	Customer getCutomerById(int customer_Id);

	void insert(Customer customer);
	void update(Customer customer);
	void delete(Customer customer);
	
	


}
