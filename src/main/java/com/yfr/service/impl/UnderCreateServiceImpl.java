package com.yfr.service.impl;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.yfr.mapper.UnderCreateMapper;
import com.yfr.po.CreateUnderInfoPo;
import com.yfr.po.ShowListPo;
import com.yfr.pojo.UnderCreateInfo;
import com.yfr.service.UnderCreateService;
import com.yfr.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("underCreateService")
public class UnderCreateServiceImpl implements UnderCreateService {

    @Autowired
    private UnderCreateMapper underCreateMapper;

    public int insert(UnderCreateInfo underCreateInfo) {
        int insert = underCreateMapper.insert(underCreateInfo);
        return insert;
    }

    public List<ShowListPo> queryUnderList(){
        List<UnderCreateInfo> underCreateInfos = underCreateMapper.queryList();
        List<ShowListPo> lists= Lists.newArrayList();
        underCreateInfos.forEach(v->{
            ShowListPo showListPo = buildShowListPo(v);
            lists.add(showListPo);
        });
        System.out.println("quneryUnderList:   "+ JSON.toJSONString(lists));
        return lists;
    }


    public CreateUnderInfoPo queryUnderInfo(int ucid){
        UnderCreateInfo underCreateInfo = underCreateMapper.queryInfo(ucid);
        CreateUnderInfoPo createUnderInfoPo = buildCreateUnderInfoPo(underCreateInfo);
        System.out.println("createUnderInfoPo:   "+ JSON.toJSONString(createUnderInfoPo));
        return createUnderInfoPo;
    }

    @Override
    public int delUnderInfo(int ucid) {
        int num = underCreateMapper.delUnderInfo(ucid);
        return num;
    }


    private ShowListPo buildShowListPo(UnderCreateInfo underCreateInfo){
        ShowListPo showListPo=new ShowListPo();
        showListPo.setCreateTime(DateUtil.gainDate(underCreateInfo.getCreateTime()));
        showListPo.setTeamName(underCreateInfo.getTeamName());
        showListPo.setTitle(underCreateInfo.getTitle());
        showListPo.setCid(underCreateInfo.getUcid());
        showListPo.setUid(underCreateInfo.getUid());
        return showListPo;
    }

    private CreateUnderInfoPo buildCreateUnderInfoPo(UnderCreateInfo underCreateInfo){
        CreateUnderInfoPo createUnderInfoPo=new CreateUnderInfoPo();
        createUnderInfoPo.setUcid(underCreateInfo.getUcid());
        createUnderInfoPo.setTeamName(underCreateInfo.getTeamName());
        createUnderInfoPo.setTitle(underCreateInfo.getTitle());
        createUnderInfoPo.setEmail(underCreateInfo.getEmail());
        createUnderInfoPo.setPhone(underCreateInfo.getPhone());
        createUnderInfoPo.setSchool(underCreateInfo.getSchool());
        createUnderInfoPo.setMoney(underCreateInfo.getMoney());
        createUnderInfoPo.setStudent(underCreateInfo.getStudent());
        createUnderInfoPo.setTeacher(underCreateInfo.getTeacher());


        createUnderInfoPo.setPicFile(underCreateInfo.getPic());
        createUnderInfoPo.setVideo(underCreateInfo.getVideo());
        createUnderInfoPo.setFile(underCreateInfo.getFilePath());
        createUnderInfoPo.setFileName(underCreateInfo.getFileName());
        String ogg= underCreateInfo.getVideo();
        ogg=ogg.replace("mp4","ogg");
        createUnderInfoPo.setVideoOgg(ogg);
        return createUnderInfoPo;
    }

}
