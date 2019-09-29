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
@RequestMapping("/charms")
public class CharmsPageController {

    Logger logger = Logger.getLogger(CharmsPageController.class.getName());

    @GetMapping
    public String prepareCharmsPage(ModelMap model) {
        List<Item> charmsList = getItems("charms");
        model.put("charms",charmsList);
        logger.info("Created charms page");
        return "item-charms-page";
    }
}
