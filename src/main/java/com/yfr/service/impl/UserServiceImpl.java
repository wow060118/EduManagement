package com.yfr.service.impl;

import com.yfr.mapper.StudentsInfoMapper;
import com.yfr.mapper.UserMapper;
import com.yfr.pojo.StudentsInfo;
import com.yfr.pojo.User;
import com.yfr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private StudentsInfoMapper studentsInfoMapper;

    public List<User> quireByAccountPassWord(User user) {
        return userMapper.quireByAccountPassWord(user);
    }

    public Object quireUserInfo(User user) {

        switch(user.getType()){
            case 2:
                StudentsInfo studentsInfo = new StudentsInfo();
                studentsInfo.setUser_id(user.getId());
                return studentsInfoMapper.jointQuire(studentsInfo).get(0);
            default:
                return null;
        }
    }

    public int insert(User user) {
        int flag = userMapper.insert(user);
        return flag;
    }


}
