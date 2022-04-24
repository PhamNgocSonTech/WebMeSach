package com.book.model;

import java.io.Serializable;

public class User implements Serializable {
	
	private int id;
	private String email;
	private String username;
	private String password;
	private String avatar;
	private int roleId;
	
	private String name;
	private String address;
	private String phone;
	
	
	public User() {
		super();
	}
	public User(String email, String username, String password) {
		super();
		this.email = email;
		this.username = username;
		this.password = password;
	}
	public User(int id, String email, String username, String password, String avatar, int roleId) {
		super();
		this.id = id;
		this.email = email;
		this.username = username;
		this.password = password;
		this.avatar = avatar;
		this.roleId = roleId;
	}
	
	public User(int id, String email, String username, String password, String avatar, int roleId, String name,
			String address, String phone) {
		this.id = id;
		this.email = email;
		this.username = username;
		this.password = password;
		this.avatar = avatar;
		this.roleId = roleId;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	
	public User(String email, String username, String password, String avatar, int roleId, String name, String address,
			String phone) {
		this.email = email;
		this.username = username;
		this.password = password;
		this.avatar = avatar;
		this.roleId = roleId;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
