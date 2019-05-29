package pl.coderslab.form;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.foundation.FoundationService;
import pl.coderslab.stuff.StuffService;
import pl.coderslab.user.CurrentUser;
import pl.coderslab.user.UserServiceImpl;

@Controller
@RequestMapping("/form")
public class FormController {

    private FormService formService;
    private FoundationService foundationService;
    private UserServiceImpl userServiceImpl;
    private StuffService stuffService;

    public FormController(FormService formService, FoundationService foundationService, UserServiceImpl userServiceImpl, StuffService stuffService) {
        this.formService = formService;
        this.foundationService = foundationService;
        this.userServiceImpl = userServiceImpl;
        this.stuffService = stuffService;
    }

    @GetMapping("")
    public String user(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        model.addAttribute("stuffList", stuffService.getAllStuffTypes());
        model.addAttribute("username", currentUser.getUsername());
        model.addAttribute("form", new Form());
        model.addAttribute("foundations", foundationService.findAllFoundations());
        return "form/form";
    }

    @PostMapping("")
    public String user(@ModelAttribute Form form, @RequestParam("foundationId") Long id, @AuthenticationPrincipal CurrentUser currentUser) {
        form.setUser(userServiceImpl.findUserbyId(currentUser.getUser().getId()));
        form.setFoundation(foundationService.findById(id));
        formService.save(form);
        return "form/form-confirmation";
    }
}
