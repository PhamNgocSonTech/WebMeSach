package com.book.dao;

import java.util.List;

import com.book.model.Publisher;
import com.book.model.Role;

public interface RoleDao {
	
	void insert(Role role);

	void edit(Role role);

	void delete(int id);

	List<Role> getAll();
	
}
