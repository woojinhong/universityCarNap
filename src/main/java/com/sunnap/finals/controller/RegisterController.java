package com.sunnap.finals.controller;


import com.sunnap.finals.dao.UserDao;
import com.sunnap.finals.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    UserDao userDao;


    @GetMapping("/add")
    public String register(){
        return "register";
    }

    @PostMapping("/save")
    public String save(UserDto userDto) throws Exception{


        System.out.println("userDto = " + userDto);
        userDao.insert(userDto);

        return "redirect:/";
    }
    }

