package com.yuhua.springbootmybaitsplusdruid;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
@MapperScan(value = "com.yuhua.**.mapper")
public class SpringbootMybaitsPlusDruidApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootMybaitsPlusDruidApplication.class, args);
    }

}
