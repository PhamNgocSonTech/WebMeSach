package com.book.service;

import java.util.List;

import com.book.model.Role;

public interface RoleService {
	
	void insert(Role role);

	void edit(Role role);

	void delete(int id);

	List<Role> getAll();
	
}
