package com.yfr.service;

import com.yfr.pojo.User;

import java.util.List;

public interface UserService {
    List<User> quireByAccountPassWord(User user);
    int insert(User user);
    List<User> getUserList();
    int updateUser(User user);
}
