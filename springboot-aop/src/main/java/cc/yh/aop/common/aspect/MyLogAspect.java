package cc.yh.aop.common.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * 日志切面类，访问有@MyLog标志的方法生效
 * Aspect注解：表明这是一个切面类
 *
 * @author yuhua
 * @date 2021/2/3
 */
@Aspect
@Component
public class MyLogAspect {

    /**
     * PointCut表示这是一个切点，@annotation表示这个切点切到一个注解上，后面带该注解的全类名
     * 切面最主要的就是切点，所有的故事都围绕切点发生
     * logPointCut()代表切点名称
     */
    @Pointcut("@annotation(cc.yh.aop.common.annotation.MyLog)")
    public void logPointCut() {
    }


    /**
     * 环绕通知
     * 既可以在目标方法之前织入增强动作，也可以在执行目标方法之后织入增强动作；
     * 可以决定目标方法在什么时候执行，如何执行，甚至可以完全阻止目标目标方法的执行；
     * 可以改变执行目标方法的参数值，也可以改变执行目标方法之后的返回值； 当需要改变目标方法的返回值时，只能使用Around方法；
     *
     * @param joinPoint
     */
    @Around("logPointCut()")
    public void logAround(ProceedingJoinPoint joinPoint) {
        // 获取方法名称
        String methodName = joinPoint.getSignature().getName();
        // 获取入参
        Object[] param = joinPoint.getArgs();

        StringBuilder sb = new StringBuilder();
        for (Object o : param) {
            sb.append(o + "; ");
        }
        System.out.println("进入[" + methodName + "]方法,参数为:" + sb.toString());

        // 继续执行方法
        try {
            joinPoint.proceed();
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        System.out.println(methodName + "方法执行结束");

    }
}
