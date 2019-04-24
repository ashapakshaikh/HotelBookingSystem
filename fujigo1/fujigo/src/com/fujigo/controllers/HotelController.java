package com.fujigo.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fujigo.beans.Hotel;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.HotelService;

@Controller
public class HotelController {


	@Autowired(required=true)
	private HotelService hotelService;
	

	@GetMapping("/hotels")
	public String viewAllhotels(HttpSession session) {

		try {

			List<Hotel> hotels =hotelService.findAllHotels();
			session.setAttribute("hotelList", hotels);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "hotelview";
	}
	
//////////////Add

	@GetMapping("/add")
	public String addHotelForm() {
		return "hoteladdform";
	}

	@RequestMapping("/addHotel")
	public String addHotel(HttpServletRequest request, Hotel hotel, ModelMap map, @RequestParam CommonsMultipartFile hotelPhoto) {

			
		
		try {
			
			String fileName = hotelPhoto.getOriginalFilename();
			byte [] photoData = hotelPhoto.getBytes();
			hotel.setPhoto(photoData);
			hotelService.add(hotel);
			map.addAttribute("message", "HOTEL" + hotel.getHotelId() + "is saved successfully");
			return "success";
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("addhotelerror", "sorry! hotel could not find");
			return "hoteladdform";
		}
}

//////////////Edit

	@GetMapping("/edit")
	public String editHotelForm(){
		return "hoteleditform";
	}
	@PostMapping("/edithotel")
	public String editHotel(Hotel hotel, ModelMap map) {
	try {
		hotelService.update(hotel);
		map.addAttribute("message","hotel "+hotel.getHotelId() +"is updated successfully");
		return "success";
	} catch (ServiceException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		map.addAttribute("hotelediterror", "sorry! hotel could not find");
		return "hoteleditform";
	}
	}

//////////////Delete
	
	@GetMapping("/delete")
	public String deleteHotelForm() {
		return "hoteldeleteform";
	}
	
	@PostMapping("/deleteHotel")
	public String deleteHotel(Hotel hotel, ModelMap map) {
	try {
		hotelService.remove(hotel);
		map.addAttribute("message","hotel "+hotel.getHotelId() +"is deleted successfully");
		return "success";
	} catch (ServiceException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		map.addAttribute("hoteldeleterror", "sorry! hotel can not be deleted");
		return "deletehotelform";
	}
	
	}

	@RequestMapping("/search")
	public String searchHotel(String city,HttpSession session) {
		
		try {
			List<Hotel> hotel = hotelService.findAllHotelsbycity(city);
			session.setAttribute("hotelList",hotel);
			
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return "HotelList" ;
}

	
}
