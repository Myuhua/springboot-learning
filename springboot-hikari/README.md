#项目说明
前提：mybatis-plus集成。
springboot-hiraki项目完成了springboot与hiraki数据库连接池和mybatis-plus持久化框架的整合。
# hikari说明
hikari是业内认为的性能最好，速度最快的数据库连接池
# 依赖引入说明
springboot2.0以上默认集成了hikari，所以无需再引入依赖
# hikari配置
```
# 数据库配置
spring:
  datasource:
  type: com.zaxxer.hikari.HikariDataSource
  driverClassName: com.mysql.jdbc.Driver
  url: jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8&useSSL=false
  username: root
  password: root
  # Hikari 连接池配置
  # 最小空闲连接数量
  hikari:
    minimum-idle: 5
    # 空闲连接存活最大时间，默认600000（10分钟）
    idle-timeout: 180000
    # 连接池最大连接数，默认是10
    maximum-pool-size: 10
    # 此属性控制从池返回的连接的默认自动提交行为,默认值：true
    auto-commit: true
    # 连接池名称
    pool-name: MyHikariCP
    # 此属性控制池中连接的最长生命周期，值0表示无限生命周期，默认1800000即30分钟
    max-lifetime: 1800000
    # 数据库连接超时时间,默认30秒，即30000
    connection-timeout: 30000
    connection-test-query: SELECT 1
```
#测试说明
springboot整合完Hiraki后，需要对整合结果进行验证，这儿采取web页面访问获取数据的方式，同时需要整合mybatis-plus框架

**依赖包**

```
       <!--springboot-web开发核心依赖，已在父工程引入-->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
        </dependency>

        <!--mysql驱动 以mysql作为数据库，需要引入mysql连接驱动-->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <scope>runtime</scope>
        </dependency>

        <!--springboot 整合mybatis-plus https://baomidou.com/guide/-->
        <dependency>
            <groupId>com.baomidou</groupId>
            <artifactId>mybatis-plus-boot-starter</artifactId>
            <version>${maybatis-plus.version}</version>
        </dependency>
```
**配置**

```
#在application配置文件中配置
mybatis-plus:
  # 实体类扫描路径
  type-aliases-package: com.yuhua.**.entity
  # xml 扫描路径
  mapper-locations: classpath:mapper/*/*.xml
  #下面可以不配使用默认值
  configuration:
    jdbc-type-for-null: null
  global-config:
    # 关闭 mybatis-plus的 banner
    banner: false
```

启动服务后，访问http://localhost:8081/student/list ，成功则返回如图img/success.png的内容。