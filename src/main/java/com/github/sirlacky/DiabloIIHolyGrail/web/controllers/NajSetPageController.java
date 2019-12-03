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
@RequestMapping("/najsancientvestige")
public class NajSetPageController {

    Logger logger = Logger.getLogger(NajSetPageController.class.getName());

    @GetMapping
    public String najSetPage(ModelMap model) {
        List<Item> najSetItemList = getItems("najsancientvestige");
        model.put("najsancientvestige", najSetItemList);
        logger.info("Created Najs Ancient Vestige Set Page");
        return "items-najset-page";
    }
}
