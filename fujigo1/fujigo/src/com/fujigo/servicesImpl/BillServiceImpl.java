package com.fujigo.servicesImpl;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fujigo.beans.Bill;
import com.fujigo.dao.BillDAO;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.BillService;




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
 */
@Service
public class BillServiceImpl implements BillService {
	@Autowired
	private BillDAO billDao;

	@Override
	public List<Bill> findAllBills() throws ServiceException {
		// TODO Auto-generated method stub
		return billDao.getAllBills();
	}

	@Override
	public Bill findById(int billId) throws ServiceException {
		// TODO Auto-generated method stub
		return billDao.getBillById(billId);
	}

	@Override
	public void add(Bill bill) throws ServiceException {
		// TODO Auto-generated method stub
		billDao.insert(bill);
	}

	@Override
	public void update(Bill bill) throws ServiceException {
		// TODO Auto-generated method stub
		billDao.update(bill);
	}

	@Override
	public void remove(Bill bill) throws ServiceException {
		// TODO Auto-generated method stub
		billDao.delete(bill);
	}

	@Override
	public List<Bill> sortBillById() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllBills().stream().sorted().collect(Collectors.toList());

	}
	
	
	
	

}
