package com.dnstth.vtmg.controller;

import com.dnstth.vtmg.graph.factory.implementation.PersonAndEventGraphFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Denes_Toth
 */

@Controller
public class MainController {

    @Autowired
    private PersonAndEventGraphFactory personAndEventGraphFactory;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getIndex(Model model) {
        String image = some();
        model.addAttribute("image", image);
        return "index";
    }

    private String some() {
        return personAndEventGraphFactory.createFullGraph();
    }

}
