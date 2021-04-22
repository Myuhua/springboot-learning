package cc.yh.security.common.config;

import cc.yh.security.common.login.service.impl.LoginUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity

/**
 * 自定义认证处理配置类
 * @author yuhua
 * @date 2021/3/24
 */
public class SecurityConfigurer extends WebSecurityConfigurerAdapter {
    /**
     * 注入自定义认证类
     */
    @Autowired
    private LoginUserDetailsService loginUserDetailsService;

    /**
     * 注入用户认证接口
     */
    @Autowired
    private AuthenticationProvider authenticationProvider;


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //设置认证方式
        auth.authenticationProvider(authenticationProvider);
    }

    @Override
    /**
     * 设置了登录页面，而且登录任何页面的人都可以访问，然后设置了登录失败地址，也设置了注销请求，注销请求也是任何人都可以访问的
     * .permitAll表示该请求任何人都可以访问
     * .anyRequest.authenticed()表示其他请求都必须要有权限认证
     */
    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests().anyRequest().authenticated().and().httpBasic().and().csrf().disable();
        http.authorizeRequests()
                .antMatchers("/login", "/css/**", "/js/**", "/img/*").permitAll();
    }

    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        //不要隐藏用户未找到异常
        provider.setHideUserNotFoundExceptions(false);
        //后面通过重写configure添加自定义认证方式
        provider.setUserDetailsService(loginUserDetailsService);
        //设置密码加密程序认证
        provider.setPasswordEncoder(passwordEncoder());
        return provider;
    }

    @Bean
    /**
     * BCryptPasswordEncoder是spring security提供的PasswordEncoder接口，是实现类用来创建密码的加密程序，避免就昂明文存储到数据库
     * @author yuhua
     * @date 2021/2/5
     */
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    public static void main(String[] args) {
        String admin = new BCryptPasswordEncoder().encode("admin");
        System.out.println(admin);
    }
}
