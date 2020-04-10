package com.yuhua.springbootmybatisplus.system.service;

import com.yuhua.springbootmybatisplus.system.entity.Student;

import java.util.List;

public interface StudentService
{
    List<Student> selectList(Student student);

}
