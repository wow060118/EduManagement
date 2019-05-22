package com.yfr.mapper;

import com.yfr.pojo.Class;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClassMapper {
    Integer add(Class c);
    Integer deleteById(Class c);
    Integer update(Class c);
    List<Class> quire(Class c);
}