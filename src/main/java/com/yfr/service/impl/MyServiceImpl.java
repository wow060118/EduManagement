package com.yfr.service.impl;

import com.google.common.collect.Lists;
import com.yfr.mapper.PostCreateMapper;
import com.yfr.mapper.RequireCreateMapper;
import com.yfr.mapper.UnderCreateMapper;
import com.yfr.po.ShowListPo;
import com.yfr.pojo.PostCreateInfo;
import com.yfr.pojo.RequireCreateInfo;
import com.yfr.pojo.UnderCreateInfo;
import com.yfr.service.MyService;
import com.yfr.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

@Service("myService")
public class MyServiceImpl implements MyService {

    @Autowired
    private UnderCreateMapper underCreateMapper;
    @Autowired
    private PostCreateMapper postCreateMapper;
    @Autowired
    private RequireCreateMapper requireCreateMapper;

    @Override
    public List<ShowListPo> queryMyList(int uid) {
        List<UnderCreateInfo> underCreateInfos = underCreateMapper.queryMyList(uid);
        List<PostCreateInfo> postCreateInfos = postCreateMapper.queryMyList(uid);
        List<RequireCreateInfo> requireCreateInfos = requireCreateMapper.queryMyList(uid);
        List<ShowListPo> showList= Lists.newArrayList();
        underCreateInfos.forEach(v->{
            ShowListPo showListPo = buildListShow(v);
            showList.add(showListPo);
        });
        postCreateInfos.forEach(v->{
            ShowListPo showListPo = buildListShow(v);
            showList.add(showListPo);
        });
        requireCreateInfos.forEach(v->{
            ShowListPo showListPo = buildListShow(v);
            showList.add(showListPo);
        });
        Collections.sort(showList);
        return showList;
    }

    public ShowListPo buildListShow(RequireCreateInfo obj){
        ShowListPo showListPo=new ShowListPo();
        showListPo.setCreateTime(DateUtil.gainDate(obj.getCreateTime()));
        showListPo.setTeamName(obj.getCompanyName());
        showListPo.setTitle(obj.getTitle());
        showListPo.setCid(obj.getRcid());
        showListPo.setUid(obj.getUid());
        showListPo.setType(obj.getType());
        return showListPo;
    }

    public ShowListPo buildListShow(PostCreateInfo obj){
        ShowListPo showListPo=new ShowListPo();
        showListPo.setCreateTime(DateUtil.gainDate(obj.getCreateTime()));
        showListPo.setTeamName(obj.getTeamName());
        showListPo.setTitle(obj.getTitle());
        showListPo.setCid(obj.getPcid());
        showListPo.setUid(obj.getUid());
        showListPo.setSortDate(obj.getCreateTime());
        showListPo.setType(obj.getType());
        return showListPo;
    }
    public ShowListPo buildListShow(UnderCreateInfo obj){
        ShowListPo showListPo=new ShowListPo();
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
