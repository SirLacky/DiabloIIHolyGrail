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
@RequestMapping("/scepters")
public class SceptersPageController {

    Logger logger = Logger.getLogger(SceptersPageController.class.getName());

    @GetMapping
    public String prepareSceptersPage(ModelMap model){
        List<Item> sceptersList = getItems("scepters");
        model.put("scepters",sceptersList);
        logger.info("Created scepters page");
        return "items-scepters-page";
    }
}
