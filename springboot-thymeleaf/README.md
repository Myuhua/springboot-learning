#项目说明
springboot-thymeleaf项目完成了springboot与thymeleaf模板引擎的整合。springboot建议用html来完成动态页面。springboot提供了大量模板引擎，包括freemaker、thymeleaf等。springboot推荐使用thymeleaf模板引擎来完成动态页面。
# thymeleaf说明
thymeleaf是可以用来完成动态页面模板引擎。[thymeleaf官方文档](https://www.thymeleaf.org/doc/tutorials/3.0/usingthymeleaf.html)
# 依赖引入
```
        <!--springboot-web web开发核心依赖-->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
        </dependency>

        <!--thymeleaf模板引擎整合 -->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-thymeleaf</artifactId>
        </dependency>
```
# 配置
核心配置
```
spring:
  thymeleaf:
    # 关闭thymeleaf缓存 开发时使用 否则没有实时画面
    cache: false
```

# 测试说明
启动服务后，访问http://localhost:8080/ ，成功则返回成功则返回![success页面](img/success.jpg)。


