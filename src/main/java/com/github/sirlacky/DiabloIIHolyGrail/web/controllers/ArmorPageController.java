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
@RequestMapping("/armor")
public class ArmorPageController {

    Logger logger = Logger.getLogger(ArmorPageController.class.getName());

    @GetMapping
    public String prepareArmorPage(ModelMap model) {
        List<Item> armorList = getItems("armor");
        model.put("armor", armorList);
        logger.info("Created armor page");
        return "items-armor-page";
    }
}
