import com.yfr.mapper.UserMapper;
import com.yfr.pojo.User;
import com.yfr.service.UserService;
import com.yfr.util.MD5Util;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class TestUser {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserService userService;
    @Test
    public void testQuire(){
        User user = new User();
        user.setAccount("123");
        user.setPassword("123");
        List<User> list = userMapper.quireByAccountPassWord(user);
        System.out.println(list.get(0).getAccount()+" "+list.get(0).getPassword());
    }
    @Test
    public void testServiceQuire(){
        User user = new User();
        user.setAccount("songshuang");
        try {
            user.setPassword(MD5Util.EncoderByMd5("060118"));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        List<User> list = userService.quireByAccountPassWord(user);
        System.out.println("userService:"+list.get(0).getAccount()+" "+list.get(0).getPassword());
    }
}
