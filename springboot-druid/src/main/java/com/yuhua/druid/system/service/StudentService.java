package com.yuhua.druid.system.service;

import com.yuhua.druid.system.entity.Student;

import java.util.List;

public interface StudentService
{
    List<Student> selectList(Student student);

}
