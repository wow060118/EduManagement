package com.yfr.mapper;

import com.yfr.pojo.TeachersInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeachersInfoMapper {
    Integer add(TeachersInfo teachersInfo);
    Integer deleteById(TeachersInfo teachersInfo);
    Integer update(TeachersInfo teachersInfo);
    List<TeachersInfo> quire(TeachersInfo teachersInfo);
}