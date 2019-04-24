package com.fujigo.servicesImpl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fujigo.beans.Customer;
import com.fujigo.dao.CustomerDAO;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.CustomerService;






@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDAO customerDao;

	@Override
	public List<Customer> findAllCustomer() throws ServiceException {
		// TODO Auto-generated method stub
		return customerDao.getAllCustomer();
	}

	@Override
	public Customer findById(int customer_Id) throws ServiceException {
		// TODO Auto-generated method stub
		return customerDao.getCutomerById(customer_Id);
	}

	@Override
	public void add(Customer customer_Id) throws ServiceException {
		// TODO Auto-generated method stub
		customerDao.insert(customer_Id);
	}

	@Override
	public void update(Customer customer_Id) throws ServiceException {
		// TODO Auto-generated method stub
		customerDao.update(customer_Id);
	}

	@Override
	public void remove(Customer customer_Id) throws ServiceException {
		// TODO Auto-generated method stub
		customerDao.delete(customer_Id);
	}

	@Override
	public List<Customer> sortByCustomer_Id() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByCustomer_Name() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByCountry_Code() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByPhone_No() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByEmail_Id() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByAddress() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByCity() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByState() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByCountry() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByZip() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByAge() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByGender() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortById_Type() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortById_No() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByNationality() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}

	@Override
	public List<Customer> sortByUserId() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllCustomer().stream().sorted().collect(Collectors.toList());
	}
}
	
