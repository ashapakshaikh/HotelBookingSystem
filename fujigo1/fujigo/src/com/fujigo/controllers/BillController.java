package com.fujigo.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.fujigo.beans.Bill;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.BillService;



@Controller
public class BillController 
{
	@Autowired
	private BillService billService;
	@GetMapping("/bills")
	public String ViewAllBills(HttpSession session)
	{
		try {
			List<Bill> bills= billService.findAllBills();
			session.setAttribute("billList", bills);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Bills";
		
	}
	/*@GetMapping("/add")
	public String addBillForm()
	{
		return "billaddform";
		
	}
	@PostMapping("/addBill")
	public String addBill(Bill bill,ModelMap map)
	{
		try {
			billService.add(bill);
			map.addAttribute("message","bill "+ bill.getBillId()+"is saved successfully");

			return "success";

		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("billadderror","Sorry!!! bill could not saved");
			return "billaddform";
		}
		
		
		
	}
	@GetMapping("/edit")
	public String editBillForm()
	{
		return"billeditform";
		
	}
	@PostMapping("/editBill")
	public String editBill(Bill bill,ModelMap map)
	{
		try {
				billService.update(bill);
			map.addAttribute("message","bill "+ bill.getBillId()+"is edited successfully");
			return "success";

		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("billediterror","Sorry!!! bill could not saved");
			return "billeditform";
		}
		
		
		
	}
	
	@GetMapping("/delete")
	public String deleteBillForm()
	{
		return"billdeleteform";
		
	}
	
	@PostMapping("/deleteBill")
	public String deleteBill(Bill bill,ModelMap map)
	{
		try {
			billService.remove(bill);
			map.addAttribute("message","bill "+ bill.getBillId()+"is deleted successfully");
			return "success";

		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("billdeleteerror","Sorry!!! bill could not deleted");
			return "billdeleteform";
		}
		
		
	
	
}*/
}