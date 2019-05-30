package com.yfr.controller;

import com.alibaba.fastjson.JSON;
import com.yfr.po.ShowListPo;
import com.yfr.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.json.Json;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/my")
public class MyController {

    @Autowired
    private MyService myService;


    @RequestMapping("/mylist")
    public String queryMyList(HttpSession session, @RequestParam("uid")int uid){
        List<ShowListPo> showListPo = myService.queryMyList(uid);
        System.out.println("queryMyList===="+JSON.toJSONString(showListPo));
        session.setAttribute("myList",showListPo);
        return "/v0.3/my_pro";
    }
}
