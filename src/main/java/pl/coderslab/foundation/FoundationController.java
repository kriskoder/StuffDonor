package pl.coderslab.foundation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping("delete/{id}")
    public String delete(@PathVariable Long id){
        foundationService.deleteById(id);
        return "redirect:/admin/foundation/read";
    }
}
