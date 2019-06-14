package com.yfr.controller;


import com.yfr.redis.RedisUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@RequestMapping("/redis")
@Controller
public class RedisTestController {
    Logger logger= LoggerFactory.getLogger(RedisTestController.class);
    @Resource
    private RedisUtil redisUtil;

    @RequestMapping("/text/redis")
    @ResponseBody
    public void test(){
        try {
            redisUtil.set("test", "test1", 1);
        }catch (Exception e){
            logger.error("set to redis error",e);
        }
        String test = redisUtil.get("test", 1);
        logger.info("test:"+test);
    }

}
