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
@RequestMapping("/isenhartsarmory")
public class IsenhartSetPageController {

    Logger logger = Logger.getLogger(IsenhartSetPageController.class.getName());

    @GetMapping
    public String prepareIsenhartSetPage(ModelMap model) {
        List<Item> isenhartSetItemList = getItems("isenhartsarmory");
        model.put("isenhartsarmory", isenhartSetItemList);
        logger.info("Created Isenhart's Armory Set Page");
        return "items-isenhartset-page";
    }
}
