package com.yfr.controller;


import com.yfr.ResponsResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/apply")
public class ApplyController extends BaseController {

    @RequestMapping("/create")
    @ResponseBody
    public ResponsResult applyCreate(@RequestParam("userId")int userId, @RequestParam("userId")int underProId){
        ResponsResult<String> result=new ResponsResult<String>();
        result.setCode(200);
        result.setMsg("申请成功");
        result.setData("userid");
        return result;
    }

}
