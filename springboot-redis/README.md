# 项目说明
本项目实现了springboot与redis的整合，并提供了redis常用工具类。[Spring Data Redis](https://spring.io/projects/spring-data-redis)文档
# redis说明
Redis 是一个开源（BSD许可）的，内存中的数据结构存储系统，它可以用作数据库、缓存和消息中间件。[redis官网](http://www.redis.cn)
# 依赖引入
核心依赖
```
               <dependency>
                   <groupId>org.springframework.boot</groupId>
                   <artifactId>spring-boot-starter-data-redis</artifactId>
               </dependency>
```
完整项目依赖请参见[pom.xml文件](pom.xml)
# 配置
核心配置
```
spring:
  redis:
    # Redis数据库索引（默认为 0）
    database: 0
    # Redis服务器地址
    host: ip
    # Redis服务器连接端口
    port: 6379
    # Redis 密码
    password: pwd
    timeout: 100

```
完整项目配置请参见[application.yml](application.yml)与[application-redis.yml](application-redis.yml)  

# 测试说明
启动服务后，访问http://localhost:8080/redis ，成功则返回成功则返回![success页面](img/success.jpg)。


