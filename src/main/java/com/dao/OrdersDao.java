package com.dao;

import com.pojo.Orders;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by root on 17-5-25.
 */
@Repository
public interface OrdersDao {

public void insertorder(Orders orders);
public List<Orders> ergodicorders(Orders orders);
public List<Orders> ergodicorder2(Orders orders);
public void removeorders(Orders orders);
}
