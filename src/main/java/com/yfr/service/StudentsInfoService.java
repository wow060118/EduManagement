package com.yfr.service;

import com.yfr.po.StudentClassDepartmentPo;
import com.yfr.pojo.StudentsInfo;

import java.util.List;

/**
 * @Author: SoFakeHuang
 * @Date: 2019/4/12 23:26
 * @Version 1.0
 */
public interface StudentsInfoService {
    public Integer add(StudentsInfo studentsInfo);
    public Integer deleteById(StudentsInfo studentsInfo);
    public Integer update(StudentsInfo studentsInfo);
    public List<StudentsInfo> quire(StudentsInfo studentsInfo);
    public List<StudentClassDepartmentPo> jointQuire(StudentsInfo studentsInfo);
}
