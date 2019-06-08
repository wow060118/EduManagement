package com.yfr.mapper;

import com.yfr.pojo.PostCreateInfo;
import com.yfr.pojo.RequireCreateInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RequireCreateMapper {
    List<RequireCreateInfo> queryMyList(int uid);

    List<RequireCreateInfo> queryProList();

    int updateStatus(int status,int rcid);
}
