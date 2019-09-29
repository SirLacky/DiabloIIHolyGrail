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
@RequestMapping("/jewels")
public class JewelsPageController {

    Logger logger = Logger.getLogger(JewelsPageController.class.getName());

    @GetMapping
    public String prepareJewelsPage(ModelMap model) {
        List<Item> jewelsList = getItems("jewels");
        model.put("jewels", jewelsList);
        logger.info("Created jewels page");
        return "items-jewels-page";
    }

}
