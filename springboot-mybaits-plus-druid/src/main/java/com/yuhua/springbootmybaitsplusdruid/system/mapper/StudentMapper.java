package com.yuhua.springbootmybaitsplusdruid.system.mapper;

import com.yuhua.springbootmybaitsplusdruid.system.entity.Student;

import java.util.List;

public interface StudentMapper
{
    List<Student> selectList(Student student);

}
