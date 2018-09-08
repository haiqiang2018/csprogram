package com.cqjtu;

import com.cqjtu.csproject.dao.UserMapper;
import com.cqjtu.csproject.dao.model.Users;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MapperApp {
    public static void main(String [] args) {
        String resource = "MyBatisCfg.xml"; //1.加载全局配置文件.xml
        InputStream is=null;
        try {
            //2.构建SQL Session
            is= Resources.getResourceAsStream(resource);
            SqlSessionFactory ssf=new SqlSessionFactoryBuilder().build(is);
            SqlSession ss=ssf.openSession();
            //增删查改
            UserMapper um=ss.getMapper(UserMapper.class);
            Users user=um.findByUName("Bernie");
            System.out.println(user);
            /*//增
            Users u1=new Users();
            u1.setuName("王五");
            u1.setuPassWord("ppp");


            um.insert(u1);
            ss.commit();
            //改
           Users u2=new Users();
            u2.setUserId("6");
            u2.setuName("张三");
            u2.setuPassWord("123");
            um.update(u2);
            ss.commit();
            //删
            um.deleteByUId(2);

            ss.commit();*/


        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
