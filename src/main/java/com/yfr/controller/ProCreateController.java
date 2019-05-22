package com.yfr.controller;

import com.alibaba.fastjson.JSON;
import com.yfr.ResponsResult;
import com.yfr.po.CreateUnderInfoPo;
import com.yfr.pojo.UnderCreateInfo;
import com.yfr.service.impl.UnderCreateServiceImpl;
import com.yfr.util.FileUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

@Controller
@RequestMapping("/procreate")
public class ProCreateController extends BaseController {

    Logger logger = LoggerFactory.getLogger(ProCreateController.class);
    String path = "E:\\saveFile\\";

    @Autowired
    private UnderCreateServiceImpl underCreateService;

    @RequestMapping("/create/under")
    @ResponseBody
    public ResponsResult underCreatePro(@RequestParam("uid") int uid,
                                        @RequestParam("title") String title,
                                        @RequestParam("teamName") String teamName,
                                        @RequestParam("school") String school,
                                        @RequestParam("email") String email,
                                        @RequestParam("phone") String phone,
                                        @RequestParam("student") String student,
                                        @RequestParam("teacher") String teacher,
                                        @RequestParam("money") String money,
                                        @RequestParam("picFile") MultipartFile picFile,
                                        @RequestParam("file") MultipartFile file,
                                        @RequestParam("video") MultipartFile video) {
        UnderCreateInfo underCreateInfo = new UnderCreateInfo();
        underCreateInfo.setCreateTime(new Date());
        underCreateInfo.setTitle(title);
        underCreateInfo.setTeamName(teamName);
        underCreateInfo.setSchool(school);
        underCreateInfo.setEmail(email);
        underCreateInfo.setPhone(phone);
        underCreateInfo.setStudent(student);
        underCreateInfo.setTeacher(teacher);
        underCreateInfo.setMoney(Long.parseLong(money));

        InputStream picis = null;
        InputStream fileis = null;
        InputStream videois = null;
        try {
            picis = picFile.getInputStream();
            fileis = file.getInputStream();
            videois = video.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
        FileUtil.savePic(picis, picFile.getOriginalFilename());
        FileUtil.savePic(fileis, file.getOriginalFilename());
        FileUtil.savePic(videois, video.getOriginalFilename());
        underCreateInfo.setFilePath(path + file.getOriginalFilename());
        underCreateInfo.setVideo(path + video.getOriginalFilename());
        underCreateInfo.setPic(path + picFile.getOriginalFilename());
        underCreateInfo.setFileName(file.getOriginalFilename());
        underCreateInfo.setStatus(0);
        underCreateInfo.setUid(uid);
        System.out.println(JSON.toJSONString(underCreateInfo));
        int num = underCreateService.insert(underCreateInfo);
        if (num > 0) {
            return inbound(null, "success");
        } else {
            return failHandler("error");
        }
    }

}
