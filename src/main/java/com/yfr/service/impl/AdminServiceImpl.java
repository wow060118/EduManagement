package com.yfr.service.impl;

import com.google.common.collect.Lists;
import com.yfr.enmus.ProType;
import com.yfr.enmus.StatusEnums;
import com.yfr.mapper.*;
import com.yfr.po.AdminApplyInfo;
import com.yfr.po.ShowListPo;
import com.yfr.pojo.ApplyInfo;
import com.yfr.pojo.PostCreateInfo;
import com.yfr.pojo.RequireCreateInfo;
import com.yfr.pojo.UnderCreateInfo;
import com.yfr.service.AdminService;
import com.yfr.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private UnderCreateMapper underCreateMapper;
    @Autowired
    private PostCreateMapper postCreateMapper;
    @Autowired
    private RequireCreateMapper requireCreateMapper;

    @Autowired
    private ApplyMapper applyMapper;

    @Autowired
    private UserMapper userMapper;


    @Override
    public List<ShowListPo> queryProList() {
        List<UnderCreateInfo> underCreateInfos = underCreateMapper.queryProList();
        List<PostCreateInfo> postCreateInfos = postCreateMapper.queryProList();
        List<RequireCreateInfo> requireCreateInfos = requireCreateMapper.queryProList();
        List<ShowListPo> showList = Lists.newArrayList();
        underCreateInfos.forEach(v -> {
            ShowListPo showListPo = buildListShow(v);
            showList.add(showListPo);
        });
        postCreateInfos.forEach(v -> {
            ShowListPo showListPo = buildListShow(v);
            showList.add(showListPo);
        });
        requireCreateInfos.forEach(v -> {
            ShowListPo showListPo = buildListShow(v);
            showList.add(showListPo);
        });
        Collections.sort(showList);
        return showList;
    }

    @Override
    public List<AdminApplyInfo> queryApplyList() {
        List<ApplyInfo> applyInfos = applyMapper.queryApplyList();
        List<AdminApplyInfo> adminApplyInfos=Lists.newArrayList();
        applyInfos.forEach(v->{
            adminApplyInfos.add(buildApplyInfo(v));

        });
        return adminApplyInfos;
    }

    private AdminApplyInfo buildApplyInfo(ApplyInfo applyInfo){
        AdminApplyInfo adminApplyInfo=new AdminApplyInfo();
        String uName= userMapper.getAccount(applyInfo.getUid());
        String cName=userMapper.getAccount(applyInfo.getCuid());
        adminApplyInfo.setuName(uName);
        adminApplyInfo.setcName(cName);
        adminApplyInfo.setProType(ProType.fromCode(applyInfo.getProtype()).getDesc());
        adminApplyInfo.setTitle(applyInfo.getTitle());
        int status =-1;
        switch (applyInfo.getProtype()){
            case 0:
                status=underCreateMapper.getStatus(applyInfo.getPid());
                break;
        }

        adminApplyInfo.setStatus(StatusEnums.fromCode(status).getDesc());
        return adminApplyInfo;
    }


    private ShowListPo buildListShow(RequireCreateInfo obj) {
        ShowListPo showListPo = new ShowListPo();
        showListPo.setCreateTime(DateUtil.gainDate(obj.getCreateTime()));
        showListPo.setTeamName(obj.getCompanyName());
        showListPo.setTitle(obj.getTitle());
        showListPo.setCid(obj.getRcid());
        showListPo.setUid(obj.getUid());
        showListPo.setType(obj.getType());
        return showListPo;
    }

    private ShowListPo buildListShow(PostCreateInfo obj) {
        ShowListPo showListPo = new ShowListPo();
        showListPo.setCreateTime(DateUtil.gainDate(obj.getCreateTime()));
        showListPo.setTeamName(obj.getTeamName());
        showListPo.setTitle(obj.getTitle());
        showListPo.setCid(obj.getPcid());
        showListPo.setUid(obj.getUid());
        showListPo.setSortDate(obj.getCreateTime());
        showListPo.setType(obj.getType());
        return showListPo;
    }

    private ShowListPo buildListShow(UnderCreateInfo obj) {
        ShowListPo showListPo = new ShowListPo();
        showListPo.setCreateTime(DateUtil.gainDate(obj.getCreateTime()));
        showListPo.setTeamName(obj.getTeamName());
        showListPo.setTitle(obj.getTitle());
        showListPo.setCid(obj.getUcid());
        showListPo.setUid(obj.getUid());
        showListPo.setSortDate(obj.getCreateTime());
        showListPo.setType(obj.getType());
        return showListPo;
    }
}
