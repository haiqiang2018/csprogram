package com.cqjtu.csproject.dao;

import com.cqjtu.csproject.dao.model.Order;


public interface OrderMapper {
    Order findByOId(String oId);

    /*Order userLogin(@Param("userEmil") String userEmil,
                    @Param("passWords") String passWords);*/

}
