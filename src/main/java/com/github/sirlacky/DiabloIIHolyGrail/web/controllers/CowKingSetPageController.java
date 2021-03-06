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
@RequestMapping("/cowkingsleathers")
public class CowKingSetPageController {

    Logger logger = Logger.getLogger(CowKingSetPageController.class.getName());

    @GetMapping
    public String prepareCowKingSetPage(ModelMap model) {
        List<Item> cowKingItemSetList = getItems("cowkingsleathers");
        model.put("cowkingsleathers", cowKingItemSetList);
        logger.info("Created Cow Kings Leathers Set Page");
        return "items-cowkingset-page";
    }
}
