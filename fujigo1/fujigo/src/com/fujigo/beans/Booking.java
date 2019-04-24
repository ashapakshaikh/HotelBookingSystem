package com.fujigo.beans;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;




@Component
@Entity
@Table(name="bookingrecord")

public class Booking implements Serializable, Comparable<Booking>
{
	@Id
	@GeneratedValue(generator="increment")
	private int bookingId;
	private Date checkInDate;
	private Date checkOutDate;
	@Column(length=50 )
	private String checkInTime;
	@Column(length=50)
	private String checkOutTime;
	private int numberOfRooms;
	private int noOfAdults;
	private int noOfChildren;
	
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="HotelId")
	private Hotel hotelId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="customerId")
	private Customer customer_Id;
	
	
	public Booking() {
		// TODO Auto-generated constructor stub
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	/*public Date getBookingdate() {
		return bookingdate;
	}

	public void setBookingdate(Date bookingdate) {
		this.bookingdate = bookingdate;
	}*/

	public Date getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}

	public Date getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public String getCheckInTime() {
		return checkInTime;
	}

	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
	}

	public String getCheckOutTime() {
		return checkOutTime;
	}

	public void setCheckOutTime(String checkOutTime) {
		this.checkOutTime = checkOutTime;
	}

	public int getNumberOfRooms() {
		return numberOfRooms;
	}

	public void setNumberOfRooms(int numberOfRooms) {
		this.numberOfRooms = numberOfRooms;
	}

	public int getNoOfAdults() {
		return noOfAdults;
	}

	public void setNoOfAdults(int noOfAdults) {
		this.noOfAdults = noOfAdults;
	}

	public int getNoOfChildren() {
		return noOfChildren;
	}

	public void setNoOfChildren(int noOfChildren) {
		this.noOfChildren = noOfChildren;
	}



	public Hotel getHotelId() {
		return hotelId;
	}

	public void setHotelId(Hotel hotelId) {
		this.hotelId = hotelId;
	}

	public Customer getCustomer_Id() {
		return customer_Id;
	}

	public void setCustomer_Id(Customer customer_Id) {
		this.customer_Id = customer_Id;
	}

	@Override
	public int compareTo(Booking b) {
		// TODO Auto-generated method stub
		return this.bookingId>b.bookingId?1:-1;
	}
	
	
	
	
	public Booking(int bookingId, Date checkInDate, Date checkOutDate, String checkInTime, String checkOutTime,
			int numberOfRooms, int noOfAdults, int noOfChildren, Hotel hotelId, Customer customer_Id) {
		super();
		this.bookingId = bookingId;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.checkInTime = checkInTime;
		this.checkOutTime = checkOutTime;
		this.numberOfRooms = numberOfRooms;
		this.noOfAdults = noOfAdults;
		this.noOfChildren = noOfChildren;
		this.hotelId = hotelId;
		this.customer_Id = customer_Id;
	}

	@Override
	public String toString() {
		return "Booking [bookingId=" + bookingId + ", checkInDate=" + checkInDate + ", checkOutDate=" + checkOutDate
				+ ", checkInTime=" + checkInTime + ", checkOutTime=" + checkOutTime + ", numberOfRooms="
				+ numberOfRooms + ", noOfAdults=" + noOfAdults + ", noOfChildren=" + noOfChildren + ", hotelId="
				+ hotelId + ", customer_Id=" + customer_Id + "]";
	}

	
	
	


	

	
	
}
 