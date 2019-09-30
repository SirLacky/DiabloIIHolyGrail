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
@RequestMapping("throwing-weapons")
public class ThrowingWeaponsPageController {

    Logger logger = Logger.getLogger(ThrowingWeaponsPageController.class.getName());

    @GetMapping
    public String prepareThrowingWeaponsPage(ModelMap model) {
        List<Item> throwingweaponsList = getItems("throwing weapons");
        model.put("throwingweapons", throwingweaponsList);
        logger.info("Created throwing weapons page");
        return "items-throwing-weapons-page";
    }
}
