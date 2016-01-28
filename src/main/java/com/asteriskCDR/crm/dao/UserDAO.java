package com.asteriskCDR.crm.dao;

import com.asteriskCDR.crm.entity.User;

/**
 * Created by oregon on 28.01.2016.
 */
public interface UserDAO {

    public User getUser(String login);

}
