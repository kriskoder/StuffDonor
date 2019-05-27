package pl.coderslab.form;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.foundation.FoundationService;
import pl.coderslab.user.CurrentUser;
import pl.coderslab.user.UserServiceImpl;

@Controller
@RequestMapping("/form")
public class FormController {

    private FormService formService;
    private FoundationService foundationService;
    private UserServiceImpl userServiceImpl;

    public FormController(FormService formService, FoundationService foundationService, UserServiceImpl userServiceImpl) {
        this.formService = formService;
        this.foundationService = foundationService;
        this.userServiceImpl = userServiceImpl;
    }

    @GetMapping("/user")
    public String user(Model model) {
        model.addAttribute("form", new Form());
        model.addAttribute("foundations", foundationService.findAllFoundations());
        return "form/form";
    }

    @PostMapping("/user")
    public String user(@ModelAttribute Form form, @RequestParam("foundationId") Long id, @AuthenticationPrincipal CurrentUser currentUser) {
        form.setUser(userServiceImpl.findUserbyId(currentUser.getUser().getId()));
        form.setFoundation(foundationService.findById(id));
        formService.save(form);
        return "form/form-confirmation";
    }
}
