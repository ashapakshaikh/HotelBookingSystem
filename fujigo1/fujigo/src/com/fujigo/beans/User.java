package com.fujigo.beans;

import java.io.Serializable;

//import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.transaction.Transactional;

//import org.springframework.stereotype.Component;

//import com.fujitsu.users.registration.Registration;
//@Component
@Entity
@Table(name="USERS")
@Transactional
 public class User implements  Serializable
 {
	 @Id
	 @GeneratedValue(generator="increment")
	 @Column(name="USER_ID",length=10)
	  private int userId;
	 
	 @Column(length=20,nullable=false,unique=true)
	 private String userName;
	 
	 @Column(length=10,nullable=false)
	 private String password;
	 
	 @Column(length=10,nullable=false)
	 private String role;
	 
	 private Registration registration;
	 
	 public User() {
		// TODO Auto-generated constructor stub
		 registration = new Registration();
	}

	 	
	 
	public User(int userId, String userName, String password, String role) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.role = role;
		this.registration=registration;
		}
	


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}

	

	public Registration getRegistration() {
		return registration;
	}



	public void setRegistration(Registration registration) {
		this.registration = registration;
	}



	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", role=" + role
				+ ", registration=" + registration + "]";
	}



	}

 

	



	
	 
	 
	 
	 
 

	


