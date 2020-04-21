package com.yuhua.springboot.helloworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
//same as @Configuration @EnableAutoConfiguration @ComponentScan
//不自动配置数据源
@SpringBootApplication(exclude= {DataSourceAutoConfiguration.class})
public class HelloworldApplication {
    @RequestMapping("/")
    String home() {
        return "Hello World!";
    }
    public static void main(String[] args) {
        SpringApplication.run(HelloworldApplication.class, args);
    }

}
