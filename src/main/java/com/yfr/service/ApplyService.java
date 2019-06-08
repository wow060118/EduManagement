package com.yfr.service;

import com.yfr.po.ApplyInfoPo;
import com.yfr.pojo.ApplyFileInfo;
import com.yfr.pojo.ApplyInfo;

public interface ApplyService  {
    int insert(ApplyInfoPo applyInfoPo);
    int insertApplyFile(ApplyFileInfo applyFileInfo);
}
