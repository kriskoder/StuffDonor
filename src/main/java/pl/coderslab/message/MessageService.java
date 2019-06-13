package pl.coderslab.message;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
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
        message1.setCreated(LocalDate.now());
        messageRepository.save(message1);
    }

    public List<Message> readAll() {
        return messageRepository.findAll();
    }
    public void delete(Long id){
        messageRepository.deleteById(id);
    }
    public Message findById(Long id){
        return messageRepository.findById(id).orElse(null);
    }

    public void updateMessage(Long id){
        Message message = messageRepository.getOne(id);
        message.setAnswered(!message.isAnswered());
        messageRepository.save(message);
    }
}
