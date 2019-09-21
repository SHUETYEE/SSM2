package cn.itcast.utils;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.junit.Test;
import sun.security.provider.MD5;

/**
 * @author lijingyu
 * @date 2019/9/20 18:25
 */
public class Md5Demo {
    @Test
    public void test(){
        String password="admin";
        String salt = "abcd";
        int times=2;
        Md5Hash hash = new Md5Hash(password,salt,times);
        System.out.println(hash.toString());
    }
}
