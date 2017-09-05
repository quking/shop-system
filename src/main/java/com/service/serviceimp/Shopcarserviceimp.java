package com.service.serviceimp;

import com.dao.Addtocar;
import com.pojo.Shopcar;
import com.service.AddTocar;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by root on 17-5-20.
 */
@Service
public class Shopcarserviceimp implements AddTocar {

    @Resource
    private Addtocar addtocar;

    public void inserttocar(Shopcar shopcar) {
        addtocar.inserttocar(shopcar);
    }

    public List<Shopcar> showcar(Shopcar shopcar) {
        return addtocar.showcar(shopcar);
    }

    public Shopcar checksame(Shopcar shopcar) {
        return addtocar.checksame(shopcar);
    }

    public void updatecar(Shopcar shopcar) {
        addtocar.updatecar(shopcar);
    }

    public void deletegoods(Shopcar shopcar) {
        addtocar.deletegoods(shopcar);
    }

    public int selectnumfromcar(Shopcar shopcar) {
        return addtocar.selectnumfromcar(shopcar);
    }
}
