package com.yuhua.springbootmybaitsplusdruid.system.service.impl;

import com.yuhua.springbootmybaitsplusdruid.system.entity.Student;
import com.yuhua.springbootmybaitsplusdruid.system.mapper.StudentMapper;
import com.yuhua.springbootmybaitsplusdruid.system.service.StudentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("studentService")
@Primary
public class StudentServiceImpl implements StudentService {
    private static final Logger log = LoggerFactory.getLogger(StudentServiceImpl.class);

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> selectList(Student student) {
        return studentMapper.selectList(student);
    }

}