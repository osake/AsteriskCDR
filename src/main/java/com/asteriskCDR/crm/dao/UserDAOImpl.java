package com.asteriskCDR.crm.dao;

import com.asteriskCDR.crm.entity.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by oregon on 28.01.2016.
 */
@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    SessionFactory sessionFactory;

    private Session getCurrentSession() {return sessionFactory.getCurrentSession();}

    @Override
    public User getUser(String login) {

        List<User> userList = new ArrayList<User>();
        Query query = getCurrentSession().createQuery("from User u where u.login = :login");
        query.setParameter("login", login);
        userList = query.list();

        if (userList.size() > 0)
            return userList.get(0);
        else
            return null;
    }
}
