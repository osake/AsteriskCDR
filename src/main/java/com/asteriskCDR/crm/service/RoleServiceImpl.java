package com.asteriskCDR.crm.service;

import com.asteriskCDR.crm.dao.RoleDAO;
import com.asteriskCDR.crm.entity.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by oregon on 28.01.2016.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDAO roleDAO;

    @Override
    @Transactional
    public Role getRole(int id) {
        return roleDAO.getRole(id);
    }
}
