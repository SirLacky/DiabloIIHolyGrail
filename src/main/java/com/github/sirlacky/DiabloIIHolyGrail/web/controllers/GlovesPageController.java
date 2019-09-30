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
@RequestMapping("/gloves")
public class GlovesPageController {

    Logger logger = Logger.getLogger(GlovesPageController.class.getName());

    @GetMapping
    public String prepareGlovesPage(ModelMap model) {
        List<Item> glovesList = getItems("gloves");
        model.put("gloves", glovesList);
        logger.info("Created gloves page");
        return "items-gloves-page";
    }
}
