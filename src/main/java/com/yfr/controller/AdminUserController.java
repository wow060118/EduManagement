package com.yfr.controller;


import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import com.yfr.enmus.UserEnums;
import com.yfr.po.AdminApplyInfo;
import com.yfr.po.ShowListPo;
import com.yfr.po.UserInfo;
import com.yfr.pojo.User;
import com.yfr.service.AdminService;
import com.yfr.service.impl.AdminServiceImpl;
import com.yfr.service.impl.UnderCreateServiceImpl;
import com.yfr.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminUserController {
    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private AdminServiceImpl adminService;
    @Autowired
    private UnderCreateServiceImpl underCreateService;
    @RequestMapping("/getUserList")
    public String getUserList(HttpSession session){
        List<User> userList = userService.getUserList();

        List<UserInfo> userInfos= Lists.newArrayList();
        userList.forEach(v->{

            userInfos.add(buildUserInfo(v));
        });
        System.out.println(JSON.toJSONString(userInfos));
        session.setAttribute("userInfos",userInfos);
        return "/v0.3/admin_user";
    }


    @RequestMapping("/getProList")
    public String getProList(HttpSession session){
        List<ShowListPo> showListPos = adminService.queryProList();
        System.out.println(JSON.toJSONString(showListPos));
        session.setAttribute("proList",showListPos);
        return "/v0.3/admin_pro";
    }


    @RequestMapping("/applyList")
    public String applyList(HttpSession session) {
        List<AdminApplyInfo> adminApplyInfos = adminService.queryApplyList();
        System.out.println(JSON.toJSONString(adminApplyInfos));
        session.setAttribute("adminApplyInfos",adminApplyInfos);
        return "/v0.3/admin_apply";
    }

    private UserInfo buildUserInfo(User user){
        UserInfo userInfo=new UserInfo();
        userInfo.setAccount(user.getAccount());
        userInfo.setPassword(user.getPassword());
        userInfo.setUserType(UserEnums.fromCode(user.getType()).getDesc());
        userInfo.setPhone(user.getPhone());
        userInfo.setEmail(user.getEmail());
        userInfo.setUid(user.getUid()+"");
        return userInfo;
    }

    @RequestMapping("/del/under")
    public String delUnderInfo(
            HttpSession session,
            @RequestParam int ucid){
        System.out.println("del:ucid ="+ucid);
        int num = underCreateService.delUnderInfo(ucid);
        if(num<=0){
            return "/v0.3/admin_pro";
        }
        List<ShowListPo> showListPos = underCreateService.queryUnderList();
        session.setAttribute("proList", showListPos);
        return "redirect:/v0.3/admin_pro.jsp";
    }
}
