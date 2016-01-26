package com.asteriskCDR.crm.controller;

import java.util.Map;

import com.asteriskCDR.crm.entity.Asterisk;
import com.asteriskCDR.crm.service.AsteriskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by christian on 25.01.2016.
 */

@Controller("/")
public class AsteriskController {

    @Autowired
    public AsteriskService asteriskService;

    @RequestMapping
    public String listAsterisk(Map<String, Object> map) {

        map.put("asterisk", new Asterisk());
        map.put("asteriskList", asteriskService.listAsterisk());
        return "index";
    }
}
