package com.yfr.service;

import com.yfr.po.AdminApplyInfo;
import com.yfr.po.ShowListPo;
import com.yfr.pojo.ApplyInfo;

import java.util.List;

public interface AdminService {
    List<ShowListPo> queryProList();

    List<AdminApplyInfo> queryApplyList();
}
