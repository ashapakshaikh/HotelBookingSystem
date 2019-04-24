package com.fujigo.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fujigo.beans.Customer;
import com.fujigo.dao.CustomerDAO;


@Repository
@Transactional
 public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	@Override
	public List<Customer> getAllCustomer() {
		// TODO Auto-generated method stub
		return hibernateTemplate.loadAll(Customer.class);
	}

	@Override
	public Customer getCutomerById(int customer_Id) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(Customer.class, customer_Id);
	}

	@Override
	public void insert(Customer customer) {
		// TODO Auto-generated method stub
		hibernateTemplate.save(customer);
	}

	@Override
	public void update(Customer customer) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(customer);
		
	}

	@Override
	public void delete(Customer customer) {
		// TODO Auto-generated method stub
		hibernateTemplate.delete(customer);
	}

}
