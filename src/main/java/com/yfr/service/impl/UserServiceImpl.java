package com.yfr.service.impl;

import com.yfr.mapper.UserMapper;
import com.yfr.pojo.User;
import com.yfr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


    public List<User> quireByAccountPassWord(User user) {
        return userMapper.quireByAccountPassWord(user);
    }


    public int insert(User user) {
        int flag = userMapper.insert(user);
        return flag;
    }

    @Override
    public List<User> getUserList() {
        return userMapper.getUserList();
    }

    @Override
    public int updateUser(User user) {
        int i = userMapper.updateUser(user);
        return i;
    }


}
