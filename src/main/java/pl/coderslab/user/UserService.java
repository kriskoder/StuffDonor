package pl.coderslab.user;

import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void create(User user){
        userRepository.save(user);
    }

    public User readUserById(Long id){
        return  userRepository.findById(id).orElse(null);
    }

    public void update(User user){
        userRepository.save(user);
    }

    public void deleteUserById(Long id){
        userRepository.deleteById(id);
    }
}
