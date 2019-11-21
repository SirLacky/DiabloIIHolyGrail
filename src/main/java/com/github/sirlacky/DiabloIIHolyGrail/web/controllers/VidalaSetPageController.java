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
@RequestMapping("/vidalasrig")
public class VidalaSetPageController {

    Logger logger = Logger.getLogger(VidalaSetPageController.class.getName());

    @GetMapping
    public String prepareVidalaSetPage(ModelMap model) {
        List<Item> vidalaSetItemList = getItems("vidalasrig");
        model.put("vidalasrig", vidalaSetItemList);
        logger.info("Created Vidala's Rig Set Page");
        return "items-vidalaset-page";
    }

}
