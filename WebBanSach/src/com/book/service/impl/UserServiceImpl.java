package com.book.service.impl;

import java.io.File;
import java.util.List;

import com.book.dao.UserDao;
import com.book.dao.impl.UserDaoImpl;
import com.book.model.User;
import com.book.service.UserService;
import com.book.util.Constant;

public class UserServiceImpl implements UserService {
	UserDao userDao = new UserDaoImpl();

	@Override
	public void insert(User user) {
		userDao.insert(user);
	}

	@Override
	public void edit(User newUser) {
		User oldUser = userDao.get(newUser.getId());

		oldUser.setEmail(newUser.getEmail());
		oldUser.setUsername(newUser.getUsername());
		oldUser.setPassword(newUser.getPassword());
		oldUser.setRoleId(newUser.getRoleId());
		oldUser.setName(newUser.getName());
		oldUser.setAddress(newUser.getAddress());
		oldUser.setPhone(newUser.getPhone());
		String fileName = oldUser.getAvatar();
			// XOA ANH CU DI
			
			if (!fileName.equals("default-avt.png") && !fileName.equals(newUser.getAvatar())) {
				final String dir = Constant.Path.ABSOLUTE_PROJECT_LOCATION + "/view/client/static/img/clients" ;
				File file = new File(dir + "/" + fileName);
				if (file.exists()) {
					file.delete();
				}
			}
			oldUser.setAvatar(newUser.getAvatar());
			
		userDao.edit(oldUser);
	}

	@Override
	public void delete(int id) {
		
		User oldUser = userDao.get(id);
		
		// XOA ANH 
		String fileName = oldUser.getAvatar();
		
		if (!fileName.equals("default-avt.png")) {
			final String dir = Constant.Path.ABSOLUTE_PROJECT_LOCATION + "/view/client/static/img/book-img" ;
			File file = new File(dir + "/" + fileName);
			if (file.exists()) {
				file.delete();
			}
		}
	
		userDao.delete(id);
	}

	@Override
	public User get(String username) {
		return userDao.get(username);
	}

	@Override
	public User get(int id) {
		return userDao.get(id);
	}

	@Override
	public List<User> getAll() {
		return userDao.getAll();
	}

	@Override
	public List<User> search(String username) {
		return userDao.search(username);
	}

	@Override
	public User login(String username, String password) {
		User user = this.get(username);
		if (user != null && password.equals(user.getPassword())) {
			return user;
		}

		return null;
	}

	@Override
	public boolean register(User user) {
		if (userDao.checkExistUsername(user.getUsername())) {
			return false;
		}
		userDao.insert(user);
		return true;
	}
	

	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);
	}

	public boolean checkExistUsername(String username) {
		return userDao.checkExistUsername(username);
	}
}
