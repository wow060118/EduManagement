package cn.hhj.mapper;

import cn.hhj.po.StudentClassDepartmentPo;
import cn.hhj.pojo.StudentsInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentsInfoMapper {
    Integer add(StudentsInfo studentsInfo);
    Integer deleteById(StudentsInfo studentsInfo);
    Integer update(StudentsInfo studentsInfo);
    List<StudentsInfo> quire(StudentsInfo studentsInfo);
    List<StudentClassDepartmentPo> jointQuire(StudentsInfo studentsInfo);
}