package com.yfr.service;

import com.yfr.pojo.User;

import java.util.List;

public interface UserService {
    List<User> quireByAccountPassWord(User user);
    Object quireUserInfo(User user);
    int insert(User user);
}
