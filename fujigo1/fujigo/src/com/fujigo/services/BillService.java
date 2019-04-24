package com.fujigo.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fujigo.beans.Bill;
import com.fujigo.exceptions.ServiceException;


/*
 *Author:Shalaka Havele
 *Creation Date:28/03/2019
 *Modification Date: 02/04/2019
 * Version:2.0
 * CopyRight:  Fujitsu consulting pvt ltd.All rights reserved.
 * Description: Service component interface
 * 				implementor 
 * 				of business layer
 * 
 * 
 * 
 * 
 * 
 * */
@Service
public interface BillService 
{
	List<Bill>findAllBills()throws ServiceException;
	Bill findById(int billId)throws ServiceException;
	void add(Bill bill)throws ServiceException;
	void update(Bill bill)throws ServiceException;
	void remove(Bill bill)throws ServiceException;
	
	
	List<Bill> sortBillById()throws ServiceException;
	


}
