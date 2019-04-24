package com.fujigo.services;

import java.util.List;

import com.fujigo.beans.Booking;
import com.fujigo.exceptions.ServiceException;





public interface BookingService {
	
	List<Booking> findAllBooking() throws ServiceException;
	Booking findByBookingId(int bookingId) throws ServiceException;
	void add(Booking booking) throws ServiceException;
	void update(Booking booking) throws ServiceException;
	void remove(Booking booking) throws ServiceException;
	
	List<Booking> sortBookingById() throws ServiceException;
	/*List<Booking> sortBookingByBookingDate() throws ServiceException;
	
	*/
}
