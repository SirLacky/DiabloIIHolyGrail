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
@RequestMapping("/bows")
public class BowsPageController {

    Logger logger = Logger.getLogger(BowsPageController.class.getName());

    @GetMapping
    public String prepareBowsPage(ModelMap model) {
        List<Item> bowsList = getItems("bows");
        model.put("bows", bowsList);
        logger.info("Created bows page");
        return "items-bows-page";
    }
}
