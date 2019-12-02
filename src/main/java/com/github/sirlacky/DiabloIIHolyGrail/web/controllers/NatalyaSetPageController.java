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
@RequestMapping("/natalyasodium")
public class NatalyaSetPageController {

    Logger logger = Logger.getLogger(NatalyaSetPageController.class.getName());

    @GetMapping
    public String prepareNatalyaSetPage(ModelMap model) {
        List<Item> natalyaSetItemList = getItems("natalyasodium");
        model.put("natalyasodium", natalyaSetItemList);
        logger.info("Created Natalyas Odium Set Page");
        return "items-natalyaset-page";
    }
}
