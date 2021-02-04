package com.yuhua.aop.common.config;

import com.yuhua.aop.common.interceptor.SourceAccessInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 配置类把拦截器添加到拦截器链中
 * 本类在项目启动时就开始加载了
 *
 * @author yuhua
 * @date 2021/2/3
 */
@Configuration
public class SourceAccessInterceptorConfigurer implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //配置ip:port后的url地址都需要被拦截
        registry.addInterceptor(new SourceAccessInterceptor()).addPathPatterns("/**");
    }
}
