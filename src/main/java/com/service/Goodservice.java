package com.service;

import com.pojo.Goods;

import java.util.List;

/**
 * Created by root on 17-5-19.
 */
public interface Goodservice {

    public List<Goods> selectgidbyname(Goods goods);
}
