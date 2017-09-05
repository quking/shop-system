package com.dao;

import com.pojo.Goods;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by root on 17-5-19.
 */
@Repository
public interface Goodsearch {

    public List<Goods> selectgidbyname(Goods goods);

}
