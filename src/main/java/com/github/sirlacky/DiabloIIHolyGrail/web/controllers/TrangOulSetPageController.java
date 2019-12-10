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
@RequestMapping("/trangoulsavatar")
public class TrangOulSetPageController {

    Logger logger = Logger.getLogger(TrangOulSetPageController.class.getName());

    @GetMapping
    public String prepareTrangOulSetPage(ModelMap model) {
        List<Item> trangOulsSetItemList = getItems("trangoulsavatar");
        model.put("trangoulsavatar", trangOulsSetItemList);
        logger.info("Created Trang-Ouls Avatar Set Page");
        return "items-trangset-page";
    }
}
