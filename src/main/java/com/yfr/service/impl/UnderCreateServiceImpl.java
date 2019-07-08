package com.yfr.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.yfr.mapper.ApplyMapper;
import com.yfr.mapper.UnderCreateMapper;
import com.yfr.po.CreateUnderInfoPo;
import com.yfr.po.ShowListPo;
import com.yfr.pojo.UnderCreateInfo;
import com.yfr.redis.RedisUtil;
import com.yfr.service.UnderCreateService;
import com.yfr.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service("underCreateService")
public class UnderCreateServiceImpl implements UnderCreateService {

    @Autowired
    private UnderCreateMapper underCreateMapper;

    @Autowired
    private ApplyMapper applyMapper;
//
//    @Autowired
//    private RedisUtil redisUtil;

    public int insert(UnderCreateInfo underCreateInfo) {
        int insert = underCreateMapper.insert(underCreateInfo);
        return insert;
    }

    public List<ShowListPo> queryUnderList() {
//        Boolean flag = redisUtil.exists("underList",1);
        List<ShowListPo> lists = Lists.newArrayList();
//        System.out.println(flag);
//        if(!flag) {
            System.out.println("使用数据库查询");
            List<UnderCreateInfo> underCreateInfos = underCreateMapper.queryList();
            underCreateInfos.forEach(v -> {
                ShowListPo showListPo = buildShowListPo(v);
                lists.add(showListPo);
//                redisUtil.lpush(1,"underList",JSON.toJSONString(showListPo));
            });
//        }else {
//            System.out.println("使用redis查询");
//            Long num = redisUtil.llen("underList",1);
//            System.out.println(num);
//            List<String> lrange = redisUtil.lrange("underList",0, num-1,1);
//            lrange.forEach(v->{
//                JSONObject jsonObject = JSON.parseObject(v);
//                ShowListPo showListPo=jsonObject.toJavaObject(ShowListPo.class);
//                lists.add(showListPo);
//                Collections.reverse(lists);
//            });
//        }
        System.out.println("quneryUnderList:   " + JSON.toJSONString(lists));
        return lists;
    }


    public CreateUnderInfoPo queryUnderInfo(int ucid) {
        UnderCreateInfo underCreateInfo = underCreateMapper.queryInfo(ucid);
        int applyUid = -1;
        if (underCreateInfo.getStatus() != 0) {
            applyUid = applyMapper.queryInfoByPid(underCreateInfo.getUcid(), 0);
        }
        CreateUnderInfoPo createUnderInfoPo = buildCreateUnderInfoPo(underCreateInfo, applyUid);
        System.out.println("createUnderInfoPo:   " + JSON.toJSONString(createUnderInfoPo));
        return createUnderInfoPo;
    }

    @Override
    public int delUnderInfo(int ucid) {
        int num = underCreateMapper.delUnderInfo(ucid);
//        redisUtil.del(1,"underList");
//        List<UnderCreateInfo> underCreateInfos = underCreateMapper.queryList();
//        underCreateInfos.forEach(v -> {
//            ShowListPo showListPo = buildShowListPo(v);
//            redisUtil.lpush(1,"underList",JSON.toJSONString(showListPo));
//        });

        System.out.println("111111");
        return num;
    }

    @Override
    public List<ShowListPo> selectTitleLike(String title) {
        List<ShowListPo> lists = Lists.newArrayList();
        List<UnderCreateInfo> underCreateInfos = underCreateMapper.selectTitleLike(title);
        System.out.println(underCreateInfos);
        underCreateInfos.forEach(v -> {
            ShowListPo showListPo = buildShowListPo(v);
            lists.add(showListPo);
        });
        return lists;
    }


    private ShowListPo buildShowListPo(UnderCreateInfo underCreateInfo) {
        ShowListPo showListPo = new ShowListPo();
        showListPo.setCreateTime(DateUtil.gainDate(underCreateInfo.getCreateTime()));
        showListPo.setTeamName(underCreateInfo.getTeamName());
        showListPo.setTitle(underCreateInfo.getTitle());
        showListPo.setCid(underCreateInfo.getUcid());
        showListPo.setUid(underCreateInfo.getUid());
        return showListPo;
    }

    private CreateUnderInfoPo buildCreateUnderInfoPo(UnderCreateInfo underCreateInfo, int applyUid) {
        CreateUnderInfoPo createUnderInfoPo = new CreateUnderInfoPo();
        createUnderInfoPo.setUcid(underCreateInfo.getUcid());
        createUnderInfoPo.setTeamName(underCreateInfo.getTeamName());
        createUnderInfoPo.setTitle(underCreateInfo.getTitle());
        createUnderInfoPo.setEmail(underCreateInfo.getEmail());
        createUnderInfoPo.setPhone(underCreateInfo.getPhone());
        createUnderInfoPo.setSchool(underCreateInfo.getSchool());
        createUnderInfoPo.setMoney(underCreateInfo.getMoney());
        createUnderInfoPo.setStudent(underCreateInfo.getStudent());
        createUnderInfoPo.setTeacher(underCreateInfo.getTeacher());
        createUnderInfoPo.setUid(underCreateInfo.getUid());

        createUnderInfoPo.setPicFile(underCreateInfo.getPic());
        createUnderInfoPo.setVideo(underCreateInfo.getVideo());
        createUnderInfoPo.setFile(underCreateInfo.getFilePath());
        createUnderInfoPo.setFileName(underCreateInfo.getFileName());
        createUnderInfoPo.setStatus(underCreateInfo.getStatus());
        createUnderInfoPo.setApplyUid(applyUid);
        String ogg = underCreateInfo.getVideo();
        ogg = ogg.replace("mp4", "ogg");
        createUnderInfoPo.setVideoOgg(ogg);
        return createUnderInfoPo;
    }

}
