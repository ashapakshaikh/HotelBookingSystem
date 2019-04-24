package com.fujigo.services;

import java.util.List;

import com.fujigo.beans.User;
import com.fujigo.exceptions.ServiceException;


public interface UserService {
	
	List<User> findAllUsers() throws ServiceException;
	
	User findByUserId(int userId)throws ServiceException;
	
	void add(User user)throws ServiceException;
	void update(User user)throws ServiceException;
	void remove(User user)throws ServiceException;
	void search(User user) throws ServiceException;
	
	List<User> sortUsersById() throws ServiceException;
	List<User> sortUsersByName(String userName) throws ServiceException;
	List<User> sortUsersByRole(String role) throws ServiceException;
	List<User> searchUserbyName(String userName) throws ServiceException;
    

}
