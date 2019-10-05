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
@RequestMapping("/sorceressitems")
public class SorceressPageController {

    Logger logger = Logger.getLogger(SorceressPageController.class.getName());

    @GetMapping
    public String prepareSorceressItemsPage(ModelMap model) {
        List<Item> sorceressItemsList = getItems("sorceress");
        model.put("sorceress", sorceressItemsList);
        logger.info("Created sorceress items page");
        return "items-sorceress-page";
    }
}
