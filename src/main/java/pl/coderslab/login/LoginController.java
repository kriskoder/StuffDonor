package pl.coderslab.login;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.user.CurrentUser;
import pl.coderslab.user.SpringDataUserDetailsService;
import pl.coderslab.user.User;

@Controller
@RequestMapping("")
public class LoginController {

    @GetMapping("/login")
    public String login() {
        return "login/login";
    }
}

