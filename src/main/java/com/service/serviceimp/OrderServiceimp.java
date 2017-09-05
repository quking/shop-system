package com.service.serviceimp;

import com.dao.OrdersDao;
import com.pojo.Orders;
import com.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by root on 17-5-25.
 */
@Service
public class OrderServiceimp implements OrderService {

    @Resource
    private OrdersDao ordersDao;

    public void insertorder(Orders orders) {
    ordersDao.insertorder(orders);    
    }

    public List<Orders> ergodicorders(Orders orders) {
        return ordersDao.ergodicorders(orders);
    }

    public List<Orders> ergodicorder2(Orders orders) {
        return ordersDao.ergodicorder2(orders);
    }

    public void removeorders(Orders orders) {
        ordersDao.removeorders(orders);
    }
}
