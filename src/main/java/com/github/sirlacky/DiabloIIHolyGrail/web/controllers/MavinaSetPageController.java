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
@RequestMapping("/mavinasbattlehymn")
public class MavinaSetPageController {

    Logger logger = Logger.getLogger(MavinaSetPageController.class.getName());

    @GetMapping
    public String prepareMavinaSetPage(ModelMap model) {
        List<Item> mavinaSetItemList = getItems("mavinasbattlehymn");
        model.put("mavinasbattlehymn", mavinaSetItemList);
        logger.info("Created Mavinas Battle Hymn Set Page");
        return "items-mavinaset-page";
    }
}
