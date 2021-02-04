package cc.yh.thymeleaf;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value = "com.yuhua.**.mapper")
public class HikariApplication {
    public static void main(String[] args) {
        SpringApplication.run(HikariApplication.class, args);
    }

}
