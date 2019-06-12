package pl.coderslab.message;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageService {
    private MessageRepository messageRepository;

    MessageService(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    public void save(String name, String email, String message) {
        Message message1 = new Message();
        message1.setName(name);
        message1.setEmail(email);
        message1.setMessage(message);
        messageRepository.save(message1);
    }

    public List<Message> readAll() {
        return messageRepository.findAll();
    }
}
