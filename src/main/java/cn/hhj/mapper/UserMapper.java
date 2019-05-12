package cn.hhj.mapper;

import cn.hhj.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    public List<User> quireByAccountPassWord(User user);
    public int insert(User user);
}