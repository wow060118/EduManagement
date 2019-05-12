package cn.hhj.mapper;

import cn.hhj.pojo.Department;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartmentMapper {
    Integer add(Department department);
    Integer deleteById(Department department);
    Integer update(Department department);
    List<Department> quire(Department department);
}