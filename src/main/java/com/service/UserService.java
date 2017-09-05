package com.service;

import com.pojo.Users;

import java.util.List;

/**
 * Created by root on 17-5-12.
 */
public interface UserService {
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
