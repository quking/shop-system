package com.service.serviceimp;

import com.dao.Addcollection;
import com.pojo.Collections;
import com.service.CollectionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by root on 17-5-22.
 */
@Service
public class collectionServiceimp implements CollectionService {

    @Resource
    private Addcollection addcollection;

    public void addcollect(Collections collections) {
        addcollection.addcollect(collections);
    }

    public Collections selectsame(Collections collections) {
        return addcollection.selectsame(collections);
    }

    public void deletecollect(Collections collections) {
        addcollection.deletecollect(collections);
    }

    public List<Collections> ergodiccollect(Collections collections) {
        return addcollection.ergodiccollect(collections);
    }
}
