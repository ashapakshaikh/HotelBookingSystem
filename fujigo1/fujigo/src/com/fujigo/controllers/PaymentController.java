package com.fujigo.controllers;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.fujigo.beans.Bill;
import com.fujigo.beans.Payment;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.BillService;
import com.fujigo.services.PaymentService;




@Controller
public class PaymentController {
	@Autowired

	private PaymentService paymentService;
	@Autowired
	private BillService billService;
	
	
	@GetMapping("/payments")
	public String viewAllPayments(HttpSession session)
	{
		try {
			List<Payment> payments=paymentService.findAllPayments();
			session.setAttribute("paymentList", payments);
		} catch (ServiceException e) {
			
			e.printStackTrace();
		}
		return "paymentview";
	}
	
	@GetMapping("/addPayment")
	public String addPaymentForm()
	{
		return "paymentmode";
	}

	@PostMapping("/addpayment")
	public String addPayment(Payment payment,ModelMap map)
	{
		try {
			//LocalDate date = LocalDate.now();
			//payment.setPaymentDate(LocalDate.parse(date.format(DateTimeFormatter.BASIC_ISO_DATE)));
			payment.setPaymentDate(new java.sql.Date(new java.util.Date().getTime()));
			paymentService.add(payment);
			Bill bill = new Bill();
			//bill.setBill_date(LocalDate.parse(date.format(DateTimeFormatter.BASIC_ISO_DATE)));
			bill.setBill_date(new java.sql.Date(new java.util.Date().getTime()));
			bill.setPayment(payment);
			bill.setTotal_amt(payment.getAmount());
			billService.add(bill);
			map.addAttribute("payment",payment);
			map.addAttribute("bill",bill);
			return "successpay";
		} catch (ServiceException e) {
			
			e.printStackTrace();
			map.addAttribute("paymentadderror","Sorry!!!!! Payment could not be save.....");
			return "paymentmode";
		}
		
	
	}

}
