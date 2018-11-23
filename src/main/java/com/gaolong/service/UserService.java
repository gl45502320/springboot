package com.gaolong.service;


import com.gaolong.entity.User;

public interface UserService {
	public User selectOne(User user);
	
	public void insertOne(User user);
}
