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
@RequestMapping("/wands")
public class WandsPageController {

    Logger logger = Logger.getLogger(WandsPageController.class.getName());

    @GetMapping
    public String prepareWandsPage(ModelMap model) {
        List<Item> wandsList = getItems("wands");
        model.put("wands", wandsList);
        logger.info("Created wands page");
        return "items-wands-page";
    }

}
