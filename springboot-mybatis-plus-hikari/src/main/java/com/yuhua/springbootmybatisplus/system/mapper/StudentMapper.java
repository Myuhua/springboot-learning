package com.yuhua.springbootmybatisplus.system.mapper;

import com.yuhua.springbootmybatisplus.system.entity.Student;

import java.util.List;

public interface StudentMapper
{
    List<Student> selectList(Student student);

}
