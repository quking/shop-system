package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by root on 17-5-16.
 */
@Controller
@RequestMapping("/goodspage")
public class pagecontrol {
    @RequestMapping("/{name}")
    public String formation(@PathVariable String name) {
        return "/goodspage/"+name;
    }
}
