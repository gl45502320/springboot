package com.gaolong.dao;


import com.gaolong.entity.User;

public interface UserDao {
	
	public User selectOne(User user);
	
	public void insertOne(User user);
}
