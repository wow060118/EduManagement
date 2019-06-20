package com.yfr.controller;

import com.alibaba.fastjson.JSON;
import com.yfr.ResponsResult;
import com.yfr.po.CreateUnderInfoPo;
import com.yfr.po.ShowListPo;
import com.yfr.pojo.UnderCreateInfo;
import com.yfr.service.impl.UnderCreateServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

@RequestMapping("/pro")
@Controller
public class ProController extends BaseController{

    @Autowired
    private UnderCreateServiceImpl underCreateService;

    @RequestMapping("/query/underlist")
    public String queryUnderList( HttpSession session){
        List<ShowListPo> underCreateInfos = underCreateService.queryUnderList();
        session.setAttribute("underList",underCreateInfos);
        return "/v0.3/under_create_pro";
    }


    @RequestMapping("/query/underInfo")
    public String queryUnderInfo(HttpServletRequest request,
                                 HttpSession session,
                                 @RequestParam int ucid){
        System.out.println("queryUnderInfo:ucid ="+ucid);
        CreateUnderInfoPo createUnderInfoPo = underCreateService.queryUnderInfo(ucid);

        String pic= createUnderInfoPo.getPicFile();
        pic=pic.substring(pic.lastIndexOf("\\"));
        System.out.println("pic=   \\savefile"+File.separator+pic);
        session.setAttribute("pic","\\savefile"+File.separator+pic);

        String ogg= createUnderInfoPo.getVideoOgg();
        ogg=ogg.substring(ogg.lastIndexOf("\\"));
        System.out.println("ogg=   \\savefile"+File.separator+ogg);
        session.setAttribute("ogg","\\savefile"+File.separator+ogg);

        String video= createUnderInfoPo.getVideo();
        video=video.substring(video.lastIndexOf("\\"));
        System.out.println("video=  \\savefile"+File.separator+video);
        session.setAttribute("video","\\savefile"+File.separator+video);

        String file= createUnderInfoPo.getFile();
        file=file.substring(file.lastIndexOf("\\"));
        System.out.println("file=  \\savefile"+File.separator+file);
        session.setAttribute("file","\\savefile"+File.separator+file);
        session.setAttribute("createUnderInfoPo",createUnderInfoPo);



        return "/v0.3/under_item_show";
    }

    @RequestMapping("/del/under")
    public String delUnderInfo(
            HttpSession session,
            @RequestParam int ucid){
        System.out.println("del:ucid ="+ucid);
        int num = underCreateService.delUnderInfo(ucid);
        if(num<=0){
            return "/v0.3/under_create_pro";
        }
        List<ShowListPo> showListPos = underCreateService.queryUnderList();
        session.setAttribute("underList", showListPos);
        return "/v0.3/under_create_pro";
    }

    @RequestMapping("/query/like")
    public String queryLike(HttpSession session,
                            @RequestParam String title){
        System.out.println(title);
        List<ShowListPo> showListPos = underCreateService.selectTitleLike(title);
        session.setAttribute("underList", showListPos);
        return "redirect:/v0.3/under_create_pro.jsp";
    }

    @RequestMapping("/getfile")
    public void getPic(HttpSession session,HttpServletResponse resp,@RequestParam("ucid") int ucid,@RequestParam("type")int type){
        System.out.println("getfile:ucid  = "+ucid +"   type="+type);
        CreateUnderInfoPo createUnderInfoPo = underCreateService.queryUnderInfo(ucid);
        File f=null;
        f = new File(createUnderInfoPo.getPicFile());
        FileInputStream fis = null;
        ByteArrayOutputStream bos = null;
        try {
            fis = new FileInputStream(f);
            bos = new ByteArrayOutputStream();

            byte[] b = new byte[1024];

            int n;

            while ((n = fis.read(b)) != -1) {
                bos.write(b, 0, n);
            }
            byte buffer[] = bos.toByteArray();

            ServletOutputStream sos=resp.getOutputStream();
            sos.write(buffer);
            sos.flush();
            sos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



}
