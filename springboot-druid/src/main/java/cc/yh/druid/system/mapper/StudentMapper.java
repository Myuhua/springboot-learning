package cc.yh.druid.system.mapper;

import cc.yh.druid.system.entity.Student;

import java.util.List;

public interface StudentMapper
{
    List<Student> selectList(Student student);

}
