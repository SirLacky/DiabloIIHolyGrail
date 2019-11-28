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
@RequestMapping("/hwaninsmajesty")
public class HwaninSetPageController {

    Logger logger = Logger.getLogger(HwaninSetPageController.class.getName());

    @GetMapping
    public String prepareHwaninSetPage(ModelMap model) {
        List<Item> hwaninSetItemList = getItems("hwaninsmajesty");
        model.put("hwaninsmajesty", hwaninSetItemList);
        logger.info("Created Hwanins Majesty Set Page");
        return "items-hwaninset-page";
    }

}
