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
@RequestMapping("/civerbsvestments")
public class CiverbSetPageController {

    Logger logger = Logger.getLogger(CiverbSetPageController.class.getName());

    @GetMapping
    public String prepareCiverbSetPage(ModelMap model) {
        List<Item> civerbSetItemList = getItems("civerbsvestments");
        model.put("civerbsvestments", civerbSetItemList);
        logger.info("Created Civerbs Vestments Set Page");
        return "items-civerbset-page";
    }
}
