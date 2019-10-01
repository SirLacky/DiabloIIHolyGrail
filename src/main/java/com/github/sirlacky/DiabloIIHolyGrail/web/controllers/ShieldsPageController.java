package com.github.sirlacky.DiabloIIHolyGrail.web.controllers;

import com.github.sirlacky.DiabloIIHolyGrail.domain.model.Item;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.logging.Logger;

import static com.github.sirlacky.DiabloIIHolyGrail.domain.model.Item.getItems;

@Controller
@RequestMapping("/shields")
public class ShieldsPageController {

    Logger logger = Logger.getLogger(ShieldsPageController.class.getName());

    @GetMapping
    public String prepareShieldsPage(ModelMap model) {
        List<Item> shieldsList = getItems("shields");
        model.put("shields", shieldsList);
        logger.info("Created shields page");
        return "items-shields-page";
    }
}
