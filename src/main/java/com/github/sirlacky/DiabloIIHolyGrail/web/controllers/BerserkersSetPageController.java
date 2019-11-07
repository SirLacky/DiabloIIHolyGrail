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
@RequestMapping("/berserkersarsenal")
public class BerserkersSetPageController {

    Logger logger = Logger.getLogger(BerserkersSetPageController.class.getName());

    @GetMapping
    public String prepareBerserkersSetPage(ModelMap model) {
        List<Item> berserkersSetItemList = getItems("berserkersarsenal");
        model.put("berserkersarsenal", berserkersSetItemList);
        logger.info("Created Berserkers Arsenal Set Page");
        return "items-berserkerset-page";
    }
}
