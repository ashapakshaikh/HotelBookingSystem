package com.fujigo.servicesImpl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fujigo.beans.Room;
import com.fujigo.dao.RoomDAO;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.RoomService;

/*
 * Author:Satyam Tiwari
 * Creation Date:04/04/2019 (DD/MM/YYYY)
 * Modification Date:04/04/2019 (DD/MM/YYYY)
 * Version:1.0
 * Copyright:Fujitsu Consulting India Pvt.Ltd.
 * 			 All rights reserved.
 * Description:Service Component Interface 
 * 			   Implementor Class of 
 * 			   Bussiness Layer 
 * 
 */
@Service
public class RoomServiceImpl implements RoomService {

@Autowired
private RoomDAO roomDao;

@Override
public List<Room> findAllRooms() throws ServiceException {
	// TODO Auto-generated method stub
	return roomDao.getAllRooms();
}

@Override
public Room findById(int roomId) throws ServiceException {
	// TODO Auto-generated method stub
	return roomDao.getRoomsById(roomId);
}


@Override
public void add(Room room) throws ServiceException {
	// TODO Auto-generated method stub
	roomDao.insert(room);

}

@Override
public void update(Room room) throws com.fujigo.exceptions.ServiceException {
	// TODO Auto-generated method stub
	roomDao.update(room);
}

@Override
public void remove(Room room) throws com.fujigo.exceptions.ServiceException {
	// TODO Auto-generated method stub
	roomDao.delete(room);

}

@Override
public List<Room> sortRoomsById() throws com.fujigo.exceptions.ServiceException {
	// TODO Auto-generated method stub
	return findAllRooms().stream().sorted().collect(Collectors.toList());
}

@Override
public List<Room> sortRoomsBytype() throws com.fujigo.exceptions.ServiceException {
	// TODO Auto-generated method stub
	return findAllRooms().stream().sorted((r1,r2)->r1.getRoomType().compareTo(r2.getRoomType())).collect(Collectors.toList());
}

@Override
public List<Room> sortRoomsByPriceRange(float minPrice, float maxPrice)
		throws com.fujigo.exceptions.ServiceException {
	// TODO Auto-generated method stub
	 return findAllRooms().stream().filter(r->r.getRoomprice()>=minPrice && r.getRoomprice()<=maxPrice).collect(Collectors.toList());
}
	
	
}
