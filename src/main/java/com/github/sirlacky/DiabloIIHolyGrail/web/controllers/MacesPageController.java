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
@RequestMapping("/maces")
public class MacesPageController {

    Logger logger = Logger.getLogger(MacesPageController.class.getName());

    @GetMapping
    public String prepareMacesPage(ModelMap model){
        List<Item> macesItemList = getItems("maces");
        model.put("maces",macesItemList);
        logger.info("Created maces page");
        return "items-maces-page";
    }
}
