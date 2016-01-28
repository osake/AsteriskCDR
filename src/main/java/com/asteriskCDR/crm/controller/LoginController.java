package com.asteriskCDR.crm.controller;

import org.hibernate.annotations.ColumnTransformer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by oregon on 28.01.2016.
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping
    public String startLoginPage(){
        return "login";
    }

}
