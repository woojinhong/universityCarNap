package com.sunnap.finals.controller;

import com.sunnap.finals.domain.SearchDto;
import com.sunnap.finals.service.SearchServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(("/search"))
public class SearchController {

    @Autowired
    SearchServiceImpl searchService;
    @GetMapping("/option")
    public String searchByOption(String option, String category, Model m) throws Exception{


        List<SearchDto> options= searchService.searchOption(category,option);
        m.addAttribute("options",options);

        int rowCount = options.size(); // options 목록의 길이를 얻습니다.
        m.addAttribute("size",rowCount);
        System.out.println("옵션 목록의 행 수: " + rowCount);
        return "vehicle";
    }


}
