package pl.coderslab.message;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageService {
    private MessageRepository messageRepository;

    MessageService(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    private void save(Message message) {
        messageRepository.save(message);
    }

    private List<Message> readAll() {
        return messageRepository.findAll();
    }
}
