package com.asteriskCDR.crm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by oregon on 02.02.2016.
 */
@Controller
@RequestMapping("/contractor")
public class ContactorController {

    @RequestMapping
    public String startLoginPage(){
        return "contractor";
    }

}
