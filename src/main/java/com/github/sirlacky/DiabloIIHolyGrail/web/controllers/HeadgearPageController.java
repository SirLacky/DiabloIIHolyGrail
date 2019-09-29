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
@RequestMapping("/headgear")
public class HeadgearPageController {

    Logger logger = Logger.getLogger(HeadgearPageController.class.getName());

    @GetMapping
    public String prepareHeadgearPage(ModelMap model) {
        List<Item> headgearList = getItems("headgear");
        model.put("headgear", headgearList);
        logger.info("Created headgear page");
        return "items-headgear-page";
    }

}
