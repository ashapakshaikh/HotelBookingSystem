package com.fujigo.servicesImpl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fujigo.beans.Booking;
import com.fujigo.dao.BookingDao;
import com.fujigo.exceptions.ServiceException;
import com.fujigo.services.BookingService;



@Service
public class BookingServiceImpl implements BookingService {
	@Autowired
	private BookingDao bookingDao;
	
	
	@Override
	public List<Booking> findAllBooking()throws ServiceException {
		// TODO Auto-generated method stub
		return bookingDao.getAllBookings();
	}

	@Override
	public Booking findByBookingId(int bookingId) throws ServiceException {
		// TODO Auto-generated method stub
		return bookingDao.getBookingById(bookingId);
	}

	@Override
	public void add(Booking booking) throws ServiceException {
		// TODO Auto-generated method stub
		bookingDao.insert(booking);
	}

	@Override
	public void update(Booking booking) throws ServiceException {
		// TODO Auto-generated method stub
		bookingDao.update(booking);
	}

	@Override
	public void remove(Booking booking) throws ServiceException {
		// TODO Auto-generated method stub
		bookingDao.delete(booking);
	}

	@Override
	public List<Booking> sortBookingById() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllBooking().stream().sorted().collect(Collectors.toList());
	}

/*	@Override
	public List<Booking> sortBookingByBookingDate() throws ServiceException {
		// TODO Auto-generated method stub
		return findAllBooking().stream().sorted((b1,b2)-> b1.getBookingdate().compareTo(b2.getBookingdate()))
				.collect(Collectors.toList());
	}
	*/
	

}
