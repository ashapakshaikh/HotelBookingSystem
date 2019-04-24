package com.fujigo.beans;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

@Component
@Entity
@Transactional
@Table(name="CUSTOMER")
public class Customer 
{

	@Id
	@GeneratedValue(generator="increment")
	private int customer_Id;

	@Column(length=30)
	private String customer_Name; 

	private Long country_Code;

	private Long phone_No;


	@Column(length=30)
	private String email_Id;

	@Column(length=100)
	private String address;

	@Column(length=20)
	private String city;

	@Column(length=20)
	private String state;

	@Column(length=20)
	private String country;

	@Column(length=20)
	private int zip;

	private int age;

	@Column(length=30)
	private String gender;

	@Column(length=30)
	private String id_Type;

	@Column(length=30)
	private String id_No;

	@Column(length=30)
	private String nationality;

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="userId")
	private User user;

	public Customer() {
		// TODO Auto-generated constructor stub
	}

	public Customer(int customer_Id, String customer_Name, Long country_Code, Long phone_No, String email_Id,
			String address, String city, String state, String country, int zip, int age, String gender, String id_Type,
			String id_No, String nationality, User user) {
		super();
		this.customer_Id = customer_Id;
		this.customer_Name = customer_Name;
		this.country_Code = country_Code;
		this.phone_No = phone_No;
		this.email_Id = email_Id;
		this.address = address;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zip = zip;
		this.age = age;
		this.gender = gender;
		this.id_Type = id_Type;
		this.id_No = id_No;
		this.nationality = nationality;
		this.user = user;
	}

	public int getCustomer_Id() {
		return customer_Id;
	}

	public void setCustomer_Id(int customer_Id) {
		this.customer_Id = customer_Id;
	}

	public String getCustomer_Name() {
		return customer_Name;
	}

	public void setCustomer_Name(String customer_Name) {
		this.customer_Name = customer_Name;
	}

	public Long getCountry_Code() {
		return country_Code;
	}

	public void setCountry_Code(Long country_Code) {
		this.country_Code = country_Code;
	}

	public Long getPhone_No() {
		return phone_No;
	}

	public void setPhone_No(Long phone_No) {
		this.phone_No = phone_No;
	}

	public String getEmail_Id() {
		return email_Id;
	}

	public void setEmail_Id(String email_Id) {
		this.email_Id = email_Id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getId_Type() {
		return id_Type;
	}

	public void setId_Type(String id_Type) {
		this.id_Type = id_Type;
	}

	public String getId_No() {
		return id_No;
	}

	public void setId_No(String id_No) {
		this.id_No = id_No;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Customer [customer_Id=" + customer_Id + ", customer_Name=" + customer_Name + ", country_Code="
				+ country_Code + ", phone_No=" + phone_No + ", email_Id=" + email_Id + ", address=" + address
				+ ", city=" + city + ", state=" + state + ", country=" + country + ", zip=" + zip + ", age=" + age
				+ ", gender=" + gender + ", id_Type=" + id_Type + ", id_No=" + id_No + ", nationality=" + nationality
				+ ", user=" + user + "]";
	}



}  