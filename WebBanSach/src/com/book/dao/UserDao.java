package com.book.dao;

import java.util.List;

import com.book.model.User;

public interface UserDao {
	void insert(User user);

	void edit(User user);

	void delete(int id);

	User get(String username);
	
	User get(int id);
	
	User getEmail(String email);

	List<User> getAll();

	List<User> search(String username);
	
	boolean checkExistEmail(String email);
	
	boolean checkExistUsername(String username);
}
