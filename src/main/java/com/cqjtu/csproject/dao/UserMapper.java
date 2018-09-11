package com.cqjtu.csproject.dao;


import com.cqjtu.csproject.dao.model.Users;
import org.apache.ibatis.annotations.Param;


public interface UserMapper {

    Users findByName(String uName);

    Users userLogin(@Param("userEmil") String userEmil,
                    @Param("passWords") String passWords);
    int insert(Users user);

    int userEnroll(@Param("uPhone")String uPhone,
                   @Param("userEmil")String userEmil,
                   @Param("uName")String uName,
                   @Param("uPassWord")String uPassWord1);
}