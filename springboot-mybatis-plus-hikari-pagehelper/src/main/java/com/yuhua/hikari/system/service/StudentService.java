package com.yuhua.hikari.system.service;

import com.yuhua.hikari.system.entity.Student;

import java.util.List;

public interface StudentService
{
    List<Student> selectList(Student student);

}
