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
@RequestMapping("/heavensbreathren")
public class HeavenSetPageController {

    Logger logger = Logger.getLogger(HeavenSetPageController.class.getName());

    @GetMapping
    public String prepareHeavenSetPage(ModelMap model) {
        List<Item> heavenSetItemList = getItems("heavensbreathren");
        model.put("heavensbreathren", heavenSetItemList);
        logger.info("Created Heavens Breathren Set Page");
        return "items-heavenset-page";
    }

}
