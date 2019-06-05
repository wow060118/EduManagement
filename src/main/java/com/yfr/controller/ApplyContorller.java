package com.yfr.controller;

import com.yfr.ResponsResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/apply")
public class ApplyContorller extends BaseController {

    @RequestMapping("applypro")
    @ResponseBody
    public ResponsResult alllyPro(){
        return inbound(null,"success");

    }
}
