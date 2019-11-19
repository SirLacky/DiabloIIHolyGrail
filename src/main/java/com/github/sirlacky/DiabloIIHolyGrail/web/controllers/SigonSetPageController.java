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
@RequestMapping("/sigonscompletesteel")
public class SigonSetPageController {

    Logger logger = Logger.getLogger(SigonSetPageController.class.getName());

    @GetMapping
    public String preparingSigonSetPage(ModelMap model) {
        List<Item> sigonSetItemList = getItems("sigonscompletesteel");
        model.put("sigonscompletesteel", sigonSetItemList);
        logger.info("Created Sigon's Complete Steel Page");
        return "items-sigonset-page";
    }
}
