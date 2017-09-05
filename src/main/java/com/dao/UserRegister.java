package com.dao;

import com.pojo.Users;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by root on 17-5-12.
 */
@Repository
public interface UserRegister {

    public void userregister(Users users);
    public Users loginb(Users users);
    public Users loginb2(Users users);
    public Users selectidbtpsw(Users users);
    public void updatehalf(Users users);
    public void updatepsw(Users users);
    public void updateemail(Users users);
    public void realnameconfirm(Users users);
    public void addressmana(Users users);
    public void recievermsg(Users users);
    public Users selectall(Users users);
    public List<Users> checkmailregister(Users users);
    public void findbackpsw(Users users);
}

