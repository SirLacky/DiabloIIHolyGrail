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
@RequestMapping("/bulkathoschildren")
public class BulKathosSetPageController {

    Logger logger = Logger.getLogger(BulKathosSetPageController.class.getName());

    @GetMapping
    public String prepareBulKathosSetPage(ModelMap model) {
        List<Item> bulKathosSetItemList = getItems("bulkathoschildren");
        model.put("bulkathoschildren", bulKathosSetItemList);
        logger.info("Created Bul-Kathos Children Set Page");
        return "items-bulkathoset-page";
    }
}
