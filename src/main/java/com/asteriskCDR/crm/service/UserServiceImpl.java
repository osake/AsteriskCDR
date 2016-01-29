package com.asteriskCDR.crm.service;

import com.asteriskCDR.crm.dao.UserDAO;
import com.asteriskCDR.crm.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by oregon on 28.01.2016.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    public User getUser(String login) {return userDAO.getUser(login);}
}
