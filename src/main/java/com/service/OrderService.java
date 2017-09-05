package com.service;

import com.pojo.Orders;

import java.util.List;

/**
 * Created by root on 17-5-25.
 */
public interface OrderService {

    public void insertorder(Orders orders);
    public List<Orders> ergodicorders(Orders orders);
    public List<Orders> ergodicorder2(Orders orders);
    public void removeorders(Orders orders);
}
