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
@RequestMapping("/boots")
public class BootsPageController {

    Logger logger = Logger.getLogger(BootsPageController.class.getName());

    @GetMapping
    public String prepareBootsPage(ModelMap model) {
        List<Item> bootsList = getItems("boots");
        logger.info("Created boots page");
        model.put("boots", bootsList);
        return "items-boots-page";
    }
}
