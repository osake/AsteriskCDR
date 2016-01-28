package com.asteriskCDR.crm.service;

import com.asteriskCDR.crm.entity.User;

/**
 * Created by oregon on 28.01.2016.
 */
public interface UserService {

    User getUser(String login);

}
