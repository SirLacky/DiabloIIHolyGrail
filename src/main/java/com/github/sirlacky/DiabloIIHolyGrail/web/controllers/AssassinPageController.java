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
@RequestMapping("/assassinitems")
public class AssassinPageController {

    Logger logger = Logger.getLogger(AssassinPageController.class.getName());

    @GetMapping
    public String prepareAssassinItemsPage(ModelMap model){
        List<Item> assassinItemList = getItems("assassin");
        model.put("assassin",assassinItemList);
        logger.info("Created assassin item list");
        return "items-assassin-page";
    }
}
