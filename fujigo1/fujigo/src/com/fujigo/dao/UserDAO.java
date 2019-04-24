package com.fujigo.dao;

import java.util.List;

import com.fujigo.beans.User;


public interface UserDAO {
	
	List<User> getAllUsers();
	
	User getUserById(int userId);

	void insert(User user);
	void update(User user);
	void delete(User user);

}
