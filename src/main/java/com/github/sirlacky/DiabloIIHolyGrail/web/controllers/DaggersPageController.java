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
@RequestMapping("/daggers")
public class DaggersPageController {

    Logger logger = Logger.getLogger(DaggersPageController.class.getName());

    @GetMapping
    public String prepareDaggersPage(ModelMap model) {
        List<Item> daggersList = getItems("daggers");
        model.put("daggers", daggersList);
        logger.info("Created daggers page");
        return "items-daggers-page";
    }
}
