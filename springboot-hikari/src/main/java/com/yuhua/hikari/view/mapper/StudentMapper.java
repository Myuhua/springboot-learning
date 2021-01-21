package com.yuhua.hikari.view.mapper;

import com.yuhua.hikari.view.entity.Student;

import java.util.List;

public interface StudentMapper
{
    List<Student> selectList(Student student);

}
