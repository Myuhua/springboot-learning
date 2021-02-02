package com.yuhua.thymeleaf.view.mapper;

import com.yuhua.thymeleaf.view.entity.Student;

import java.util.List;

public interface StudentMapper
{
    List<Student> selectList(Student student);

}
