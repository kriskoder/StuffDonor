package pl.coderslab.register;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.user.User;
import pl.coderslab.user.UserServiceImpl;

import javax.validation.Valid;

@Controller
@RequestMapping("/register")
public class RegisterController {

    private final UserServiceImpl userServiceImpl;

    public RegisterController(UserServiceImpl userServiceImpl) {
        this.userServiceImpl = userServiceImpl;
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
        userServiceImpl.saveUser(user);
        return "redirect:/login";
    }
}
