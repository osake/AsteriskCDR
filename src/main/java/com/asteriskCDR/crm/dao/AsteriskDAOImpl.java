package com.asteriskCDR.crm.dao;

import com.asteriskCDR.crm.entity.Asterisk;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by christian on 25.01.2016.
 */
@Repository
public class AsteriskDAOImpl implements AsteriskDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public List listAsterisk() {
        Session session = this.sessionFactory.openSession();
        List asteriskList = session.createCriteria(Asterisk.class).list();
        if(equals(asteriskList)){
            System.out.println(asteriskList);
        }
        return asteriskList;
    }
}
