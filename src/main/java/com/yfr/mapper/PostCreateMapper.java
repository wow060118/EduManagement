package com.yfr.mapper;

import com.yfr.pojo.PostCreateInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostCreateMapper {
    List<PostCreateInfo> queryMyList(int uid);

    List<PostCreateInfo> queryProList();

    int updateStatus(int status,int pcid);
}
