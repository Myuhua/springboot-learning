package cc.yh.aop.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 自定义MyField注解类
 *
 * ElementType:用于标识注解用在哪儿
 * Retention：用来表示该注解的生命周期
 *
 * @author yuhua
 * @date 2021/2/3
 */
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface MyField {
    String description();

    int length();
}
