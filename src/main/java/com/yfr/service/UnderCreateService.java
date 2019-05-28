package com.yfr.service;

import com.yfr.po.CreateUnderInfoPo;
import com.yfr.po.ShowListPo;
import com.yfr.pojo.UnderCreateInfo;

import java.util.List;

public interface UnderCreateService {
    int insert(UnderCreateInfo underCreateInfo);

    List<ShowListPo> queryUnderList();

    CreateUnderInfoPo queryUnderInfo(int ucid);

    int delUnderInfo(int ucid);
}
