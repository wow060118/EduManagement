package com.yfr.mapper;

import com.yfr.pojo.PostCreateInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostCreateMapper {
    List<PostCreateInfo> queryMyList(int uid);
}
