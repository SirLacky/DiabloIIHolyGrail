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
@RequestMapping("/axes")
public class AxesPageController {

    Logger logger = Logger.getLogger(AxesPageController.class.getName());

    @GetMapping
    public String prepareAxesPage(ModelMap model) {
        List<Item> axesList = getItems("axes");
        model.put("axes", axesList);
        logger.info("Created axes page");
        return "items-axes-page";
    }

}
