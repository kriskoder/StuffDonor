package pl.coderslab.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("")
public class HomeController {

    @RequestMapping("")
    public String home() {
        return "home/index";
    }

    @RequestMapping("/user")
    @ResponseBody
    public String user() {
        return "user";
    }

    @RequestMapping("/admin")
    @ResponseBody
    public String admin() {
        return "admin";
    }
}
