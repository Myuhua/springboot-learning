package cc.yh.thymeleaf.view.mapper;

import cc.yh.thymeleaf.view.entity.Student;

import java.util.List;

public interface StudentMapper
{
    List<Student> selectList(Student student);

}
