package com.dao;

import com.pojo.Collections;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by root on 17-5-22.
 */
@Repository
public interface Addcollection {
    public void addcollect(Collections collections);
    public Collections selectsame(Collections collections);
    public void deletecollect(Collections collections);
    public List<Collections> ergodiccollect(Collections collections);
}
