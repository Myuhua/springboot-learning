package cc.yh.druid.system.service;

import cc.yh.druid.system.entity.Student;

import java.util.List;

public interface StudentService
{
    List<Student> selectList(Student student);

}
