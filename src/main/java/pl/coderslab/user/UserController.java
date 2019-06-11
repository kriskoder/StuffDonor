package pl.coderslab.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("admin/user")
public class UserController {

    UserServiceImpl userService;

    public UserController(UserServiceImpl userService) {
        this.userService = userService;
    }

    @RequestMapping("read")
    public String readUsers(Model model){
        model.addAttribute("userList", userService.findAllUsers());
        return "/admin/user/userList";
    }

    @GetMapping("add")
    public String foundationAdd(@Valid Model model) {
        model.addAttribute("userAdd", new User());
        return "admin/user/userAdd";
    }

    @PostMapping("add")
    public String foundationAdd(@ModelAttribute @Validated User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "admin/user/UserAdd";
        }
        userService.saveUser(user);
        return "redirect:/admin/user/read";
    }

    @GetMapping("update/{id}")
    public  String update(@PathVariable Long id, Model model){
        model.addAttribute("userAdd", userService.findUserbyId(id));
        return "admin/user/userAdd";
    }

    @PostMapping("update/{id}")
    public String update(@ModelAttribute @Validated User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "admin/user/userAdd";
        }
        userService.saveUser(user);
        return "redirect:/admin/user/read";
    }

    @RequestMapping("delete/{id}")
    public String deleteUser(@PathVariable Long id){
        userService.deleteUser(id);
        return "redirect:/admin/user/read";
    }


}
