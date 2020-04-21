package com.yuhua.druid.system.mapper;

import com.yuhua.druid.system.entity.Student;

import java.util.List;

public interface StudentMapper
{
    List<Student> selectList(Student student);

}
