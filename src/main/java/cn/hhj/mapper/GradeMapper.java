package cn.hhj.mapper;

import cn.hhj.po.GradeStudentsTeacherCoursePo;
import cn.hhj.pojo.Grade;
import cn.hhj.pojo.TeachersCourse;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GradeMapper {
    Integer add(Grade grade);
    Integer deleteById(Grade grade);
    Integer update(Grade grade);
    List<Grade> quire(Grade grade);
    List<GradeStudentsTeacherCoursePo> jointQuire(@Param("grade")Grade grade, @Param("teachersCourse")TeachersCourse teachersCourse);
}