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
@RequestMapping("/amazonitems")
public class AmazonPageController {

    Logger logger = Logger.getLogger(AmazonPageController.class.getName());

    @GetMapping
    public String prepareAmazonItemsPage(ModelMap model) {
        List<Item> amazonsItemList = getItems("amazon");
        model.put("amazon", amazonsItemList);
        logger.info("Created amazon items page");
        return "items-amazon-page";
    }
}
