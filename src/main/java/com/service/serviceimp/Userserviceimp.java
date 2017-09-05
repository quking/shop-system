package com.service.serviceimp;

import com.dao.UserRegister;
import com.pojo.Users;
import com.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by root on 17-5-12.
 */
@Service
public class Userserviceimp implements UserService {

    @Resource
    private UserRegister userRegister;

    public void userregister(Users users) {
        userRegister.userregister(users);
    }

    public Users loginb(Users users) {
        return userRegister.loginb(users);
    }

    public Users loginb2(Users users) {
        return userRegister.loginb2(users);
    }

    public Users selectidbtpsw(Users users) {
        return userRegister.selectidbtpsw(users);
    }

    public void updatehalf(Users users) {
        userRegister.updatehalf(users);
    }

    public void updatepsw(Users users) {
        userRegister.updatepsw(users);
    }

    public void updateemail(Users users) {
        userRegister.updateemail(users);
    }

    public void realnameconfirm(Users users) {
        userRegister.realnameconfirm(users);
    }

    public void addressmana(Users users) {
        userRegister.addressmana(users);
    }

    public void recievermsg(Users users) {
        userRegister.recievermsg(users);
    }

    public Users selectall(Users users) {
        return userRegister.selectall(users);
    }

    public List<Users> checkmailregister(Users users) {
        return userRegister.checkmailregister(users);
    }

    public void findbackpsw(Users users) {
        userRegister.findbackpsw(users);
    }


}
