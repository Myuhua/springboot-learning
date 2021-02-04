package cc.yh.redis.controller;

import cc.yh.redis.common.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RedisTestController {
    @Autowired
    private RedisUtil redisUtil;
    @GetMapping("/redis")
    public String test() {
        redisUtil.set("yh", "yuhua");
        return redisUtil.get("yh").toString();

    }
}
