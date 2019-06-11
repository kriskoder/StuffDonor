package pl.coderslab.foundation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("admin/foundation/")
public class FoundationController {

    private FoundationService foundationService;

    public FoundationController(FoundationService foundationService) {
        this.foundationService = foundationService;
    }

    @RequestMapping("read")
    public String foundationRead(Model model) {
        model.addAttribute("foundationList", foundationService.findAllFoundations());
        return "admin/foundation/foundation";
    }

    @GetMapping("add")
    public String foundationAdd(@Valid Model model) {
        model.addAttribute("foundationAdd", new Foundation());
        return "admin/foundation/foundationAdd";
    }

    @PostMapping("add")
    public String foundationAdd(@Valid @ModelAttribute Foundation foundation, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "admin/foundation/foundationAdd";
        }
        foundationService.saveFoundation(foundation);
        return "redirect:/admin/foundation/read";
    }

    @RequestMapping("delete/{id}")
    public String delete(@PathVariable Long id) {
        foundationService.deleteById(id);
        return "redirect:/admin/foundation/read";
    }
}
