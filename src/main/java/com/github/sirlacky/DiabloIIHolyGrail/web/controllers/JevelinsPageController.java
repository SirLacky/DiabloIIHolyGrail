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
@RequestMapping("/jevelins")
public class JevelinsPageController {

    Logger logger = Logger.getLogger(JevelinsPageController.class.getName());

    @GetMapping
    public String prepareJevelinsPage(ModelMap model){
        List<Item> jevelinsList = getItems("jevelins");
        model.put("jevelins",jevelinsList);
        logger.info("Created jevelins page");
        return "items-jevelins-page";
    }
}
