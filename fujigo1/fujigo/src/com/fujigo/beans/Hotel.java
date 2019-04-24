package com.fujigo.beans;

import java.io.Serializable;
import java.sql.Blob;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

/*
 * Author:Kajol Chaudhari
 * Creation Date:03/04/2019 (DD/MM/YYYY)
 * Modification Date:03/04/2019 (DD/MM/YYYY)
 * Version:1.0
 * Description:It is java bean class which represents Database Entity
 *  	       It is also Value Object Class
 * Copyright:Fujitsu Consulting India Pvt.Ltd.All rights reserved.
 */
//Java Beans class-Entity Class

@Component
@Entity
@Table(name="HOTEL_NEW")
@Transactional
public class Hotel implements Comparable<Hotel>,Serializable {

	@Id
	@GeneratedValue(generator="increment")
	@Column(length=10,name="HOTEL_ID")
	private  int hotelId;

	@Column(length=20)
	private String hotelName;

	@Column(length=20)
	private String website;

	@Column(length=1)
	private int rating;

	@Column(length=50)
	private String review;

	@Column(length=10)
	private long phoneNo;

	@Column(length=30)
	private String emailId;

	@Column(length=100)
	private String address;

	@Column(length=20)
	private int countrycode;

	@Column(length=20)
	private String city;

	@Column(length=20)
	private String state;

	@Column(length=20)
	private String country;

	@Column(length=10)
	private int zip;

	@Column(length=3)
	private int totalNoOfRooms;

	@Column(length=3)
	private int availableRooms;

	@OneToMany(mappedBy="hotel",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<Room> rooms;
	
	@Lob
	@Basic(fetch=FetchType.LAZY)
	private byte[] photo;
	
	
	
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getCountrycode() {
		return countrycode;
	}

	public void setCountrycode(int countrycode) {
		this.countrycode = countrycode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public int getTotalNoOfRooms() {
		return totalNoOfRooms;
	}

	public void setTotalNoOfRooms(int totalNoOfRooms) {
		this.totalNoOfRooms = totalNoOfRooms;
	}

	public int getAvailableRooms() {
		return availableRooms;
	}

	public void setAvailableRooms(int availableRooms) {
		this.availableRooms = availableRooms;
	}

	public List<Room> getRooms() {
		return rooms;
	}

	public void setRooms(List<Room> rooms) {
		this.rooms = rooms;
	}

	public Hotel() {
		// TODO Auto-generated constructor stub
	}

	public Hotel(int hotelId, String hotelName, String website, int rating, String review, long phoneNo, String emailId,
			String address, int countrycode, String city, String state, String country, int zip,
			int totalNoOfRooms, int availableRooms, List<Room> rooms) {
		super();
		this.hotelId = hotelId;
		this.hotelName = hotelName;
		this.website = website;
		this.rating = rating;
		this.review = review;
		this.phoneNo = phoneNo;
		this.emailId = emailId;
		this.address = address;
		this.countrycode = countrycode;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zip = zip;
		
		this.totalNoOfRooms = totalNoOfRooms;
		this.availableRooms = availableRooms;
		this.rooms = rooms;
	}
	@Override
	public String toString() {
		return "Hotel [hotelId=" + hotelId + ", hotelName=" + hotelName + ", website=" + website + ", rating=" + rating
				+ ", review=" + review + ", phoneNo=" + phoneNo + ", emailId=" + emailId + ", address=" + address
				+ ", countrycode=" + countrycode + ", city=" + city + ", state=" + state + ", country=" + country
				+ ", zip=" + zip + ", totalNoOfRooms=" + totalNoOfRooms + ", availableRooms=" + availableRooms
				+ ", rooms=" + rooms + "]";
	}

	@Override
	public int compareTo(Hotel o) {
		// TODO Auto-generated method stub
		return this.hotelId>o.hotelId?1:-1;
	}
	


}
