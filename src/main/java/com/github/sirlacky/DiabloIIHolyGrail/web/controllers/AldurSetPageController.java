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
@RequestMapping("/aldurswatchtower")
public class AldurSetPageController {

    Logger logger = Logger.getLogger(AldurSetPageController.class.getName());

    @GetMapping
    public String prepareAldurSetPage(ModelMap model) {
        List<Item> aldurSetItemList = getItems("aldurswatchtower");
        model.put("aldurswatchtower", aldurSetItemList);
        logger.info("Created Aldur's Watchtower Set Page");
        return "items-aldurset-page";
    }

}
