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
@RequestMapping("/belts")
public class BeltsPageController {

    Logger logger = Logger.getLogger(BeltsPageController.class.getName());

    @GetMapping
    public String prepareBeltsPage(ModelMap model) {
        List<Item> beltsList = getItems("belts");
        model.put("belts", beltsList);
        logger.info("Create belts page");
        return "items-belts-page";
    }
}
