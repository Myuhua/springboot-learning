package cc.yh.aop.controller;

import java.lang.reflect.Field;

public class JavaReflectDemo {

    private String field1;
    private String field2;
    private String field3;

    public void JavaReflectDemo(){
        System.out.println("进来了");
    }

    public void JavaReflectDemo(String field1){
        this.field1=field1;
    }

    public void JavaReflectDemo(String field1,String field2){
        this.field2=field2;
    }

    public static void main(String[] args) {
        JavaReflectDemo javaReflectDemo=new JavaReflectDemo();
        Class<? extends JavaReflectDemo> aClass = javaReflectDemo.getClass();
        Field[] declaredFields = aClass.getDeclaredFields();
        for (Field field:declaredFields) {
            System.out.println("field="+field.getName());

        }

    }
}
