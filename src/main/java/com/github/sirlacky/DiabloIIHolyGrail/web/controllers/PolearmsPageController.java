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
@RequestMapping("/polearms")
public class PolearmsPageController {

    Logger logger = Logger.getLogger(PolearmsPageController.class.getName());

    @GetMapping
    public String preparePolearmsPage(ModelMap model) {
        List<Item> polearmsList = getItems("polearms");
        model.put("polearms", polearmsList);
        logger.info("Created polearms page");
        return "items-polearms-page";
    }
}
