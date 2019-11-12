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
@RequestMapping("/hsarusdefense")
public class HsarusSetPageController {

    Logger logger = Logger.getLogger(HsarusSetPageController.class.getName());

    @GetMapping
    public String prepareHsarusSetPage(ModelMap model) {
        List<Item> hsarusSetItemList = getItems("hsarusdefense");
        model.put("hsarusdefense", hsarusSetItemList);
        logger.info("Created Hsarus Defense Set Page");
        return "items-hsarusset-page";
    }
}
