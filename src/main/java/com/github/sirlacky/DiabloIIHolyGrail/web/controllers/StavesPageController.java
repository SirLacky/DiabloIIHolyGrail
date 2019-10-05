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
@RequestMapping("/staves")
public class StavesPageController {

    Logger logger = Logger.getLogger(StavesPageController.class.getName());

    @GetMapping
    public String prepareStavesPage(ModelMap model) {
        List<Item> stavesList = getItems("staves");
        model.put("staves", stavesList);
        logger.info("Created staves page");
        return "items-staves-page";
    }

}
