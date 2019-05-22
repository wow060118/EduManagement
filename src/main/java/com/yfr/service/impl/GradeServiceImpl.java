package com.yfr.service.impl;

import com.yfr.mapper.GradeMapper;
import com.yfr.po.GradeStudentsTeacherCoursePo;
import com.yfr.pojo.Grade;
import com.yfr.pojo.TeachersCourse;
import com.yfr.service.GradeService;
import com.yfr.service.TeachersCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: SoFakeHuang
 * @Date: 2019/5/7 23:34
 * @Version 1.0
 */
@Service("gradeService")
public class GradeServiceImpl implements GradeService {

    @Autowired
    GradeMapper gradeMapper;

    @Autowired
    TeachersCourseService teachersCourseService;

    public Integer add(Grade grade) {
        return gradeMapper.add(grade);
    }

    public Integer deleteById(Grade grade) {
        return gradeMapper.deleteById(grade);
    }

    public Integer update(Grade grade) {
        return gradeMapper.update(grade);
    }

    public Integer addElective(Grade grade) {
        if(!gradeMapper.quire(grade).isEmpty()){
            return -3;
        }
        TeachersCourse teachersCourse = new TeachersCourse();
        teachersCourse.setId(grade.getTeachers_course_id());
        List<TeachersCourse> list = teachersCourseService.quire(teachersCourse);
        if(list.isEmpty())
            return -1;
        if(list.get(0).getFull()==1)
            return -2;
        return add(grade);
    }

    public List<Grade> quire(Grade grade) {
        return gradeMapper.quire(grade);
    }

    public List<GradeStudentsTeacherCoursePo> jointQuire(Grade grade, TeachersCourse teachersCourse) {
        return gradeMapper.jointQuire(grade,teachersCourse);
    }
}
