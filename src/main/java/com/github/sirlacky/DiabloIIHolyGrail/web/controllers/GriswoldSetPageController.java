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
@RequestMapping("/griswoldslegacy")
public class GriswoldSetPageController {

    Logger logger = Logger.getLogger(GriswoldSetPageController.class.getName());

    @GetMapping
    public String prepareGriswoldSetPage(ModelMap model) {
        List<Item> griswoldSetItemList = getItems("griswoldslegacy");
        model.put("griswoldslegacy", griswoldSetItemList);
        logger.info("Created Griswolds Legacy Set Page");
        return "items-griswoldset-page";
    }

}
