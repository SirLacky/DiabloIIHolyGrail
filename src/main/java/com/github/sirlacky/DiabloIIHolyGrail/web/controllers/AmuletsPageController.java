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
@RequestMapping("/amulets")
public class AmuletsPageController {

    Logger logger = Logger.getLogger(HeadgearPageController.class.getName());

    @GetMapping
    public String prepareAmuletsPage(ModelMap model) {
        List<Item> amuletsList = getItems("amulets");
        model.put("amulets", amuletsList);
        logger.info("Created amulets page");
        return "items-amulets-page";
    }

}
