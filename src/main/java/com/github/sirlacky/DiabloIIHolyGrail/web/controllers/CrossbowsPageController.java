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
@RequestMapping("/crossbows")
public class CrossbowsPageController {

    Logger logger = Logger.getLogger(CrossbowsPageController.class.getName());

    @GetMapping
    public String prepareCrossbowsPage(ModelMap model){
        List<Item>crossbowList = getItems("crossbows");
        model.put("crossbows",crossbowList);
        logger.info("Created crossbows page");
        return "items-crossbows-page";
    }

}
