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
@RequestMapping("/sandersfolly")
public class SanderSetPageController {

    Logger logger = Logger.getLogger(SanderSetPageController.class.getName());

    @GetMapping
    public String prepareSanderSetPage(ModelMap model) {
        List<Item> sanderSetItemList = getItems("sandersfolly");
        model.put("sandersfolly", sanderSetItemList);
        logger.info("Created Sanders Folly Set Page");
        return "items-sanderset-page";
    }

}
