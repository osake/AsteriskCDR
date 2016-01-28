package com.asteriskCDR.crm.service;

import com.asteriskCDR.crm.entity.User;
import org.springframework.stereotype.Service;

/**
 * Created by oregon on 28.01.2016.
 */
@Service
public class UserServiceImpl implements UserService {


    @Override
    public User getUser(String login) {
        User user = new User();
        user.setLogin(login);
        user.setPasswrd("7110eda4d09e062aa5e4a390b0a572ac0d2c0220");
        return user;
    }
}
