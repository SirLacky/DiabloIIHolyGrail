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
@RequestMapping("/milabregasregalia")
public class MilabregaSetPageController {

    Logger logger = Logger.getLogger(MilabregaSetPageController.class.getName());

    @GetMapping
    public String prepareMilabregaSetPage(ModelMap model) {
        List<Item> milabregaSetItemList = getItems("milabregasregalia");
        model.put("milabregasregalia", milabregaSetItemList);
        logger.info("Created Milabrega's Regalia Item Page");
        return "items-milabregaset-page";
    }
}
