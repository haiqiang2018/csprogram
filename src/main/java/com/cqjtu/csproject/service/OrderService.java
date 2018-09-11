package com.cqjtu.csproject.service;

import com.cqjtu.csproject.dao.model.Order;
import com.cqjtu.csproject.dao.model.Users;

public interface OrderService {
    /**
     * 测试连接数据库
     * @param oId
     * @return
     */
    Order findByOId(String oId);

}
