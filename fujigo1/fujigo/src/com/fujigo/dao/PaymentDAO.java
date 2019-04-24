package com.fujigo.dao;

import java.util.List;

import com.fujigo.beans.Payment;


public interface PaymentDAO {
	
	List<Payment> getAllPayments();
	Payment getPaymentById(int paymentId);
	public void insert(Payment name);
	
	public void update(Payment payment);
	public void delete(Payment payment);

}
