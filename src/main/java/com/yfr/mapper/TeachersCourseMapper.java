package com.yfr.mapper;

import com.yfr.po.TeacherCourseClassPo;
import com.yfr.pojo.Course;
import com.yfr.pojo.TeachersCourse;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeachersCourseMapper {
    Integer add(TeachersCourse teachersCourse);
    Integer deleteById(TeachersCourse teachersCourse);
    Integer update(TeachersCourse teachersCourse);
    List<TeachersCourse> quire(TeachersCourse teachersCourse);
    List<TeacherCourseClassPo> jointQuire(TeachersCourse teachersCourse);
    List<TeacherCourseClassPo> courseListQuire(@Param("teachersCourse") TeachersCourse teachersCourse,@Param("course") Course course);
}