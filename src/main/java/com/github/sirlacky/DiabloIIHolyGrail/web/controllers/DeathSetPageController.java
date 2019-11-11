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
@RequestMapping("/deathsdisguise")
public class DeathSetPageController {

    Logger logger = Logger.getLogger(DeathSetPageController.class.getName());

    @GetMapping
    public String prepareDeathSetPage(ModelMap model) {
        List<Item> deathsSetItemList = getItems("deathsdisguise");
        model.put("deathsdisguise", deathsSetItemList);
        logger.info("Created Deaths Disguise Set Page");
        return "items-deathset-page";
    }

}
