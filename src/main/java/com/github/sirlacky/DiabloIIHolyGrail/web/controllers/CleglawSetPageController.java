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
@RequestMapping("/cleglawsbrace")
public class CleglawSetPageController {

    Logger logger = Logger.getLogger(CleglawSetPageController.class.getName());

    @GetMapping
    public String prepareCleglawSetPage(ModelMap model) {
        List<Item> cleglawSetItemsList = getItems("cleglawsbrace");
        model.put("cleglawsbrace", cleglawSetItemsList);
        logger.info("Created Cleglaws Brace Set Page");
        return "items-cleglawset-page";
    }

}
