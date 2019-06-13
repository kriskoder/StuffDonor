package pl.coderslab.message;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        return "redirect:/";
    }

    @RequestMapping("/admin/read")
    public String readMessages(Model model){
        model.addAttribute("messageList", messageService.readAll());
    return "admin/message/messageRead";
    }

    @RequestMapping("admin/update/{id}")
    public String updateMessage(@PathVariable Long id){
       messageService.updateMessage(id);
        return "redirect:/message/admin/read";
    }

    @RequestMapping("/admin/delete/{id}")
    public String deleteMessage(@PathVariable Long id){
        messageService.delete(id);
        return "redirect:/message/admin/read";
    }
}
