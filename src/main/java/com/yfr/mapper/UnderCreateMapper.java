package com.yfr.mapper;

import com.yfr.pojo.UnderCreateInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface UnderCreateMapper {

    int insert(UnderCreateInfo underCreateInfo);
}
