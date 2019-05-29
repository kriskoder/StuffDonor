package pl.coderslab.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.form.FormService;

@Controller
@RequestMapping("")
public class HomeController {
    FormService formService;

    public HomeController(FormService formService) {
        this.formService = formService;
    }

    @RequestMapping("")
    public String home() {
        return "home/index";
    }

    @ModelAttribute("numberOfBags")
    public Long getNumberOfBags() {
        return formService.numberOfBags();
    }
}
