package com.yfr.controller;

import com.alibaba.fastjson.JSON;
import com.yfr.ResponsResult;
import com.yfr.enmus.StatusEnums;
import com.yfr.po.ApplyInfoPo;
import com.yfr.pojo.ApplyFileInfo;
import com.yfr.pojo.ApplyInfo;
import com.yfr.service.impl.ApplyServiceImpl;
import com.yfr.service.impl.ProServiceImpl;
import com.yfr.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;

@Controller
@RequestMapping("/apply")
public class ApplyContorller extends BaseController {

    String path = "F:\\apache-tomcat-9.0.0.M22-windows-x64\\apache-tomcat-9.0.0.M22\\webapps\\ROOT\\savefile\\";
//    String path = "/home/apache-tomcat-9.0.14/webapps/ROOT/savefile/";

    @Autowired
    private ApplyServiceImpl applyService;

    @Autowired
    private ProServiceImpl proService;

    @RequestMapping("/applypro")
    @ResponseBody
    public ResponsResult applyPro(@RequestBody ApplyInfoPo applyInfo) {
        System.out.println(JSON.toJSONString(applyInfo));
        int insert = applyService.insert(applyInfo);
        if (insert > 0) {
            int num = proService.updateProStatus(Integer.parseInt(applyInfo.getPid()), applyInfo.getProtype(), StatusEnums.APPLY.getCode());
            if (num > 0) {
                return inbound(null, "success");
            }
        }
        return failHandler("fail");

    }

    @RequestMapping("/applyFile")
    public String applyPro(@RequestParam("protype") int protype,
                           @RequestParam("pid") int pid,
                           @RequestParam("title") String title,
                           @RequestParam("postnum") String postnum,
                           @RequestParam("file") MultipartFile file) {
        ApplyFileInfo applyFileInfo = new ApplyFileInfo();
        applyFileInfo.setProType(protype);
        applyFileInfo.setPid(pid);
        applyFileInfo.setTitle(title);
        applyFileInfo.setPostNum(postnum);
        InputStream fileis = null;
        try {
            fileis = file.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();

        }
        FileUtil.savePic(fileis, file.getOriginalFilename());
        applyFileInfo.setFilePath(path + file.getOriginalFilename());
        applyFileInfo.setFileName(file.getOriginalFilename());
        int num = applyService.insertApplyFile(applyFileInfo);
        if (num > 0) {
            int n = proService.updateProStatus(pid, protype, StatusEnums.POST.getCode());
            if (n > 0) {
                return "/v0.3/under_item_show";
            }
        }
        return "/v0.3/apply_pro";
    }


    @RequestMapping("/applyOK")
    @ResponseBody
    public ResponsResult applyOK(@RequestBody ApplyInfoPo applyInfo) {

        int num = proService.updateProStatus(Integer.parseInt(applyInfo.getPid()), applyInfo.getProtype(), StatusEnums.OK.getCode());
        if (num > 0) {
            return inbound(null, "success");
        }
        return failHandler("fail");

    }



}
