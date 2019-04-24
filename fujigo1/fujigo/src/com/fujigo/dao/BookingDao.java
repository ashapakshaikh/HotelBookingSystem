package com.fujigo.dao;

import java.util.List;

import com.fujigo.beans.Booking;


public interface BookingDao {
	
	List<Booking> getAllBookings();
	
	Booking getBookingById(int bookingId);
	
	void insert(Booking booking);
	void update(Booking booking) ;
	void delete(Booking booking) ;
	
	
	
	
	
}
