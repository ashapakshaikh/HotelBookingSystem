package com.fujigo.beans;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.transaction.Transactional;

@Embeddable
@Transactional
public class Registration {
	
	@Column(length=10)
	private String confirmPassword;
	
	
	public Registration() {
		// TODO Auto-generated constructor stub
	}
	
	public Registration(String confirmPassword) {
		super();
		this.confirmPassword = confirmPassword;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	

}
