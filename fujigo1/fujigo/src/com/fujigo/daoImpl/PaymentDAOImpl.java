package com.fujigo.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fujigo.beans.Payment;
import com.fujigo.dao.PaymentDAO;





@Repository
@Transactional
public class PaymentDAOImpl implements PaymentDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public List<Payment> getAllPayments() {
		return hibernateTemplate.loadAll(Payment.class);
	}

	@Override
	public Payment getPaymentById(int paymentId) {
		return hibernateTemplate.get(Payment.class, paymentId);
	}

	@Override
	public void insert(Payment p) {
		hibernateTemplate.save(p);
		
	}

	@Override
	public void update(Payment payment) {
		hibernateTemplate.update(payment);
		
	}

	@Override
	public void delete(Payment payment) {
		hibernateTemplate.delete(payment);
	}

}
