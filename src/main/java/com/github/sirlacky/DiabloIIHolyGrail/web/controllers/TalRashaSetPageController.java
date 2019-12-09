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
@RequestMapping("/talrashaswrappings")
public class TalRashaSetPageController {

    Logger logger = Logger.getLogger(TalRashaSetPageController.class.getName());

    @GetMapping
    public String prepareTalRashasSetPage(ModelMap model) {
        List<Item> talRashSetItemList = getItems("talrashaswrappings");
        model.put("talrashaswrappings", talRashSetItemList);
        logger.info("Created Tal Rashas Wrappings Set Page");
        return "items-talrashset-page";
    }
}
