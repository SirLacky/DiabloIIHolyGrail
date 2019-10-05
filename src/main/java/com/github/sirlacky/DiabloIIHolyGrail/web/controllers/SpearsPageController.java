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
@RequestMapping("/spears")
public class SpearsPageController {

    Logger logger = Logger.getLogger(SpearsPageController.class.getName());

    @GetMapping
    public String prepareSpearsPage(ModelMap model){
        List<Item>spearsList = getItems("spears");
        model.put("spears",spearsList);
        logger.info("Created spears list");
        return "items-spears-page";
    }

}
