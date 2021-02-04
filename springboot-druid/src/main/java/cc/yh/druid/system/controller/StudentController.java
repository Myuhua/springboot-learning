package cc.yh.druid.system.controller;


import cc.yh.druid.system.service.StudentService;
import cc.yh.druid.system.entity.Student;
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