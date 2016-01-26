package com.asteriskCDR.crm.service;

import com.asteriskCDR.crm.dao.AsteriskDAO;
import com.asteriskCDR.crm.entity.Asterisk;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by christian on 25.01.2016.
 */

@Service
public class AsteriskServiceImpl implements AsteriskService {

    @Autowired
    public AsteriskDAO asteriskDAO;

    @Transactional
    public List<Asterisk> listAsterisk() {
        return asteriskDAO.listAsterisk();
    }
}
