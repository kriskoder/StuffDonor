package pl.coderslab.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.form.FormService;
import pl.coderslab.foundation.Foundation;
import pl.coderslab.foundation.FoundationService;

import java.util.List;

@Controller
@RequestMapping("")
public class HomeController {

    private FormService formService;
    private FoundationService foundationService;

    public HomeController(FormService formService, FoundationService foundationService) {
        this.formService = formService;
        this.foundationService = foundationService;
    }

    @RequestMapping("")
    public String home() {
        return "user/home/index";
    }

    @ModelAttribute("numberOfBags")
    public Long getNumberOfBags() {
        return formService.numberOfBags();
    }

    @ModelAttribute("numberOfFoundations")
    public Long getNumberOfFoundation() {
        return foundationService.numberOfFoundation();
    }

    @ModelAttribute("numberOfDonations")
    public Long getNumberOfDonations() {
        return formService.numberOfDonations();
    }

    @ModelAttribute("foundations")
    public List<Foundation> getAllFoundations(){
        return foundationService.findAllFoundations();
    }
}
