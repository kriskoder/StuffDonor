package pl.coderslab.login;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.user.SpringDataUserDetailsService;
import pl.coderslab.user.UserService;

@Controller
@RequestMapping("")
public class LoginController {

    private final SpringDataUserDetailsService springDataUserDetailsService;

    public LoginController(SpringDataUserDetailsService springDataUserDetailsService) {
        this.springDataUserDetailsService = springDataUserDetailsService;
    }

    @GetMapping("/login")
    public String login() {
        return "login/login";
    }

    @RequestMapping("/test")
    public String test(@RequestParam("username") String username, @RequestParam("password") String password) {
        UserDetails usero = springDataUserDetailsService.loadUserByUsername(username);
        if (BCrypt.checkpw(password, usero.getPassword())) {
            usero.getAuthorities();
            return "form";
        }
        else {
            return "redirect:../login";
        }
    }
}
