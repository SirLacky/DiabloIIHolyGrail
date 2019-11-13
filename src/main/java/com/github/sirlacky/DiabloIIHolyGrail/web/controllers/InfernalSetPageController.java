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
@RequestMapping("/infernaltools")
public class InfernalSetPageController {

    Logger logger = Logger.getLogger(InfernalSetPageController.class.getName());

    @GetMapping
    public String prepareInfernalSetPage(ModelMap model) {
        List<Item> infernalSetItemList = getItems("infernaltools");
        model.put("infernaltools", infernalSetItemList);
        logger.info("Created Infernal Tools Set Page");
        return "items-infernalset-page";
    }
}
