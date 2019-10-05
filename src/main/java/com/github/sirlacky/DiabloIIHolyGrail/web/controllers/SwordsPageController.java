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
@RequestMapping("/swords")
public class SwordsPageController {

    Logger logger = Logger.getLogger(SwordsPageController.class.getName());

    @GetMapping
    public String prepareSwordPage(ModelMap model) {
        List<Item> swordsList = getItems("swords");
        model.put("swords", swordsList);
        logger.info("Created swords page");
        return "items-swords-page";
    }
}
