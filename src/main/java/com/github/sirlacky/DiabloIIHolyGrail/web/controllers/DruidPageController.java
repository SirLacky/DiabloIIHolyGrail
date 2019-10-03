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
@RequestMapping("/druiditems")
public class DruidPageController {

    Logger logger = Logger.getLogger(DruidPageController.class.getName());

    @GetMapping
    public String prepareDruidItemsPage(ModelMap model) {
        List<Item> druidItemList = getItems("druid");
        model.put("druid", druidItemList);
        logger.info("Created druid page");
        return "items-druid-page";
    }

}
