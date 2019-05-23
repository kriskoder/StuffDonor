package pl.coderslab.form;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.user.CurrentUser;
import pl.coderslab.user.User;

@Controller
@RequestMapping("/form")
public class FormController {

    @RequestMapping("/user")
    public String homneUser(@AuthenticationPrincipal CurrentUser currentUser, @ModelAttribute Model model){
        User user = currentUser.getUser();
        model.addAttribute("username", user.getUsername());
        return "form/form";
    }
}
