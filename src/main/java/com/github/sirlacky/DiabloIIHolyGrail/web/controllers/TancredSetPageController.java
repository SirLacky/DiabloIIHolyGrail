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
@RequestMapping("/tancredsbattlegear")
public class TancredSetPageController {

    Logger logger = Logger.getLogger(TancredSetPageController.class.getName());

    @GetMapping
    public String prepareTancredSetPage(ModelMap model) {
        List<Item> tancresSetItemList = getItems("tancredsbattlegear");
        model.put("tancredsbattlegear", tancresSetItemList);
        logger.info("Created Tancreds Battlegear Set Page");
        return "items-tancredset-page";
    }
}
