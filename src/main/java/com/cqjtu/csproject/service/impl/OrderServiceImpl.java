package com.cqjtu.csproject.service.impl;

import com.cqjtu.csproject.dao.OrderMapper;
import com.cqjtu.csproject.dao.model.Order;

import com.cqjtu.csproject.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public Order findByOId(String oId) {
        return orderMapper.findByOId(oId);
    }
}
