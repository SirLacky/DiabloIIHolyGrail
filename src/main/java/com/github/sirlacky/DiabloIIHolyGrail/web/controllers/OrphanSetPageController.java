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
@RequestMapping("/orphanscall")
public class OrphanSetPageController {

    Logger logger = Logger.getLogger(OrphanSetPageController.class.getName());

    @GetMapping
    public String prepareOrphanSetPage(ModelMap model) {
        List<Item> orphanSetItemList = getItems("orphanscall");
        model.put("orphanscall", orphanSetItemList);
        logger.info("Created Orphans Call Set Page");
        return "items-orphanset-page";
    }
}
