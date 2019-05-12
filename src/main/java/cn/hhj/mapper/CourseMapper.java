package cn.hhj.mapper;

import cn.hhj.pojo.Course;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseMapper {
    Integer add(Course course);
    Integer deleteById(Course course);
    Integer update(Course course);
    List<Course> quire(Course course);
}