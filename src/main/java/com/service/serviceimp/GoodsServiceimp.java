package com.service.serviceimp;

import com.dao.Goodsearch;
import com.pojo.Goods;
import com.service.Goodservice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by root on 17-5-19.
 */
@Service
public class GoodsServiceimp implements Goodservice {

    @Resource
    private Goodsearch goodsearch;

    public List<Goods> selectgidbyname(Goods goods) {
        return goodsearch.selectgidbyname(goods) ;
    }
}
