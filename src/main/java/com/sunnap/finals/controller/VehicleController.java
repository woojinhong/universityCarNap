package com.sunnap.finals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reserve")
public class VehicleController {
    @GetMapping("/reserves")
    public String reserve(){
        return "reservePage";
    }

//    @RequestMapping("/login")
//    public String login(){
//        return "login";
//    }

}

