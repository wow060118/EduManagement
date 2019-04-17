import cn.hhj.mapper.StudentsInfoMapper;
import cn.hhj.pojo.StudentsInfo;
import cn.hhj.service.StudentsInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Author: SoFakeHuang
 * @Date: 2019/4/16 9:23
 * @Version 1.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class TestStudentsInfo {
    @Autowired
    StudentsInfoMapper studentsInfoMapper;
    @Autowired
    StudentsInfoService studentsInfoService;

    @Test
    public void add(){
        StudentsInfo studentsInfo = new StudentsInfo();
        studentsInfo.setName("王五");
        studentsInfo.setStudentNumber("1620502159");
        studentsInfo.setUserId(1);
        studentsInfo.setSex("男");
        studentsInfoMapper.add(studentsInfo);
    }

    @Test
    public void deleteById(){
        StudentsInfo studentsInfo = new StudentsInfo();
        studentsInfo.setId(1);
        studentsInfoMapper.deleteById(studentsInfo);
    }

    @Test
    public void update(){
        StudentsInfo studentsInfo = new StudentsInfo();
        studentsInfo.setId(2);
        studentsInfo.setName("王");
        studentsInfo.setStudentNumber("1620502151");
        studentsInfo.setUserId(1);
        studentsInfo.setSex("男");
        studentsInfoMapper.update(studentsInfo);
    }

    @Test
    public void quire(){
        StudentsInfo studentsInfo = new StudentsInfo();
        studentsInfo.setId(2);

        System.out.println(studentsInfoMapper.quire(studentsInfo).get(0).getName());
    }
}
