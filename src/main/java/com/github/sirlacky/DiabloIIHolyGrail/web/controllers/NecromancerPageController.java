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
@RequestMapping("/necromanceritems")
public class NecromancerPageController {

    Logger logger = Logger.getLogger(NecromancerPageController.class.getName());

    @GetMapping
    public String prepareNecromancerItemsPage(ModelMap model) {
        List<Item> necromancerItemsList = getItems("necromancer");
        model.put("necromancer", necromancerItemsList);
        logger.info("Created necromancer items page");
        return "items-necromancer-page";
    }
}
