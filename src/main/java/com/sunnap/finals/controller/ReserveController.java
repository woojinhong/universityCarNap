package com.sunnap.finals.controller;

import com.sunnap.finals.dao.ReserveDaoImpl;
import com.sunnap.finals.dao.UserDao;
import com.sunnap.finals.domain.ReserveDto;
import com.sunnap.finals.domain.SearchDto;
import com.sunnap.finals.service.ReserveServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
    @Autowired
    ReserveServiceImpl reserveService;
        @PostMapping("/reserve")
        public String reserve(String searchDtoName, Model m) throws Exception{


            System.out.println("searchDtoName = " + searchDtoName);

            List<ReserveDto> reserveDesc = reserveService.reserverDesc(searchDtoName);
            System.out.println("reserveDesc = " + reserveDesc);
            m.addAttribute("searchDtoName",searchDtoName);
            m.addAttribute("reserveDesc",reserveDesc);
            return "reservePage";
        }
}
