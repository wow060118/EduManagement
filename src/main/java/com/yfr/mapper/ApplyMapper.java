package com.yfr.mapper;

import com.yfr.pojo.ApplyInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ApplyMapper {
    int insert(ApplyInfo applyInfo);
    int queryInfoByPid(@Param("pid") int pid,@Param("protype") int proType);
}
