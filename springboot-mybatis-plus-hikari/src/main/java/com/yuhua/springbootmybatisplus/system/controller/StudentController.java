package com.yuhua.springbootmybatisplus.system.controller;

import com.yuhua.springbootmybatisplus.system.entity.Student;
import com.yuhua.springbootmybatisplus.system.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/student")
public class StudentController
{
    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public List list(Student student)
    {
        return studentService.selectList(student);
    }

}