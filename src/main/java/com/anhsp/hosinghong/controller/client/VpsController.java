package com.anhsp.hosinghong.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("webVpsController")
public class VpsController {
    @GetMapping("/vps")
    public String vpsPage() {
        return "client/vps/show";
    }
}
