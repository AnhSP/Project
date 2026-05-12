package com.anhsp.hosinghong.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HostingController {
    @GetMapping("/hosting")
    public String hostingPage() {
        return "client/hosting/show";
    }
}
