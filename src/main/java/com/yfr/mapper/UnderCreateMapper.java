package com.yfr.mapper;

import com.yfr.pojo.RequireCreateInfo;
import com.yfr.pojo.UnderCreateInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UnderCreateMapper {

    int insert(UnderCreateInfo underCreateInfo);

    List<UnderCreateInfo> queryList();

    UnderCreateInfo queryInfo(int ucid);

    List<UnderCreateInfo> queryMyList(int uid);

    int delUnderInfo (int ucid);

    List<UnderCreateInfo> queryProList();

    int updateStatus(@Param("status") int status,@Param("ucid") int ucid);

    int getStatus(int ucid);

    List<UnderCreateInfo> selectTitleLike(@Param("title") String title);
}
