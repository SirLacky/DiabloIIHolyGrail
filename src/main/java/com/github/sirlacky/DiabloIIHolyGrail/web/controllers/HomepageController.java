package com.github.sirlacky.DiabloIIHolyGrail.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomepageController {

    @GetMapping("/")
    public String mainPageController(){
        return "home-page";
    }

    @GetMapping("/homepage")
    public String homepageController(){
        return "home-page";
    }

}
