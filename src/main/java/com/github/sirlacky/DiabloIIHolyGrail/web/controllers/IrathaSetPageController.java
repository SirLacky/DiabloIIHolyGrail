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
@RequestMapping("/irathasfinery")
public class IrathaSetPageController {

    Logger logger = Logger.getLogger(IrathaSetPageController.class.getName());

    @GetMapping
    public String prepareIrathasSetPage(ModelMap model) {
        List<Item> irathaSetItemList = getItems("irathasfinery");
        model.put("irathasfinery", irathaSetItemList);
        logger.info("Created Irathas Finery Set Page");
        return "items-irathaset-page";
    }

}
