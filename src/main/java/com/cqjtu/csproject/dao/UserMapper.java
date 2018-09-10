package com.cqjtu.csproject.dao;


import com.cqjtu.csproject.dao.model.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    Users findById(String userId);

    Users userLogin(@Param("userId") String userId,
                    @Param("passWords") String passWords);
}