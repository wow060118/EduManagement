package com.yfr.service.impl;

import com.yfr.mapper.UnderCreateMapper;
import com.yfr.po.CreateUnderInfoPo;
import com.yfr.pojo.UnderCreateInfo;
import com.yfr.service.UnderCreateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("underCreateService")
public class UnderCreateServiceImpl implements UnderCreateService {

    @Autowired
    private UnderCreateMapper underCreateMapper;

    public int insert(UnderCreateInfo underCreateInfo) {
        underCreateMapper.insert(underCreateInfo);
        return 0;
    }



}
