package com.fc.base.csv.action;

import com.fc.base.csv.entity.complain;
import com.fc.base.csv.service.customerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/csv")
public class CustomerAction {
    @Autowired
    private customerService service;

    @RequestMapping("/Complain")
    @ResponseBody
    public List<complain> show() {
        System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        return service.show();
    }
}
