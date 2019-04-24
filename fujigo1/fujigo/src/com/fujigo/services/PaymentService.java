package com.fujigo.services;

import java.util.List;

import com.fujigo.beans.Payment;
import com.fujigo.exceptions.ServiceException;



public interface PaymentService {

	List<Payment> findAllPayments()throws ServiceException;
	Payment findById(int paymentId)throws ServiceException;
	void add(Payment payment)throws ServiceException;
	//void remove(Payment payment)throws ServiceException;
	
	List<Payment> sortPaymentById()throws ServiceException;
	List<Payment> sortPaymentByDate()throws ServiceException;


}
