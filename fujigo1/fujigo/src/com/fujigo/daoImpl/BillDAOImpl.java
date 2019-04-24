package com.fujigo.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.fujigo.beans.Bill;
import com.fujigo.dao.BillDAO;


/*
 * Author:Shalaka havele
 * Creation Date:19/03/2019(DD/MM/YYYY)
 * Modification Date:02/04/2019(DD/MM/YYYY)
 * Version:6.0
 * Copyright: Fujitsu consulting pvt ltd.All rights reserved.
 * Description:It represents DAO Interface
 * 			   Contains CRUD Operations methods Implementation.
 * 				It connects with database and perform sql operations.
 */
@Repository
@Transactional
public class BillDAOImpl implements BillDAO 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public List<Bill> getAllBills() {
		// TODO Auto-generated method stub
		return hibernateTemplate.loadAll(Bill.class);
	}

	@Override
	public Bill getBillById(int billId) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(Bill.class, billId);
	}

	@Override
	public void insert(Bill bill) {
		// TODO Auto-generated method stub
		 hibernateTemplate.save(bill);
		
	}

	@Override
	public void update(Bill bill) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(bill);
		
	}

	@Override
	public void delete(Bill bill) {
		// TODO Auto-generated method stub
		hibernateTemplate.delete(bill);
	}
	
	
	
}
