package com.yfr.service;

import com.yfr.po.TeacherCourseClassPo;
import com.yfr.pojo.Course;
import com.yfr.pojo.TeachersCourse;

import java.util.List;

/**
 * @Author: SoFakeHuang
 * @Date: 2019/5/4 15:10
 * @Version 1.0
 */
public interface TeachersCourseService {
    Integer add(TeachersCourse teachersCourse);
    Integer deleteById(TeachersCourse teachersCourse);
    Integer update(TeachersCourse teachersCourse);
    List<TeachersCourse> quire(TeachersCourse teachersCourse);
    List<TeachersCourse> quireByClassId(Integer classId);
    List<TeacherCourseClassPo> jointQuire(TeachersCourse teachersCourse);
    List<TeacherCourseClassPo> courseListQuire(TeachersCourse teachersCourse, Course course);
}
