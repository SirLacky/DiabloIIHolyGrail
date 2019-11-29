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
@RequestMapping("/immortalking")
public class ImmortalSetPageController {

    Logger logger = Logger.getLogger(ImmortalSetPageController.class.getName());

    @GetMapping
    public String prepareImmortalSetPage(ModelMap model) {
        List<Item> immortalSetItemList = getItems("immortalking");
        model.put("immortalking", immortalSetItemList);
        logger.info("Created Immortal King Set Page");
        return "items-immortalset-page";
    }
}
