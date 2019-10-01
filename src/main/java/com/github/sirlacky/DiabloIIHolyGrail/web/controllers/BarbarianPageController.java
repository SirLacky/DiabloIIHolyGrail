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
@RequestMapping("/barbarianitems")
public class BarbarianPageController {

    Logger logger = Logger.getLogger(BarbarianPageController.class.getName());

    @GetMapping
    public String prepareBarbarianItemsPage(ModelMap model) {
        List<Item> barbarianItemsList = getItems("barbarian");
        model.put("barbarian", barbarianItemsList);
        return "items-barbarian-page";
    }

}
