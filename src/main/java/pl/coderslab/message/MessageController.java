package pl.coderslab.message;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/message")
public class MessageController {

    MessageService messageService;

    public MessageController(MessageService messageService) {
        this.messageService = messageService;
    }

    @PostMapping("/create")
    public String create(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("message") String message) {
        messageService.save(name, email, message);
        return "redirect:../";
    }
}
