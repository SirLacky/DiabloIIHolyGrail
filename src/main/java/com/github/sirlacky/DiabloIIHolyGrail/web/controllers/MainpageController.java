package com.github.sirlacky.DiabloIIHolyGrail.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainpageController {

    @GetMapping("/main")
    public String mainPageController(){
        return "main-page";
    }
}
