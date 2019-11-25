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
@RequestMapping("/thedisciple")
public class DiscipleSetPageController {

    Logger logger = Logger.getLogger(DiscipleSetPageController.class.getName());

    @GetMapping
    public String prepareDiscipleSetPage(ModelMap model){
        List<Item> discipleSetItemList = getItems("thedisciple");
        model.put("thedisciple",discipleSetItemList);
        logger.info("Created The Disciple Set Page");
        return "items-discipleset-page";
    }
}
