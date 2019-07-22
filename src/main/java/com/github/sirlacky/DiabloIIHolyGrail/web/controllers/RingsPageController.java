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
@RequestMapping("/rings")
public class RingsPageController {

    Logger logger = Logger.getLogger(RingsPageController.class.getName());

    @GetMapping
    public String prepareRingsPage(ModelMap model) {
        List<Item> ringsList = getItems("rings");
        model.put("rings", ringsList);
        logger.info("Created rings page");
        return "items-rings-page";
    }

}
