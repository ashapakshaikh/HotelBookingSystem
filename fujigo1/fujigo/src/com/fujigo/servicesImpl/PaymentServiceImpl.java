package com.fujigo.servicesImpl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fujigo.beans.Payment;
import com.fujigo.dao.PaymentDAO;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.PaymentService;



@Service
public class PaymentServiceImpl implements PaymentService{
	
	@Autowired
	private PaymentDAO paymentDao;
	
	@Override
	public List<Payment> findAllPayments() throws ServiceException {
		return paymentDao.getAllPayments();
	}

	@Override
	public Payment findById(int paymentId) throws ServiceException {
		return paymentDao.getPaymentById(paymentId);
	}

	@Override
	public void add(Payment payment) throws ServiceException {
		paymentDao.insert(payment);
		
	}


	@Override
	public List<Payment> sortPaymentById() throws ServiceException {
		return findAllPayments().stream().sorted().collect(Collectors.toList());
		
	}

	@Override
	public List<Payment> sortPaymentByDate() throws ServiceException {
		
		return findAllPayments().stream().sorted((p1,p2)-> p1.getPaymentDate().compareTo(p2.getPaymentDate())).collect(Collectors.toList());
	}

	


}
