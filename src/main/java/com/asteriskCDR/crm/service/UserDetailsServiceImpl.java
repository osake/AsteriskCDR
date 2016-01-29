package com.asteriskCDR.crm.service;

/**
 * Created by oregon on 28.01.2016.
 */
import com.asteriskCDR.crm.dao.UserDAO;
import com.asteriskCDR.crm.entity.User;
import com.asteriskCDR.crm.entity.enus.UserRoleEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional(readOnly = true)
public class UserDetailsServiceImpl implements  UserDetailsService {

    @Autowired
    private UserDAO userDAO;

    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {

        User domainUser = userDAO.getUser(login);

        Set<GrantedAuthority> roles = new HashSet();
        roles.add(new SimpleGrantedAuthority("ADMIN"));

        UserDetails userDetails = new org.springframework.security.core.userdetails.User(
                domainUser.getLogin(),
                domainUser.getPassword(),true, true,true, true,
                roles
        );

        return userDetails;

    }
}