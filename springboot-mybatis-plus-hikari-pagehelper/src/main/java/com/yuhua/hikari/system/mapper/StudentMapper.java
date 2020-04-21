package com.yuhua.hikari.system.mapper;

import com.yuhua.hikari.system.entity.Student;

import java.util.List;

public interface StudentMapper
{
    List<Student> selectList(Student student);

}
