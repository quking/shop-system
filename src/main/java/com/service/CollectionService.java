package com.service;

import com.pojo.Collections;

import java.util.List;

/**
 * Created by root on 17-5-22.
 */

public interface CollectionService {

    public void addcollect(Collections collections);
    public Collections selectsame(Collections collections);
    public void deletecollect(Collections collections);
    public List<Collections> ergodiccollect(Collections collections);
}
