package cc.yh.aop.controller;

import cc.yh.aop.common.annotation.MyLog;
import cc.yh.aop.common.annotation.LoginRequired;
import cc.yh.aop.common.annotation.MyField;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.lang.reflect.Field;

@RestController
public class IndexController {

    /**
     * 测试注解+拦截器参照
     *
     * @author yuhua
     * @date 2021/2/3
     */
    @GetMapping("/sourceA")
    public String sourceA() {
        return "你正在访问sourceA资源";
    }

    /**
     * 测试注解+拦截器
     * 被LoginRequired注解的方法在访问的时候会被拦截，具体的拦截逻辑需要在拦截器中实现，且需要配置拦截器
     *
     * @author yuhua
     * @date 2021/2/3
     */
    @GetMapping("/sourceB")
    @LoginRequired
    public String sourceB() {
        return "你正在访问sourceB资源";
    }

    /**
     * 测试AOP切面
     *
     * @param name
     * @return
     * @author yuhua
     * @date 2021/2/3
     */
    @MyLog
    @GetMapping("/sourceC/{name}")
    public String sourceC(@PathVariable("name") String name) {
        return "你正在访问sourceC资源";
    }

    @MyField(description = "用户名", length = 12)
    private String username;

    /**
     * 测试MyField自定义注解
     *
     * @author yuhua
     * @date 2021/2/3
     */
    @GetMapping("/testMyField")
    public void testMyField() {
        // 获取类模板
        Class c = IndexController.class;
        // 获取所有字段
        for (Field f : c.getDeclaredFields()) {
            // 判断这个字段是否有MyField注解
            if (f.isAnnotationPresent(MyField.class)) {
                MyField annotation = f.getAnnotation(MyField.class);
                System.out.println("字段:[" + f.getName() + "], 描述:[" + annotation.description() + "], 长度:[" + annotation.length() + "]");
            }
        }
    }



}
