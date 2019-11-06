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
@RequestMapping("/arcticgear")
public class ArcticSetPageController {

    Logger logger = Logger.getLogger(ArcticSetPageController.class.getName());

    @GetMapping
    public String prepareArcticSetPage(ModelMap model) {
        List<Item> arcticSetItems = getItems("arcticgear");
        model.put("arcticgear", arcticSetItems);
        logger.info("Created Arctic Gear Set Page");
        return "items-arcticset-page";
    }

}
