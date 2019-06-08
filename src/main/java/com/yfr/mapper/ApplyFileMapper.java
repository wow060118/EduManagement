package com.yfr.mapper;

import com.yfr.pojo.ApplyFileInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface ApplyFileMapper {
    int insert(ApplyFileInfo applyFileInfo);
}
