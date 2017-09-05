package com.dao;

import com.pojo.Shopcar;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by root on 17-5-20.
 */
@Repository
public interface Addtocar {
    public void inserttocar(Shopcar shopcar);
    public List<Shopcar> showcar(Shopcar shopcar);
    public Shopcar checksame(Shopcar shopcar);
    public void updatecar(Shopcar shopcar);
    public void deletegoods(Shopcar shopcar);
    public int selectnumfromcar(Shopcar shopcar);
}
