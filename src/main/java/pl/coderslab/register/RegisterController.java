package pl.coderslab.register;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.user.User;
import pl.coderslab.user.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/register")
public class RegisterController {

    private UserService userService;

    public RegisterController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("")
    public String register(@Valid Model model) {
        model.addAttribute("user", new User());
        return "register/register";
    }

    @PostMapping("")
    public String register(@Valid @ModelAttribute User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "register/register";
        }
        userService.create(user);
        return "login/login";
    }
}
