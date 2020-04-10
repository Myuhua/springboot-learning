package com.yuhua.springbootmybaitsplusdruid.system.service;

import com.yuhua.springbootmybaitsplusdruid.system.entity.Student;

import java.util.List;

public interface StudentService
{
    List<Student> selectList(Student student);

}
