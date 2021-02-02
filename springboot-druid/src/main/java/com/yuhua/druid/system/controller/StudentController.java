package com.yuhua.druid.system.controller;


import com.yuhua.druid.system.entity.Student;
import com.yuhua.druid.system.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public List list(Student student) {
        List list=studentService.selectList(student);
        return list;
    }

}