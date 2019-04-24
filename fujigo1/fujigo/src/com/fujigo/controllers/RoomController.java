package com.fujigo.controllers;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.fujigo.beans.Hotel;
import com.fujigo.beans.Room;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.HotelService;
import com.fujigo.services.RoomService;



@Controller
public class RoomController {

	@Autowired
	private RoomService roomService;

	@Autowired
	private HotelService hotelService;

	@GetMapping("/rooms")
	public String viewAllrooms(HttpSession session) {

		try {
			List<Room> rooms =roomService.findAllRooms();
			session.setAttribute("roomList", rooms);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Viewrooms";
	}

	@GetMapping("/addr")
	public String addRoomForm() {
		return "roomaddform";
	}


	@PostMapping("/addRoom")
	public String addRoom(Room room, ModelMap map,  int hotelId) {

		try {

			Hotel hotel = hotelService.findById(hotelId);
			room.setHotel(hotel);


			roomService.add(room);
			map.addAttribute("room",room);
			map.addAttribute("message","Room "+room.getRoomId() +" is Added successfully");
			return "success";
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("addroomerror", "Sorry! room could not find");
			return "roomaddform";
		}
	}

	@GetMapping("/editroom")
	public String editRoomForm() {
		return "roomeditform";
	}


	@PostMapping("/editRoom")
	public String editRoom(Room room, ModelMap map,  int hotelId) {

		try {

			Hotel hotel = hotelService.findById(hotelId);
			room.setHotel(hotel);

			roomService.update(room);
			map.addAttribute("message","Room "+room.getRoomId() +" is Updated successfully");			
			return "success";
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("Roomediterror", "sorry! Room could not find");
			return "roomeditform";
		}


	}
	//////////////Delete

	@GetMapping("/deleteroom")
	public String deleteRoomForm() {
		return "roomdeleteform";
	}

	@PostMapping("/deleteRoom")
	public String deleteRoom(Room room, ModelMap map) {
		try {
			roomService.remove(room);
			map.addAttribute("message","Room "+room.getRoomId() +"is deleted successfully");
			return "success";
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("Roomdeleterror", "sorry! hotel can not be deleted");
			return "roomdeleteform";
		}

	}




}













