package com.github.sirlacky.DiabloIIHolyGrail.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import static com.github.sirlacky.DiabloIIHolyGrail.domain.model.Item.getItems;


@Controller
public class MainpageController {

    @GetMapping("/main")
    public String mainPageController(){
        getItems("rings");
        return "main-page";
    }

}
