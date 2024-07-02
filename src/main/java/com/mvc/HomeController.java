package com.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/api")
public class HomeController {

    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String home(Model model){
        model.addAttribute("name","Krishna");
        model.addAttribute("phoneno",963284355);
        List<String> friends = new ArrayList<String>();
        friends.add("Amar");
        friends.add("Bhargavi");
        friends.add("Ram");
        model.addAttribute("frnds",friends);
        System.out.println("This is home");
        return  "index";
    }

    @RequestMapping(value = "/about",method = RequestMethod.GET)
    public String about(){
        System.out.println("This is about page");
        return  "about";
    }
}
