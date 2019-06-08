package com.yfr.controller;

import com.yfr.BaseInfo;
import com.yfr.enmus.UserEnums;
import com.yfr.po.UserInfo;
import com.yfr.pojo.Announcement;
import com.yfr.pojo.User;
import com.yfr.service.AnnouncementService;
import com.yfr.service.UserService;
import com.alibaba.fastjson.JSON;
import com.yfr.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController{

    @Autowired
    private UserService userService;


    @Autowired
    private AnnouncementService announcementService;

    /**
     * 用户登陆，根据用户类型返回对应页面,并且查询对应基础信息
     * @param user
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(User user, Model model, HttpSession session){
        if(user.getAccount() == null || user.getPassword() == null)
            return "redirect:/index.jsp";
        try {
            String pwd= MD5Util.EncoderByMd5(user.getPassword());
            user.setPassword(pwd);
            System.out.println(pwd);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        List<User> userList = userService.quireByAccountPassWord(user);
        //账号密码正确且只有一个用户
        if(userList.size() == 1){
            //账号密码正确，将用户信息存入session，用于后续用户相关操作
            session.setAttribute(BaseInfo.USER, userList.get(0));
            session.setAttribute("userInfo",buildUser(userList.get(0)));
            System.out.println(JSON.toJSONString( userList.get(0)));
            //查询公告，并放入model
            List<Announcement> announcementList = announcementService.quire(new Announcement());
            model.addAttribute("announcementList",announcementList);
            //根据用户类型返回对应页面，并查询基础信息
            switch (userList.get(0).getType()){
                case 2:
                    return "/v0.3/main_page";
                case 0:

                    return "/v0.3/main_page";
                case 1:
//                    StudentsInfo studentsInfo = new StudentsInfo();
//                    studentsInfo.setUser_id(userList.get(0).getUid());
//                    //查询基础信息并存入model
//                    model.addAttribute("studentClassDepartmentPo",studentsInfoService.jointQuire(studentsInfo).get(0));
                    return "/v0.3/main_page";
                default:
                    model.addAttribute("msg","用户类型不明确");
                    return "redirect:/index.jsp";
            }
        }else{
            model.addAttribute("msg", BaseInfo.FAIL);
            return "redirect:/index";
        }
    }

    @RequestMapping("/indexInfo")
    public String indexInfo(HttpSession session, Model model){
        User user = (User)session.getAttribute(BaseInfo.USER);
//        Object userInfo = userService.quireUserInfo(user);

        //查询公告，并放入model
        List<Announcement> announcementList = announcementService.quire(new Announcement());
        model.addAttribute("announcementList",announcementList);
        switch (user.getType()){
            case 0:
            case 1:
            case 2:
//                StudentClassDepartmentPo studentClassDepartmentPo = (StudentClassDepartmentPo)userInfo;
//                model.addAttribute("studentClassDepartmentPo",studentClassDepartmentPo);
                return "/v0.3/index";
            default:
                return "redirect:/index.jsp";
        }
    }


    @RequestMapping(value = "/reg",method = RequestMethod.POST)
    public String register(User user){
        System.out.println(JSON.toJSONString(user));
        try {
            String pwd = MD5Util.EncoderByMd5(user.getPassword());
            user.setPassword(pwd);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        int num = userService.insert(user);
        if(num>0){
            return "redirect:/index.jsp";
        }
        return "/v0.3/register";
    }

    private UserInfo buildUser(User user){
        UserInfo userInfo=new UserInfo();
        userInfo.setAccount(user.getAccount());
        userInfo.setUserType(UserEnums.fromCode(user.getType()).getDesc());
        userInfo.setUid(user.getUid()+"");
        if(user.getType()==2){
            userInfo.setAdmin(1);
        }else {
            userInfo.setAdmin(0);
        }
        return userInfo;
    }



}
