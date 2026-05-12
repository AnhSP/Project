package com.anhsp.hosinghong.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DomainController {
    @GetMapping("/domain")
    public String getHomePage(){
        return "client/domain/show";
    }
}
