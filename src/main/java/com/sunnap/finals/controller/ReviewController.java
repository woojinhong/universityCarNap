package com.sunnap.finals.controller;

import com.sunnap.finals.domain.ReviewDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/review")
public class ReviewController {
    @PostMapping("/review")
    public String submitReview(@RequestParam(name = "starRating") Integer starRating) {
        // ReviewDto에 대한 처리 (예: 저장)
//        reviewService.saveReview(reviewDto);
        System.out.println("starRating = " + starRating);
//        System.out.println("name = " + reviewDto.getName());
//        System.out.println("email = " + reviewDto.getEmail());


        return "redirect:/reserve/reserve"; // 리다이렉트할 페이지 지정
    }
}
