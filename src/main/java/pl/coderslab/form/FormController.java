package pl.coderslab.form;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/form")
public class FormController {

    @Autowired
    FormRepository formRepository;

    @GetMapping("/user")
    public String user(Model model) {
        model.addAttribute("form", new Form());
        return "form/form";
    }

    @PostMapping("/user")
    public String user(@ModelAttribute Form form) {
        formRepository.save(form);
        return "redirect:/";
    }
}
