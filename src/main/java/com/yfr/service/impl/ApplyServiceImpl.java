package com.yfr.service.impl;

import com.yfr.mapper.ApplyFileMapper;
import com.yfr.mapper.ApplyMapper;
import com.yfr.po.ApplyInfoPo;
import com.yfr.pojo.ApplyFileInfo;
import com.yfr.pojo.ApplyInfo;
import com.yfr.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("applyService")
public class ApplyServiceImpl implements ApplyService {
    @Autowired
    private ApplyMapper applyMapper;

    @Autowired
    private ApplyFileMapper applyFileMapper;
    @Override
    public int insert(ApplyInfoPo applyInfoPo) {
        ApplyInfo applyInfo=buildInfo(applyInfoPo);
        int insert = applyMapper.insert(applyInfo);
        return insert;
    }

    @Override
    public int insertApplyFile(ApplyFileInfo applyFileInfo) {
        return applyFileMapper.insert(applyFileInfo);
    }

    private ApplyInfo buildInfo(ApplyInfoPo applyInfoPo){
        ApplyInfo applyInfo=new ApplyInfo();
        applyInfo.setUid(Integer.parseInt(applyInfoPo.getUid()));
        applyInfo.setCuid(Integer.parseInt(applyInfoPo.getCuid()));
        applyInfo.setPid(Integer.parseInt(applyInfoPo.getPid()));
        applyInfo.setProtype(applyInfoPo.getProtype());
        return applyInfo;
    }
}
