package cc.yh.devtools.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;


/**
 * index页面访问
 * 注意：注解要使用@Controller，若使用@RestController，返回的是index字符串，非index页面
 *
 * @author yuhua
 * @date 2021/1/21
 */
@Controller
public class ViewController {
    @RequestMapping("/")
    public String hello(HttpServletRequest request, @RequestParam(value = "name", defaultValue = "springboot-devtools") String name) {
        request.setAttribute("name", name);
        return "index";
    }
}
