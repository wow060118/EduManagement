package com.yfr.service.impl;

import com.yfr.mapper.PostCreateMapper;
import com.yfr.mapper.RequireCreateMapper;
import com.yfr.mapper.UnderCreateMapper;
import com.yfr.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("proService")
public class ProServiceImpl implements ProService {
    @Autowired
    private UnderCreateMapper underCreateMapper;
    @Autowired
    private PostCreateMapper postCreateMapper;
    @Autowired
    private RequireCreateMapper requireCreateMapper;

    @Override
    public int updateProStatus(int pid, int proType,int status) {
        int num = 0;
        switch (proType) {
            case 0:
                num = underCreateMapper.updateStatus(status,pid);
                break;
            case 1:
                num = postCreateMapper.updateStatus(status,pid);
                break;
            case 2:
                num = requireCreateMapper.updateStatus(status,pid);
                break;
        }
        return num;
    }
}
